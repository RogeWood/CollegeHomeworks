# SP期末考
410410060 資工二 林柔均
## 1.（60pt）（基本功能）指定一個執行檔案，並且可以給執行檔案參數。例如：spNohup ls -R。在這樣的情況下必須在「當前目錄」建立spNohup.log，並且將「ls -R」的輸出都導引到spNohup.log

**(完成)**

用 sleep(10) 測試後確定關閉 terminal依然能繼續執行

![image-20230610152938870](/home/rogewood/.config/Typora/typora-user-images/image-20230610152938870.png)

![image-20230610152913388](/home/rogewood/.config/Typora/typora-user-images/image-20230610152913388.png)

## 2. （20pt）（可以指定日誌檔名）指定日誌文件的檔案名稱（透過-log filename），再指定一個執行檔案。
例如：spNohup -log lsoutput.log ls -R。在這樣的情況下必須在「當前目錄」建立lsoutput.log，並且將「ls -R」的輸出都導引到lsoutput.log

**(完成)**

![image-20230610123225555](/home/rogewood/.config/Typora/typora-user-images/image-20230610123225555.png)

![image-20230610152830420](/home/rogewood/.config/Typora/typora-user-images/image-20230610152830420.png)

## 分數自評

80分，因為確定完成1, 2題目
