###### tags: `homework`
# SP HW1
410410060 林柔均
## 1. 設定中斷點，將中斷點設定在 main 函數
1. `gdb ./rdtse` 進入 gdb
![](https://i.imgur.com/Li5ryek.png)

2. `b main`(breakpoint main) 設定中斷點在 main 函式
3. `r` (run) 執行
![](https://i.imgur.com/ui4pciC.png)
## 2. 單步執行，遇到函數不會進入
1. `b 36` 設定中斷點在第36行(第一個函式)
2. `c`(continue) 持續執行直到遇到中斷點
3. `n`(next) 單步執行，遇到函式不進入
![](https://i.imgur.com/qmJTYsv.png)
## 3. 單步執行，遇到函數會進入
1. `b 38` 設定中斷點在第38行(第一個函式)
2. `c`(continue) 持續執行直到遇到中斷點
3. `s`(step) 單步執行，遇到函式進入函式
![](https://i.imgur.com/LzRuX0u.png)
## 4. 列印變數的值
- `p tmp`(print) 印出變數 tmp 的值
![](https://i.imgur.com/ceLGDpx.png)
## 5. 使用 bt、up、down，印出 caller 和 callee 各自的變數
- `p lo`、`p hi`印出變數的值
1. `bt`(backtrace) 進入函式的堆疊追蹤
2. `down` 往下層(函式裡面)
3. `up` 往上層(函式外面)
4. 印出變數的值
![](https://i.imgur.com/r29UWyY.png)
## 6. 使用 watch 查看變數被修改的情況
- `watch tmp` 監控變數 tmp 的更動
![](https://i.imgur.com/EibCb6B.png)
## 7. 修改程式碼，故意存取錯誤的記憶體
- `vim rdtsc.c` 製造錯誤的存取記憶體
![](https://i.imgur.com/meuhn1c.png)
重新編譯執行 gdb 過後，會發現 ptr 為初始化，並出現 `Segmentation fault`
![](https://i.imgur.com/7x3F0lS.png)
