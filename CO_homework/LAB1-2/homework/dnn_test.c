#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>
#include <string.h>

#define NUM_OF_TEST 10000
#define DNN_PARAM_PATH "./parameter.txt"
#define TEST_ANS_PATH "./test_data/ans.txt"

int ans[NUM_OF_TEST];
int DIM[3] = {784, 256, 64};
float v_hidden[3][784];
float w_hidden[2][256][784];
float b_hidden[2][256];

void ans_init() {
    int idxi;
    FILE *fp = fopen(TEST_ANS_PATH, "r");                                   // 打開存儲測試案例答案的文件
    assert(fp != NULL);
    for (idxi = 0; idxi < NUM_OF_TEST; idxi++) {                            // 遍歷Test pattern的答案，並將其讀取到ans陣列中
        fscanf(fp, "%d", &ans[idxi]);
    }
    fclose(fp); 
}

// 加載訓練好的參數
void parameter_init(){
    int idxi, idxj, idxz;
    int DIM_idxz, DIM_idxz_sub1, idxz_sub1;
    float utemp; 
    FILE *fp = fopen(DNN_PARAM_PATH, "r");                                  // 打開存儲神經網絡參數的文件
    assert(fp != NULL); 

    for (idxz = 1; idxz < 3; idxz++)                                         // 遍歷神經網絡的每一層
    {
        idxz_sub1 = idxz - 1;
        DIM_idxz = DIM[idxz];
        DIM_idxz_sub1 = DIM[idxz_sub1];
        for (idxi = 0; idxi < DIM_idxz; idxi++)                             // 遍歷每一層的神經元
        {
            fscanf(fp, "%x", (unsigned int *)&utemp);                                        // 讀取bias（以十六進制格式）
            b_hidden[idxz_sub1][idxi] = *((float *)&utemp);
            for (idxj = 0; idxj < DIM_idxz_sub1; idxj++)                     // 讀取weight（以十六進制格式）
            {
                fscanf(fp, "%x", (unsigned int *)&utemp);
                w_hidden[idxz_sub1][idxi][idxj] = *((float *)&utemp);
            }
        }
    }
    fclose(fp); 
}
// 讀取Mnist PPM格式的手寫辨識圖片
void read_ppm_file(int idxi){
    int temp;
    char imgPath[1 << 5];
    char header[4][1 << 4];
    sprintf(imgPath, "./test_data/%05d.ppm", idxi);
    FILE *fp = fopen(imgPath, "r");                                         // 打開手寫辨識圖片
    assert(fp != NULL);
    fscanf(fp, "%s%s%s%s", header[0], header[1], header[2], header[3]);     // 跳過PPM文件的頭部信息
    int DIM_0 = DIM[0];
    for (idxi = 0; idxi < DIM_0; idxi++)                                   // 讀取圖像像素值，將其轉換為浮點數並存儲在v_hidden數組中
    {
        fscanf(fp, "%d", &temp);
        v_hidden[0][idxi] = (float)(255 - temp) * (1.0 / 255.0);            //Normalize 0~1之間
    }
    fclose(fp);
}

//執行DNN運算，並返回預測結果
int dnn_operation()
{
    int idxi, idxj, idxz, maxidx;
    int idxz_sub1, DIM_idxz, DIM_idxz_sub1;
    float maxval, tempVal;

    // DNN 運算
    for (idxz = 1; idxz < 3; idxz++)
    {
        idxz_sub1 = idxz - 1;
        DIM_idxz = DIM[idxz];
        DIM_idxz_sub1 = DIM[idxz_sub1];
        for (idxi = 0; idxi < DIM_idxz; idxi++)
        {
            tempVal = b_hidden[idxz_sub1][idxi];

            // 計算加權總和
            for (idxj = 0; idxj < DIM_idxz_sub1; idxj++)
            {
                tempVal += v_hidden[idxz_sub1][idxj] * w_hidden[idxz_sub1][idxi][idxj];
            }
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
    return maxidx;
}

int main(int argc, char **argv)
{

    float ncorrect = 0;
    int  idxi, maxidx;
    
    ans_init();
    parameter_init();

    // 遍歷所有測試圖片
    for (idxi = 0; idxi < NUM_OF_TEST; idxi++)
    {
        read_ppm_file(idxi);
        maxidx = dnn_operation();

        // 檢查預測結果是否正確，如果正確，則增加ncorrect的值
        if(maxidx == ans[idxi])
            ncorrect++;
        //printf("%d  predict: %d, ans: %d\n", idxi, maxidx, ans[idxi]);
    }

    printf("Accuracy:\t%f  (%.0f / %d)\r\n", ncorrect / NUM_OF_TEST, ncorrect, NUM_OF_TEST);
    return 0;
}
