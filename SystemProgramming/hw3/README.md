# 系統程式 HW2

410410060 資工二 林柔均

## 1.如果同時執行4個lockf（/flock），這些程式可以同時執行，並更新lockf.db（flock.db）嗎？請問總共花地多少時間？

### flock

![4flock](/home/rogewood/Desktop/homework/SystemProgramming/hw3/4flock.png)

**Ans: ** 可以執行，花費 1分40秒

### lockf

執行強制鎖的前製動作:

```shell
$ sudo mount -oremount,mand /
$ chmod g+s lockf.db
$ chmod g-x lockf.db
```



![4lockf](/home/rogewood/Desktop/homework/SystemProgramming/hw3/4lockf.png)

**Ans: ** 可以執行，花費 6分40秒

### 結論

因為 lockf 是強制鎖，花費的時間較 flock 多

## 2.如果多個lockf（/flock）在更新lockf.db（/flock.db）的時候，你使用vim或其他編輯器打開lockf.db（/flock.db），請問此時會發生什麼情況？如果儲存的話，會發生什麼樣的情況？

### flock

執行 `./flock` 後用 vim 開啟 flock.db

 更改檔案內容後除存

![Screenshot_20230219_161202](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_161202.png)

除存會跳出 warnign 但依然可以除存

![Screenshot_20230219_161220](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_161220.png)

手動編輯後，程式不能繼續編輯檔案了

![Screenshot_20230219_161533](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_161533.png)

### lockf

與 flock 相同的步驟，除存時也一樣有警告

![Screenshot_20230219_161918](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_161918.png)

![Screenshot_20230219_162156](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_162156.png)

一樣，程式不能繼續編輯檔案了

### 結論

程式執行時，可手動編輯檔並除存，但會使程式無法繼續執行



## 3.請問你的檔案的實際大小與邏輯大小？你有辦法『大致上』推算出檔案大小。

- 推算檔案大小:

  3600 = 4 bytes

  - 實際大小: $$ 4 + 1000*4 = 4004$$ bytes
  - 邏輯大小: 4 + (3500+4)+(3501+4)+....+(4499+4) = 4003504  bytes

![Screenshot_20230219_164306](/home/rogewood/Desktop/homework/SystemProgramming/hw3/Screenshot_20230219_164306.png)

- 實際大小: 3836 bytes

- 邏輯大小: 40003504 bytes