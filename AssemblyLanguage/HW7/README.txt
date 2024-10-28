# 執行環境
- CPU型號
$ cat /proc/cpuinfo
flags: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single ssbd ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp pku ospke md_clear flush_l1d arch_capabilities

- 作業系統: Arch Linux

# 運算時間
`printf("time: %ld\n", diff(start, end).tv_nsec);`
- Non-SIMD version: time: 604670808
- SIMD version: time: 304220223

# 編譯程式
`g++ hw7simd.c -o hw7simd.exe`
`g++ Non-SIMD_rgba2.c -o Non-SIMD_rgba2.exe`

# 程式內容
## 使用指令
SSE family
__m128i _mm_sub_epi32 (__m128i a, __m128i b)
__m128i _mm_add_epi32 (__m128i a, __m128i b)
__m128i _mm_and_si128 (__m128i a, __m128i b)
__m128i _mm_bsrli_si128 (__m128i a, int imm8)
__m128i _mm_set_epi32 (int e3, int e2, int e1, int e0)
__m128 _mm_mul_ps (__m128 a, __m128 b)
__m128 _mm_set_ps (float e3, float e2, float e1, float e0)
__m128i _mm_bslli_si128 (__m128i a, int imm8)

## 寫法
照著 Non-SIMD 去作，加法為 _mm_add_epi32
常數 0xff 和浮點數使用 _mm_set_epi32 和 _mm_set_ps