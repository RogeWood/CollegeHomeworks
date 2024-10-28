# 系統程式 HW12

410410060 資⼯⼆ 林柔均

## 原始執行

![image-20230527234019000](/home/rogewood/.config/Typora/typora-user-images/image-20230527234019000.png)

`stderr.log`

![image-20230527234100812](/home/rogewood/.config/Typora/typora-user-images/image-20230527234100812.png)

`stdout.log`

![image-20230527234129274](/home/rogewood/.config/Typora/typora-user-images/image-20230527234129274.png)

## 註解掉❶

對❺有影響，輸入變回 stdin，要自己輸入10個字元才會離開❺在的for迴圈

![image-20230527234657392](/home/rogewood/.config/Typora/typora-user-images/image-20230527234657392.png)

輸出的 `stdout.log` `stderr.log`相同

## 註解掉❷

不會產稱 `stdout.log` 改回 stdout，對❹造成影響

![image-20230528001727527](/home/rogewood/.config/Typora/typora-user-images/image-20230528001727527.png)

印出ls的訊息

![image-20230528001833863](/home/rogewood/.config/Typora/typora-user-images/image-20230528001833863.png)

## 註解掉❸

不會產稱 `stderr.log` 改回輸出到 stderr，列印在終端機上

`fprintf(stderr, "*"); `*會列印出來

![image-20230528002725704](/home/rogewood/.config/Typora/typora-user-images/image-20230528002725704.png)

對於❼有影響

![image-20230528002807908](/home/rogewood/.config/Typora/typora-user-images/image-20230528002807908.png)

## 註解掉❻

程式不會忽略 SIGHUP後，關閉終端機程式就會停止，`stdout.log` `stderr.log`沒有內容



![image-20230528004531572](/home/rogewood/.config/Typora/typora-user-images/image-20230528004531572.png)
