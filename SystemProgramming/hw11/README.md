# 系統程式 HW11

410410060 資⼯⼆ 林柔均

## 1.使用『kill -l』指令，印出所有的signal的名字，針對你有興趣的五個signal，解釋該signal的意義

![image-20230520030221793](/home/rogewood/.config/Typora/typora-user-images/image-20230520030221793.png)

- `Int(SIGINT)`:  使用者中斷 process(ctrl + c)
- `KILL(SIGKILL)`: 終止 process 
- `ILL(SIGILL)`:  偵測到 process 執行格式錯誤穫非法的指令
- `STP(SISTP)`:  使用者暫停 process (ctrl +z)
- `Int(SIGINT)`: 使用者退出 process 

## 2.請使用範例程式加以修改，攔截SIGINT，並印出『按下ctr-c，但殺不死我』

![image-20230520033113405](/home/rogewood/.config/Typora/typora-user-images/image-20230520033113405.png)

![image-20230520033128551](/home/rogewood/.config/Typora/typora-user-images/image-20230520033128551.png)

![image-20230520033031672](/home/rogewood/.config/Typora/typora-user-images/image-20230520033031672.png)

## 3.承上題，如果快速的按下十次ctr+c，會出現多少次『按下ctr-c，但殺不死我』

![image-20230520033158959](/home/rogewood/.config/Typora/typora-user-images/image-20230520033158959.png)

## 4.承上題，在SIGINT的處理函數中，加入sleep(10)，此時如果快速按下十次ctr+c，會出現幾次『按下ctr-c，但殺不死我』？

![image-20230520033230567](/home/rogewood/.config/Typora/typora-user-images/image-20230520033230567.png)

![image-20230520033347513](/home/rogewood/.config/Typora/typora-user-images/image-20230520033347513.png)

**ANS: 1次**

## 5.承上題，此時如果使用fork+execv讓child執行『ls -alh / -R』。當『ls -alh / -R』時，按下ctr+c時，會出現『按下ctr-c，但殺不死我』嗎？

![image-20230520033822125](/home/rogewood/.config/Typora/typora-user-images/image-20230520033822125.png)

![image-20230520033756951](/home/rogewood/.config/Typora/typora-user-images/image-20230520033756951.png)

**ANS: 會出現 『按下ctr-c，但殺不死我』**

## 6.請使用範例程式加以修改，忽略SIGINT（SIG_IGN）

![image-20230520032638307](/home/rogewood/.config/Typora/typora-user-images/image-20230520032638307.png)

![image-20230520032554514](/home/rogewood/.config/Typora/typora-user-images/image-20230520032554514.png)

## 7.承上題，此時如果使用fork+execv讓child執行『ls』。當『ls』時，按下ctr+c時，可以終止『ls』的執行嗎？

![image-20230520034151395](/home/rogewood/.config/Typora/typora-user-images/image-20230520034151395.png)

**ANS: 不行**

## 8.對signal的想法

signal 和一般的程序不同，寫成是的感覺不像程序本身，而是被覆加上去，已OS的角度去看 process 的狀況。而非同步的性質當在處理一個信號時，會收到另一個信號，不像以前的順序下來的寫法。

註: 有參考學長姐的作業