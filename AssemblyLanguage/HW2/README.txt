組合語言 hw2
410410060 林柔均

1. 程式內容
`mov r0, r1, LSL #1` 將 r1*2 的值存到 r0 裡
`add r5, r5, r5 LSL #1` 讓 r5 = r5 * 3
`add r0, r0, r5` 完成前半 r0 = r1*2 + r5*3
`sub r0, r0, r6, LSL #1` 最後將 2*r6 減掉，將結果存在 r0

2. 編譯程式
`~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-gcc -g hw2.s -o hw2.exe`
使用 arm-none-enbi-gcc 生成 .exe 檔案

3. 執行程式
`arm-none-eabi-insight` 來執行並 Debug，可以觀察 register 的變化
