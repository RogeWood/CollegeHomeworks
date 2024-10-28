# 系統程式 HW7

410410060 資⼯⼆ 林柔均

## 1.先使用inotifywait熟悉inotify會產生哪些訊息

甲、先安裝工具『sudo apt install-y inotify-tools』（-y的意思是直接安裝了，不要問）![image-20230414225256194](/home/rogewood/.config/Typora/typora-user-images/image-20230414225256194.png)

### 乙、在自己的家目錄建立一個目錄『watched』mkdir ~/watched

![image-20230414231301310](/home/rogewood/.config/Typora/typora-user-images/image-20230414231301310.png)

### 丙、inotify可以監看目錄也可以監看檔案，這次我們監看目錄，指令為『inotifywait -m -r watched/』，其中『m』是monitor的縮寫，表示持續監看，-r代表遞回。

![image-20230414231348917](/home/rogewood/.config/Typora/typora-user-images/image-20230414231348917.png)

### 丁、開啟另一個terminal，在watched目錄裡面建立檔案，例如使用『touch a』，建立目錄，例如使用『mkdir b-dir』，進入b-dir『cd b-dir』在b-dir內建立一個檔案『touch file_in_bdir』，看看inotifywait有哪些訊息

![image-20230414231522210](/home/rogewood/.config/Typora/typora-user-images/image-20230414231522210.png)

![image-20230414231542357](/home/rogewood/.config/Typora/typora-user-images/image-20230414231542357.png)

###  戊、在b目錄底下執行vim，看看會出現什麼樣的訊息

![image-20230414230058313](/home/rogewood/.config/Typora/typora-user-images/image-20230414230058313.png)

### 己、cat file_in_bdir會出現什麼訊息

![image-20230414230131702](/home/rogewood/.config/Typora/typora-user-images/image-20230414230131702.png)

### 庚、echo hello >> file_in_bdir會出現什麼訊息

![image-20230414230206475](/home/rogewood/.config/Typora/typora-user-images/image-20230414230206475.png)

### 辛、『sudo inotifywait -m -r /』會出現什麼訊息

![image-20230414230439710](/home/rogewood/.config/Typora/typora-user-images/image-20230414230439710.png)



## 2.撰寫程式，監看檔案是否被修改



註: 有參考學長姐的作業