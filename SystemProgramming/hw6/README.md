# 系統程式 HW6
410410060 資⼯⼆ 林柔均

## 執行 `readelf -d /usr/bin/ls`，`readelf -d ~/busybox/_install/bin/busybox`。請在報告上列出這二個程式所需要的『動態鏈結函數庫』

### `readelf -d /usr/bin/ls`

![](/home/rogewood/Desktop/homework/SystemProgramming/hw6/usrLs.png)

### `readelf -d ~/busybox/_install/bin/bus`

![](/home/rogewood/Desktop/homework/SystemProgramming/hw6/busybox.png)

## 請給一張螢幕快照，顯示『`$ sudo chroot ~/busybox/_install/ ash`』的執行結果

![image-20230313230534131](/home/rogewood/.config/Typora/typora-user-images/image-20230313230534131.png)

## 請參考 https://zh.wikipedia.org/wiki/BusyBox，以50個左右的字說明 busybox 的主要用途 

### 介紹
BusyBox是一個遵循GPL協定、以自由軟體形式發行的應用程式。Busybox在單一的可執行檔中提供了精簡的Unix工具集，可執行於多款POSIX環境的作業系統，例如Linux（包括Android）、Hurd、FreeBSD等等。由於BusyBox執行檔的檔案比較小，使得它非常適合使用於嵌入式系統。作者將BusyBox稱為「嵌入式Linux的瑞士軍刀」

### 功能
BusyBox可以被自訂化以提供一個超過兩百種功能的子集。它可以提供多數詳列在單一UNIX規範裡的功能，以及許多使用者會想在Linux系統上看到的功能。BusyBox使用ash。在 BusyBox的網站上可以找到所有功能的列表