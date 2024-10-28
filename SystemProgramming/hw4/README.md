# 系統程式 HW4
410410060 資⼯⼆ 林柔均

## 1. 請問 buffersize 分別是：0、-1、4KB、16KB、64KB、1MB、8MB的執行速度分別為何？

### 參數測試

#### Buffer_size: 0

![0](/home/rogewood/Desktop/homework/SystemProgramming/hw4/0.png)

#### Buffer_size: -1

![-1](/home/rogewood/Desktop/homework/SystemProgramming/hw4/-1.png)

#### Buffer_size: 4KB = 4096 B

![4096](/home/rogewood/Desktop/homework/SystemProgramming/hw4/4096.png)

#### Buffer_size: 16KB = 16484 B

![16484](/home/rogewood/Desktop/homework/SystemProgramming/hw4/16484.png)

#### Buffer_size: 64KB = 65536 B

![65536](/home/rogewood/Desktop/homework/SystemProgramming/hw4/65536.png)

#### Buffer_size: 1MB = 1048576 B

![1048576](/home/rogewood/Desktop/homework/SystemProgramming/hw4/1048576.png)

#### Buffer_size: 8MB = 8388608 B

![8388608](/home/rogewood/Desktop/homework/SystemProgramming/hw4/8388608.png)



### 結論

Buffer_size 越大，程式速度越快。但當數值大到一定程度時加速效果變小，差異不大

## 2.使用 ltrace 觀察應用程式呼叫

我的 ArchLinux 裡沒有 ltrace 指令，要自行下載: `yay -S ltrace `

#### Buffer_size: 0 (unbuffered)

![image-20230225224328528](/home/rogewood/.config/Typora/typora-user-images/image-20230225224328528.png)

#### Buffer_size: -1 (linebuffered)

![image-20230225224358040](/home/rogewood/.config/Typora/typora-user-images/image-20230225224358040.png)

#### Buffer_size: 4096

![image-20230225224726027](/home/rogewood/.config/Typora/typora-user-images/image-20230225224726027.png)



## 3. 使用 strace 觀察你的應用程式呼叫「作業系統的情況」

strace 也要自行下載: `yay -S strace `

#### Buffer_size: 0 (unbuffered)

![image-20230225224908540](/home/rogewood/.config/Typora/typora-user-images/image-20230225224908540.png)

#### Buffer_size: -1 (linebuffered)

![image-20230225224927945](/home/rogewood/.config/Typora/typora-user-images/image-20230225224927945.png)

#### Buffer_size: 4096

### ![image-20230225224945617](/home/rogewood/.config/Typora/typora-user-images/image-20230225224945617.png)ltrace & strace

ltrace & strace 的說明(Google 找到的):

ltrace的功能是能够跟踪进程的库函数调用，它会显现出哪个库函数被调用，而strace则是跟踪程序的每个系统调用。ltrace与strace使用的技术大体相同，但ltrace在对支持fork和clone方面，不如strace。strace在收到frok和clone等系统调用后，做了相应的处理，而ltrace没有。
————————————————
版权声明：本文为CSDN博主「运维猫（运维开发）」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/yunweimao/article/details/106688073

## 4. 有辦法根據 2 和 3 分析一下「呼叫作業系統核心函數（ system call ）」和 「函數庫呼叫」的「成本」差異嗎？



整理數據:

- ltrace: 三個的 fgetc 的呼叫次數都是 572463, fputs 都是 93804 次

  | buffer size  |  0   |  -1  | 4096 |
  | :----------: | :--: | :--: | :--: |
  | time(second) |  35  |  23  |  22  |

- strace:

  |        buffer size        |   0    |  -1   | 4096 |
  | :-----------------------: | :----: | :---: | :--: |
  | call times(read function) | 572464 | 10692 | 142  |
  |       time(second)        |  1.71  | 0.05  | 0.0  |

- 結論

  system call 的 時間和呼叫次數 都會隨 buffer size 而改變， fucnction call 的呼叫次數並不影響

  而呼叫和時間的成本:

  | time / call times |           0            |     -1     |   4096    |
  | :---------------: | :--------------------: | :--------: | :-------: |
  |  fucnction call   |  35/572464 = 0.00006   | 23/572464  | 22/572464 |
  |    system call    | 1.71/572464 = 0.000002 | 0.05/10692 |  0.0/142  |

  可見 system call 的成本較低

註: 有參考學長姐的作業