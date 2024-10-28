# 系統程式 HW5
410410060 資⼯⼆ 林柔均

## 編寫程式

加上檔案類型

![image-20230309233939979](/home/rogewood/.config/Typora/typora-user-images/image-20230309233939979.png)

加上 fileNum 變數紀錄檔案的數量

![image-20230309234029711](/home/rogewood/.config/Typora/typora-user-images/image-20230309234029711.png)

##  執行程式

需要將檔案變成 super user, 加入 set user id bit

- `sudo chown root preBirthday`

- `sudo chmod +s preBirthday`

  ![image-20230309233049564](/home/rogewood/.config/Typora/typora-user-images/image-20230309233049564.png)

  第一次執行出現 segmentation fault

  

![faild](/home/rogewood/Desktop/homework/SystemProgramming/hw5/faild.png)



Google 後發現要將 `/proc/sys/fs/suid_dumpable  ` 裡的值改成 2

![image-20230309233413656](/home/rogewood/.config/Typora/typora-user-images/image-20230309233413656.png)

更改後執行就沒問題了

![image-20230309233433600](/home/rogewood/.config/Typora/typora-user-images/image-20230309233433600.png)


### 檔案類型的意義
- `b` : 區塊設備檔，可以隨機在硬碟不同區塊讀寫儲存的資料
- `c` : 字元設備檔，序列埠週邊設備(鍵盤、滑鼠)
- `d` : 目錄檔案
- `f` : pipe 管線檔案(FIFO)，類似於 queue，將資量順序放入取出
- `l` : 連結檔案，可簡化路徑
- `-` : 一般檔案
- `s` : 資料接口檔(sockets)，讓 clien,server 端進行資料的溝通
- `U` : 無法辨別的檔案



### 加註: suid_dumpable 的參數

- 1- A regular user can trigger a coredump with /proc/$PID/stat as root:root simply by doing chmod u-r
- 2- The root-owned coredump will then be written in the CWD, which in the PoC is /etc/logrotate.d
- 3- logrotate will gladly skip parts of the coredump it doesn't understand and will successfully run the parts it does

https://bugs.launchpad.net/ubuntu/+source/apport/+bug/1452239
