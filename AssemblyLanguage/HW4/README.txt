將 r2 設為 0
1. 先檢查百位數
用 loop 檢查當 r1 >= 100
r1 就減 100
每次減一次就將 r2 + 0001 0000 0000(2)，也就是 r2 + 256(10)
最後 r1就會是 r1 / 100 的餘數

2. 檢查十位數
用 loop 檢查當 r1 >= 10
r1 就減 10
每次減一次就將 r2 + 0000 0001 0000(2)，也就是 r2 + 16(10)
最後 r1就會是 r1 / 10 的餘數

3. 最後處理個位數
用 loop 檢查當 r1 >= 1
r1 就減 1
每次減一次就將 r2 + 0000 0000 0001(2)，也就是 r2 + 1(10)
最後 r1就會是 0

結果:
r2 的值會是 256*(r1/100) + 16*((r1%100)/10) + 1 * (r1%10)