# 系統程式 HW13

410410060 資⼯⼆ 林柔均

## 1.  請參考pipe4-3的寫法，設計應用程式『fileCount/YYY』讓你的應用程式可以自動執行『ls-R/YYY| wc-l』計算/YYY目錄下大約有多少字元

![image-20230601200258113](/home/rogewood/.config/Typora/typora-user-images/image-20230601200258113.png)

## 2. 請確保你的主程式『fileCount』收到ctr+c以後，可已讓『ls-R/YYY| wc-l』立即中止

![image-20230601200705792](/home/rogewood/.config/Typora/typora-user-images/image-20230601200705792.png)

## 3. 你是否可以在不修改SIGINT的signal handler的情況下完成第二小題呢？

![image-20230601201006885](/home/rogewood/.config/Typora/typora-user-images/image-20230601201006885.png)

![image-20230601201023242](/home/rogewood/.config/Typora/typora-user-images/image-20230601201023242.png)

![image-20230601201053480](/home/rogewood/.config/Typora/typora-user-images/image-20230601201053480.png)

![image-20230601200946253](/home/rogewood/.config/Typora/typora-user-images/image-20230601200946253.png)

## 4. 撰寫報告，說明你完成了哪些部分（例如：1及2）。如果能立即中止所有相關的應用程式（例如你能做到2或者2, 3），請說明方法

**1, 2, 3 完成**

註解掉 setpgid 使 children 和 parent 在同一個 group，按下 ctrl+c 都會倍中止
