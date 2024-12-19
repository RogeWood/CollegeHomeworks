#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <assert.h>
#include <fcntl.h>
#include <unistd.h>
#define ZYNQ_BASE 0x40000000
#define IM_BASE_OFFSET 0x00000000
#define DM_BASE_OFFSET 0x00002000
#define CPU_RSTN_OFFSET 0x00008004
#define RF_OFFSET 0x00004000
#define RF6_OFFSET 0x00004018
#define IM_TXT_PATH "./im_data/im.txt"
#define NUM_OF_TEST 10000
#define ACC_NUM 2046
#define DNN_PARAM_PATH "./parameter.txt"
#define TEST_ANS_PATH "./test_data/ans.txt"

int im_data[50];

int ans[NUM_OF_TEST];
int DIM[3] = {784, 64, 10};
float v_hidden[3][784];
float w_hidden[2][64][784];
float b_hidden[2][64];

void ans_init()
{
	int idxi;
	FILE *fp = fopen(TEST_ANS_PATH, "r"); // 打開存儲測試案例答案的文件
	assert(fp != NULL);
	for (idxi = 0; idxi < NUM_OF_TEST; idxi++)
	{ // 遍歷Test pattern的答案，並將其讀取到ans陣列中
		fscanf(fp, "%d", &ans[idxi]);
	}
	fclose(fp);
}

// 讀取Mnist PPM格式的手寫辨識圖片
void read_ppm_file(int idxi)
{
	int temp;
	char imgPath[1 << 5];
	char header[4][1 << 4];
	sprintf(imgPath, "./test_data/%05d.ppm", idxi);
	FILE *fp = fopen(imgPath, "r"); // 打開手寫辨識圖片
	assert(fp != NULL);
	fscanf(fp, "%s%s%s%s", header[0], header[1], header[2], header[3]); // 跳過PPM文件的頭部信息
	for (idxi = 0; idxi < DIM[0]; idxi++)								// 讀取圖像像素值，將其轉換為浮點數並存儲在v_hidden數組中
	{
		fscanf(fp, "%d", &temp);
		v_hidden[0][idxi] = (float)(255 - temp) * (1.0 / 255.0); // Normalize 0~1之間
	}
	fclose(fp);
}

// 加載訓練好的參數
void parameter_init()
{
	int idxi, idxj, idxz;
	float utemp;
	FILE *fp = fopen(DNN_PARAM_PATH, "r"); // 打開存儲神經網絡參數的文件
	assert(fp != NULL);

	for (idxz = 1; idxz < 3; idxz++) // 遍歷神經網絡的每一層
	{
		for (idxi = 0; idxi < DIM[idxz]; idxi++) // 遍歷每一層的神經元
		{
			fscanf(fp, "%x", &utemp); // 讀取bias（以十六進制格式）
			b_hidden[idxz - 1][idxi] = *((float *)&utemp);
			for (idxj = 0; idxj < DIM[idxz - 1]; idxj++) // 讀取weight（以十六進制格式）
			{
				fscanf(fp, "%x", &utemp);
				w_hidden[idxz - 1][idxi][idxj] = *((float *)&utemp);
			}
		}
	}
	fclose(fp);
}

int main()
{
	int i, j, k;
	int rf_6_data = 0;
	float temp_f;
	float ncorrect = 0;
	int idxi, idxj, idxz, maxidx;
	float maxval, tempVal;
	volatile int fd = open("/dev/mem", O_RDWR);
	volatile int map_len = 0x00000FFFF;
	volatile unsigned int *io = (volatile unsigned int *)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, ZYNQ_BASE);
	if (io == MAP_FAILED)
	{
		perror("Mapping memory for absolute memory access failed.\n");
		exit(1);
	}
	printf("Zynq_BASE mapping successful :\n0x%x to 0x%x, size = %d\n", ZYNQ_BASE, *io, map_len);

	FILE *fp = fopen(IM_TXT_PATH, "r");
	assert(fp != NULL);
	for (i = 0; i < 50; i++)
	{
		fscanf(fp, "%x", &im_data[i]);
	}
	fclose(fp);

	ans_init();
	parameter_init();

	for (i = 0; i < 50; i++)
	{
		*(io + (IM_BASE_OFFSET / 4) + i) = im_data[i];
	}

	for (k = 0; k < NUM_OF_TEST; k++)
	{
		read_ppm_file(k);
		for (idxz = 1; idxz < 3; idxz++)
		{
			for (idxi = 0; idxi < DIM[idxz]; idxi++)
			{
				tempVal = b_hidden[idxz - 1][idxi];

				// 計算加權總和
				*(io + (DM_BASE_OFFSET / 4)) = DIM[idxz - 1] * 2 * 4;
				for (idxj = 1; idxj <= DIM[idxz - 1] * 2; idxj = idxj + 2)
				{
					*(io + (DM_BASE_OFFSET / 4) + idxj) = *(unsigned int *)&w_hidden[idxz - 1][idxi][(idxj - 1) / 2];				
					*(io + (DM_BASE_OFFSET / 4) + idxj + 1) = *(unsigned int *)&v_hidden[idxz - 1][(idxj - 1) / 2];
				}

				// 開始計算
				rf_6_data = 0;
				*(io + (CPU_RSTN_OFFSET / 4)) = 1;
				// 輪巡
				while (rf_6_data != 1234)
				{
					rf_6_data = *(io + (RF6_OFFSET / 4));
				};
				*(io + (CPU_RSTN_OFFSET / 4)) = 0;

				temp_f = *((float *)&(*(io + (DM_BASE_OFFSET / 4) + DIM[idxz - 1] * 2 + 1)));
				tempVal = tempVal + temp_f;
				// 如果當前層不是輸出層，則使用ReLU（將負數轉為0）
				if (idxz < 2)
					tempVal = tempVal > 0 ? tempVal : 0;

				// 將計算結果存儲在 v_hidden 中，供下一層使用
				v_hidden[idxz][idxi] = tempVal;

			}
		}

		// 在輸出層中找到預測結果（最大值）
		maxidx = 0;
		maxval = v_hidden[2][maxidx];
		for (idxi = 1; idxi < 10; idxi++)
		{
			if (v_hidden[2][idxi] > maxval)
			{
				maxval = v_hidden[2][idxi];
				maxidx = idxi;
			}
		}
		if (maxidx == ans[k])
			ncorrect++;
		printf("%d  predict: %d, ans: %d\n", k, maxidx, ans[k]);
	}
	printf("Accuracy:\t%f  (%.0f / %d)\r\n", ncorrect / NUM_OF_TEST, ncorrect, NUM_OF_TEST);
}
