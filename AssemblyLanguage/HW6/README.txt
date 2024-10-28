# 程式內容

## bcdadd.s
1. 設 r4 = 0
2. 取出 a 的個位數放到 r2
    取出 b 的個位數放到 r3
    r2, r3 相加，如果要進位r2-10, a(r0)的十位數+1
    將 r2 的值加到 r4
3. 十位數百位數，重複步驟 2
4. 將 r4 的值放回 r0 (return r0)
## bcdsub.s
1. 取出 a 的個位數放到 r2
    取出 b 的個位數放到 r3
    比較 r2, r3，如果需要借位將a(r0)的十位數-1，a(r0)的個位數+10
    將 r0 = r0-r3
2. 取出 a 的十位數放到 r2
    取出 b 的十位數放到 r3
    比較 r2 是否等於 0xf0 如果是，代表r2原本是0被借位後變10-1 => 將a(r0)的百位數和r2 設為9
    比較r2, r3，如果需要借位將a(r0)的百位數-1，a(r0)的十位數+10
    將 r0 = r0-r3
3. 取出 b 的百位數放到 r3
    將 r0 = r0-r3

# 編譯程式
$ ~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-gcc hw5.s idiv.s -o hw5.exe

# 執行程式
$ ~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-insight
檢查