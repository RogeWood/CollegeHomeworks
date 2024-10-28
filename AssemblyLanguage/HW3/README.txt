# Assembly Language HW3
410410060 林柔均

## Program
因為是4*3矩陣，所以我用 loop
1. 設定 a, b, c 的 data, 以及 matrux a, b, c 的位置
2. 將 a, b, c 的位置分別存入 r0, r1, r2
3. 因為是 4*3 的 matrix, 所以 element 要加 4 * 3 = 12 次
4. 進入迴圈，將 r0(a) 所指向的值存到 r4，並往下指一個 word
5. 將 r1(b) 所指向的值存到 r5，並往下指一個 word
6. r4, r5 相加後存到 r6
7. 將 r6 的值存到 r2(c)，並往下指一個 word
8. 如果 r3 不等於 0 ，回到第 4 步(執行12次)
9. 將 c 第一個 element 的位置存到 r0

## Compile

在 archlinux 系統上使用 arm-none-eabi-gcc 編譯
`~/Desktop/homework/AssemblyLanguage/arm-tool/bin/arm-none-eabi-gcc -g hw3.s -o hw3.exe`
寫在 Makefile，使用 `make all` 可生成 exe檔

## Run

使用 arm-none-eabi-insight 觀察運行過程