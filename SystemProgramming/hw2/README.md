# 系統程式 HW2
410410060 資工二 林柔均

## 執行程式

`make all` 產生執行檔後執行 `./hole` 產生 `myHole` 檔案

- 複製檔案比較
  更改 hole.c 裡生成 hole 的大小並執行下列兩個指令

  `time ./mycp2 myHole myHole1`

  `time ./mmap_cp2 myHole myHole2 `  

  測試一 

![image-20230213182134445](/home/rogewood/.config/Typora/typora-user-images/image-20230213182134445.png)



 測試二

![Screenshot_20230213_175448](/home/rogewood/Desktop/homework/SystemProgramming/hw2/Screenshot_20230213_175448.png)



- 檢查檔案

  執行 `ls myHole* -lhs` 檢查是否有跳過 hole

  測試一

  ![image-20230213182216142](/home/rogewood/.config/Typora/typora-user-images/image-20230213182216142.png)

  測試二

  ![Screenshot_20230213_181817](/home/rogewood/Desktop/homework/SystemProgramming/hw2/Screenshot_20230213_181817.png)



## 實驗結果

**測試一**

|          | user  | system | total |
| :------: | :---: | :----: | :---: |
|  mycp2   | 0.002 | 0.000  | 0.002 |
| mmap_cp2 | 0.001 | 0.000  | 0.002 |

**測試二**

|          | user  | system | total |
| :------: | :---: | :----: | :---: |
|  mycp2   | 0.003 | 0.000  | 0.003 |
| mmap_cp2 | 0.001 | 0.000  | 0.002 |

根據測試一、二 發現差距不大，但 mmap_cp2 比 mycp2 較快一點