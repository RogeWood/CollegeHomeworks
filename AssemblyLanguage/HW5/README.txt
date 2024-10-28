先設 r3 是除數 100
呼叫函式 IDIV
用 loop 檢查當 r1 >= 100
r1 就減 100
r0 就 + 1
餘數是 r1
商是 r0
將 r0 存到 r4

重複以上動作除數 r3 = 10
將 r0 存到 r5

最後將 r5 lsl 4 bits
      r4 lsl 8 bits
r2 = r1 + r5 + r4
編譯程式
$ ~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-gcc hw5.s idiv.s -o hw5.exe

執行程式
$ ~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-insight
檢查