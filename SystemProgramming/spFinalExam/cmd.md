加密壓縮

zip -rP [密碼放於此] test.zip 1.txt  

說明：將目錄下1.txt加密壓縮成test.zip

 

解密+解壓縮

unzip -P [密碼放於此] test.zip



### .tar.bz2

- 套件名稱：[bzip2](apt://bzip2)。

- 壓縮：

  > [ jonny@linux ~ ]
  > $ tar jcvf *FileName.tar.bz2 DirName*

- 解壓縮：

  > [ jonny@linux ~ ]
  > $ tar jxvf *FileName.tar.bz2*

 訊號列表[[編輯](https://zh.wikipedia.org/w/index.php?title=Unix信号&action=edit&section=5)]

[單一UNIX規範](https://zh.wikipedia.org/wiki/单一UNIX规范)規定了在`<signal.h>`中定義的訊號有：

備註：打星號的部分表示這是X/Open System Interfaces (XSI)擴充的部分。使用引號的文字是參照自SUS[[1\]](http://www.opengroup.org/onlinepubs/007904975) （[頁面存檔備份](https://web.archive.org/web/20210326044603/http://www.opengroup.org/onlinepubs/007904975)，存於[網際網路檔案館](https://zh.wikipedia.org/wiki/互联网档案馆)）。

- SIGABRT 和 SIGIOT

SIGABRT 和 SIGIOT 訊號能讓程序異常終止（abort）。 該訊號通常是由程序自身呼叫 [C標準函式庫](https://zh.wikipedia.org/wiki/C%2B%2B標準函式庫) 的 `abort()` 函式來觸發， 但它也可以像其它訊號一樣由外部傳送給程序。

- SIGALRM, SIGVTALRM 和 SIGPROF

如果你用 setitimer 這一類的報警設定函式設定了一個時限，到達時限時程序會接收到 SIGALRM, SIGVTALRM 或者 SIGPROF。但是這三個號誌的含義各有不同，SIGALRM 計時的是真即時間，SIGVTALRM計時的是程序使用了多少CPU時間，而 SIGPROF 計時的是程序和代表該程序的核心用了多少時間。

- SIGBUS

匯流排發生錯誤時，程序接收到一個SIGBUS訊號。舉例來說，記憶體訪問對齊或者或不存在對應的實體位址都會產生SIGBUS訊號。

- SIGCHLD

當子程序終止、被中斷或被中斷後恢復時，SIGCHLD訊號被傳送到程序。該訊號的一個常見用法是指示作業系統在子程序終止後清理其使用的資源，而不顯式呼叫等待系統呼叫。

- SIGCONT

SIGCONT訊號指示作業系統繼續(重新啟動)先前由SIGSTOP或SIGTSTP訊號暫停的程序。Unix 殼的作業控制是該訊號的一個重要應用。

- SIGFPE

當程序執行了一個錯誤的算術運算時，例如被零除，訊號被傳送到一個程序。這可能包括整數被零除，以及整數在除結果中溢位（在C中只有INT_MIN/-1、INT64_MIN/-1和%-1會觸發該行為）。注意該訊號與浮點數溢位無關。

- SIGHUP

檢測到控制中斷掛起或者控制程序死亡時，程序會收到 SIGHUP。現在作業系統，該訊號通常意味著使用的 [虛擬終端](https://zh.wikipedia.org/wiki/虚拟终端) 已經被關閉。許多 [守護行程](https://zh.wikipedia.org/wiki/守护进程) 在接收到該訊號時，會多載他們的設定和重新打開紀錄檔檔案（logfiles），而不是去結束程式。[nohup](https://zh.wikipedia.org/wiki/Nohup) 命令用於無視該訊號。

- SIGILL

當程序試圖執行非法、格式錯誤、未知或特權指令時，SIGILL訊號被傳送到該程序。

- SIGINT

當使用者希望中斷程序時，SIGINT訊號由使用者的控制終端傳送到程序。這通常透過按下Ctrl+C來傳送，但是在某些系統中，可以使用「DELETE」鍵或「BREAK」鍵。

- SIGKILL

主條目：[SIGKILL](https://zh.wikipedia.org/wiki/SIGKILL)

傳送SIGKILL訊號到一個程序可以使其立即終止（KILL）。與SIGTERM和SIGINT相不同的是，這個訊號不能被擷取或忽略，接收過程在接收到這個訊號時不能執行任何清理。以下例外情況適用：

- 殭屍程序不能被殺死，因為它們已經死了，正在等待它們的父程序來收穫它們。
- 處於阻塞狀態的程序不會死亡，直到它們再次醒來。
- init 程序是特殊的： init不接收任何它不打算處理的訊號，因此它會忽略SIGKILL。[[1\]](https://zh.wikipedia.org/zh-tw/Unix信号#cite_note-1)這條規則有一個例外，Linux 上的 init 如果被 ptrace 了，那麼它是可以接收 SIGKILL 並被殺死的[[2\]](https://zh.wikipedia.org/zh-tw/Unix信号#cite_note-2)[[3\]](https://zh.wikipedia.org/zh-tw/Unix信号#cite_note-3)。
- 處於不可中斷的睡眠的程序即使傳送了SIGKILL，也有可能不會終止（並釋放其資源）。這是少數 Unix 系統必須重新啟動才能解決臨時軟體問題的幾種情況之一。

當在大多數系統關閉程序中終止程序時，如果程序沒有回應 SIGTERM 而自動登出，SIGKILL 是最後的手段。為了加快電腦關機過程，[Mac OS X 10.6](https://zh.wikipedia.org/wiki/Mac_OS_X_10.6)向標記自己為「clean」的程序傳送SIGKILL，從而加快關機時間，而且可能不會產生任何不良影響。[[4\]](https://zh.wikipedia.org/zh-tw/Unix信号#cite_note-4)。在 Linux 中執行 `killall -9` 命令具有類似不過更危險的效果；它不讓程序儲存未儲存的資料。

- SIGPIPE

當一個程序試圖寫入一個沒有連接到另一端程序的管道時，SIGPIPE訊號會被傳送到該程序。

- SIGPOLL

當一個事件發生在一個正在顯式監視的檔案描述子上時，就會傳送SIGPOLL訊號。有效使用這種用法可以進行非同步 I/O，因為核心將代替呼叫者輪詢描述符。它提供了主動輪詢的替代方案。

- SIGRTMIN 到 SIGRTMAX

SIGRTMIN至SIGRTMAX訊號用於使用者自訂的目的。它們是**即時**訊號。

- SIGTTIN 和 SIGTTOU

當程序在後台試圖分別從tty讀取或寫入時，SIGTTIN和SIGTTOU訊號會被傳送到該程序。通常，這些訊號僅由作業控制下的程序接收；守護行程沒有控制終端，因此永遠不會接收這些訊號。

- SIGQUIT

當使用者在程序的控制終端請求登出程序並進行[核心傾印](https://zh.wikipedia.org/wiki/核心转储)時，SIGQUIT訊號會被傳送到該程序。

- SIGSEGV

當程序試圖訪問無效記憶體參照時發生[記憶體區段錯誤](https://zh.wikipedia.org/wiki/記憶體區段錯誤)，SIGSEGV訊號會被傳送到該程序。

- SIGSTOP

當作業系統暫停程序的執行時，會產生SIGSTOP訊號。SIGSTOP訊號無法被擷取或無視。

- SIGSYS

當系統呼叫時傳入非法的參數，會產生SIGSYS訊號。實際上，SIGSYS訊號很少會出現，因為應用程式依賴[庫](https://zh.wikipedia.org/wiki/函式庫)呼叫系統呼叫。SIGSYS可以被違反Linux Seccomp安全規則的應用程式擷取。SIGSYS也可用於類比外部系統呼叫，例如：在Linux上類比 Windows系統呼叫。

- SIGTERM

當使用者請求終止程序時，會產生SIGTERM訊號。SIGTERM訊號可以被擷取或無視。這允許該程序在結束前釋放掉所占用的資源並儲存其狀態。SIGINT和SIGTERM非常相似。

- SIGTSTP

當使用者在程序的控制終端請求登出程序時，會產生SIGTSTP訊號。SIGTSTP訊號可以被擷取或無視。SIGTSTP訊號的產生通常是由於使用者按下[Ctrl+Z](https://zh.wikipedia.org/w/index.php?title=Ctrl-Z&action=edit&redlink=1)。
