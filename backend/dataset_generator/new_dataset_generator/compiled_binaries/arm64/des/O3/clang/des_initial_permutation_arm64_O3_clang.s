	.text
	.file	"des_initial_permutation.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_initial_permutation
.LCPI0_0:
	.xword	18014398509481984               // 0x40000000000000
	.xword	4611686018427387904             // 0x4000000000000000
.LCPI0_1:
	.xword	4503599627370496                // 0x10000000000000
	.xword	1152921504606846976             // 0x1000000000000000
.LCPI0_2:
	.xword	4194304                         // 0x400000
	.xword	1073741824                      // 0x40000000
.LCPI0_3:
	.xword	1048576                         // 0x100000
	.xword	268435456                       // 0x10000000
.LCPI0_4:
	.xword	274877906944                    // 0x4000000000
	.xword	70368744177664                  // 0x400000000000
.LCPI0_5:
	.xword	68719476736                     // 0x1000000000
	.xword	17592186044416                  // 0x100000000000
.LCPI0_6:
	.xword	64                              // 0x40
	.xword	16384                           // 0x4000
.LCPI0_7:
	.xword	16                              // 0x10
	.xword	4096                            // 0x1000
.LCPI0_8:
	.xword	144115188075855872              // 0x200000000000000
	.xword	72057594037927936               // 0x100000000000000
.LCPI0_9:
	.xword	562949953421312                 // 0x2000000000000
	.xword	281474976710656                 // 0x1000000000000
.LCPI0_10:
	.xword	2305843009213693952             // 0x2000000000000000
	.xword	1152921504606846976             // 0x1000000000000000
.LCPI0_11:
	.xword	9007199254740992                // 0x20000000000000
	.xword	4503599627370496                // 0x10000000000000
.LCPI0_12:
	.xword	576460752303423488              // 0x800000000000000
	.xword	288230376151711744              // 0x400000000000000
.LCPI0_13:
	.xword	2251799813685248                // 0x8000000000000
	.xword	1125899906842624                // 0x4000000000000
.LCPI0_14:
	.xword	-9223372036854775808            // 0x8000000000000000
	.xword	4611686018427387904             // 0x4000000000000000
.LCPI0_15:
	.xword	36028797018963968               // 0x80000000000000
	.xword	18014398509481984               // 0x40000000000000
.LCPI0_16:
	.xword	1125899906842624                // 0x4000000000000
	.xword	288230376151711744              // 0x400000000000000
.LCPI0_17:
	.xword	281474976710656                 // 0x1000000000000
	.xword	72057594037927936               // 0x100000000000000
.LCPI0_18:
	.xword	262144                          // 0x40000
	.xword	67108864                        // 0x4000000
.LCPI0_19:
	.xword	65536                           // 0x10000
	.xword	16777216                        // 0x1000000
.LCPI0_20:
	.xword	17179869184                     // 0x400000000
	.xword	4398046511104                   // 0x40000000000
.LCPI0_21:
	.xword	4294967296                      // 0x100000000
	.xword	1099511627776                   // 0x10000000000
.LCPI0_22:
	.xword	4                               // 0x4
	.xword	1024                            // 0x400
.LCPI0_23:
	.xword	1                               // 0x1
	.xword	256                             // 0x100
.LCPI0_24:
	.xword	2199023255552                   // 0x20000000000
	.xword	1099511627776                   // 0x10000000000
.LCPI0_25:
	.xword	8589934592                      // 0x200000000
	.xword	4294967296                      // 0x100000000
.LCPI0_26:
	.xword	35184372088832                  // 0x200000000000
	.xword	17592186044416                  // 0x100000000000
.LCPI0_27:
	.xword	137438953472                    // 0x2000000000
	.xword	68719476736                     // 0x1000000000
.LCPI0_28:
	.xword	8796093022208                   // 0x80000000000
	.xword	4398046511104                   // 0x40000000000
.LCPI0_29:
	.xword	34359738368                     // 0x800000000
	.xword	17179869184                     // 0x400000000
.LCPI0_30:
	.xword	140737488355328                 // 0x800000000000
	.xword	70368744177664                  // 0x400000000000
.LCPI0_31:
	.xword	549755813888                    // 0x8000000000
	.xword	274877906944                    // 0x4000000000
.LCPI0_32:
	.xword	32                              // 0x20
	.xword	8192                            // 0x2000
.LCPI0_33:
	.xword	128                             // 0x80
	.xword	32768                           // 0x8000
.LCPI0_34:
	.xword	137438953472                    // 0x2000000000
	.xword	35184372088832                  // 0x200000000000
.LCPI0_35:
	.xword	549755813888                    // 0x8000000000
	.xword	140737488355328                 // 0x800000000000
.LCPI0_36:
	.xword	2097152                         // 0x200000
	.xword	536870912                       // 0x20000000
.LCPI0_37:
	.xword	8388608                         // 0x800000
	.xword	2147483648                      // 0x80000000
.LCPI0_38:
	.xword	9007199254740992                // 0x20000000000000
	.xword	2305843009213693952             // 0x2000000000000000
.LCPI0_39:
	.xword	36028797018963968               // 0x80000000000000
	.xword	-9223372036854775808            // 0x8000000000000000
.LCPI0_40:
	.xword	8388608                         // 0x800000
	.xword	4194304                         // 0x400000
.LCPI0_41:
	.xword	2147483648                      // 0x80000000
	.xword	1073741824                      // 0x40000000
.LCPI0_42:
	.xword	524288                          // 0x80000
	.xword	262144                          // 0x40000
.LCPI0_43:
	.xword	134217728                       // 0x8000000
	.xword	67108864                        // 0x4000000
.LCPI0_44:
	.xword	2097152                         // 0x200000
	.xword	1048576                         // 0x100000
.LCPI0_45:
	.xword	536870912                       // 0x20000000
	.xword	268435456                       // 0x10000000
.LCPI0_46:
	.xword	131072                          // 0x20000
	.xword	65536                           // 0x10000
.LCPI0_47:
	.xword	33554432                        // 0x2000000
	.xword	16777216                        // 0x1000000
.LCPI0_48:
	.xword	2251799813685248                // 0x8000000000000
	.xword	576460752303423488              // 0x800000000000000
.LCPI0_49:
	.xword	562949953421312                 // 0x2000000000000
	.xword	144115188075855872              // 0x200000000000000
.LCPI0_50:
	.xword	524288                          // 0x80000
	.xword	134217728                       // 0x8000000
.LCPI0_51:
	.xword	131072                          // 0x20000
	.xword	33554432                        // 0x2000000
.LCPI0_52:
	.xword	34359738368                     // 0x800000000
	.xword	8796093022208                   // 0x80000000000
.LCPI0_53:
	.xword	8589934592                      // 0x200000000
	.xword	2199023255552                   // 0x20000000000
.LCPI0_54:
	.xword	8                               // 0x8
	.xword	2048                            // 0x800
.LCPI0_55:
	.xword	2                               // 0x2
	.xword	512                             // 0x200
.LCPI0_56:
	.xword	512                             // 0x200
	.xword	256                             // 0x100
.LCPI0_57:
	.xword	2                               // 0x2
	.xword	1                               // 0x1
.LCPI0_58:
	.xword	8192                            // 0x2000
	.xword	4096                            // 0x1000
.LCPI0_59:
	.xword	32                              // 0x20
	.xword	16                              // 0x10
.LCPI0_60:
	.xword	2048                            // 0x800
	.xword	1024                            // 0x400
.LCPI0_61:
	.xword	8                               // 0x8
	.xword	4                               // 0x4
.LCPI0_62:
	.xword	32768                           // 0x8000
	.xword	16384                           // 0x4000
.LCPI0_63:
	.xword	128                             // 0x80
	.xword	64                              // 0x40
	.text
	.globl	des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
des_initial_permutation:                // @des_initial_permutation
	.cfi_startproc
// %bb.0:
	str	d14, [sp, #-64]!                // 8-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	d13, d12, [sp, #16]             // 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             // 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               // 16-byte Folded Spill
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -64
	adrp	x9, .LCPI0_1
	adrp	x8, .LCPI0_0
	dup	v0.2d, x0
	ldr	q2, [x9, :lo12:.LCPI0_1]
	adrp	x9, .LCPI0_6
	ldr	q1, [x8, :lo12:.LCPI0_0]
	adrp	x8, .LCPI0_2
	ldr	q4, [x9, :lo12:.LCPI0_6]
	adrp	x9, .LCPI0_7
	ldr	q3, [x8, :lo12:.LCPI0_2]
	ldr	q5, [x9, :lo12:.LCPI0_7]
	adrp	x8, .LCPI0_3
	and	v4.16b, v0.16b, v4.16b
	and	v2.16b, v0.16b, v2.16b
	ldr	q6, [x8, :lo12:.LCPI0_3]
	and	v3.16b, v0.16b, v3.16b
	adrp	x8, .LCPI0_5
	and	v5.16b, v0.16b, v5.16b
	adrp	x9, .LCPI0_4
	ldr	q16, [x8, :lo12:.LCPI0_5]
	adrp	x8, .LCPI0_8
	ldr	q7, [x9, :lo12:.LCPI0_4]
	and	v6.16b, v0.16b, v6.16b
	cmeq	v19.2d, v4.2d, #0
	cmeq	v2.2d, v2.2d, #0
	ldr	q4, [x8, :lo12:.LCPI0_8]
	adrp	x8, .LCPI0_9
	cmeq	v18.2d, v5.2d, #0
	cmeq	v3.2d, v3.2d, #0
	adrp	x9, .LCPI0_10
	ldr	q5, [x8, :lo12:.LCPI0_9]
	and	v1.16b, v0.16b, v1.16b
	and	v7.16b, v0.16b, v7.16b
	ldr	q20, [x9, :lo12:.LCPI0_10]
	adrp	x8, .LCPI0_11
	cmeq	v21.2d, v6.2d, #0
	bic	v17.16b, v5.16b, v2.16b
	ldr	q2, [x8, :lo12:.LCPI0_11]
	adrp	x8, .LCPI0_12
	and	v16.16b, v0.16b, v16.16b
	bic	v6.16b, v20.16b, v3.16b
	ldr	q3, [x8, :lo12:.LCPI0_12]
	adrp	x8, .LCPI0_14
	cmeq	v1.2d, v1.2d, #0
	cmeq	v7.2d, v7.2d, #0
	adrp	x9, .LCPI0_13
	ldr	q22, [x8, :lo12:.LCPI0_14]
	adrp	x8, .LCPI0_15
	ldr	q20, [x9, :lo12:.LCPI0_13]
	adrp	x9, .LCPI0_16
	bic	v5.16b, v2.16b, v21.16b
	ldr	q2, [x8, :lo12:.LCPI0_15]
	cmeq	v16.2d, v16.2d, #0
	ldr	q21, [x9, :lo12:.LCPI0_16]
	adrp	x8, .LCPI0_17
	bic	v1.16b, v4.16b, v1.16b
	bic	v4.16b, v3.16b, v7.16b
	bic	v3.16b, v2.16b, v18.16b
	ldr	q18, [x8, :lo12:.LCPI0_17]
	adrp	x8, .LCPI0_20
	bic	v7.16b, v22.16b, v19.16b
	and	v2.16b, v0.16b, v21.16b
	adrp	x9, .LCPI0_23
	ldr	q19, [x8, :lo12:.LCPI0_20]
	adrp	x8, .LCPI0_22
	bic	v16.16b, v20.16b, v16.16b
	ldr	q20, [x9, :lo12:.LCPI0_23]
	ldr	q21, [x8, :lo12:.LCPI0_22]
	adrp	x8, .LCPI0_21
	ldr	q22, [x8, :lo12:.LCPI0_21]
	adrp	x8, .LCPI0_19
	cmeq	v2.2d, v2.2d, #0
	and	v20.16b, v0.16b, v20.16b
	ldr	q24, [x8, :lo12:.LCPI0_19]
	adrp	x8, .LCPI0_24
	adrp	x9, .LCPI0_18
	and	v19.16b, v0.16b, v19.16b
	ldr	q25, [x8, :lo12:.LCPI0_24]
	ldr	q23, [x9, :lo12:.LCPI0_18]
	and	v18.16b, v0.16b, v18.16b
	adrp	x8, .LCPI0_26
	adrp	x9, .LCPI0_27
	and	v22.16b, v0.16b, v22.16b
	cmeq	v20.2d, v20.2d, #0
	bic	v2.16b, v25.16b, v2.16b
	ldr	q25, [x8, :lo12:.LCPI0_26]
	ldr	q26, [x9, :lo12:.LCPI0_27]
	adrp	x8, .LCPI0_31
	adrp	x9, .LCPI0_29
	and	v21.16b, v0.16b, v21.16b
	and	v23.16b, v0.16b, v23.16b
	cmeq	v19.2d, v19.2d, #0
	ldr	q27, [x8, :lo12:.LCPI0_31]
	adrp	x8, .LCPI0_30
	ldr	q28, [x9, :lo12:.LCPI0_29]
	adrp	x9, .LCPI0_28
	cmeq	v18.2d, v18.2d, #0
	ldr	q29, [x8, :lo12:.LCPI0_30]
	adrp	x8, .LCPI0_25
	ldr	q30, [x9, :lo12:.LCPI0_28]
	and	v24.16b, v0.16b, v24.16b
	cmeq	v22.2d, v22.2d, #0
	bic	v20.16b, v27.16b, v20.16b
	ldr	q27, [x8, :lo12:.LCPI0_25]
	cmeq	v21.2d, v21.2d, #0
	cmeq	v23.2d, v23.2d, #0
	bic	v19.16b, v30.16b, v19.16b
	adrp	x8, .LCPI0_32
	bic	v18.16b, v27.16b, v18.16b
	cmeq	v24.2d, v24.2d, #0
	bic	v22.16b, v28.16b, v22.16b
	orr	v3.16b, v20.16b, v3.16b
	ldr	q20, [x8, :lo12:.LCPI0_32]
	adrp	x8, .LCPI0_33
	bic	v21.16b, v29.16b, v21.16b
	bic	v23.16b, v25.16b, v23.16b
	orr	v4.16b, v19.16b, v4.16b
	ldr	q19, [x8, :lo12:.LCPI0_33]
	adrp	x8, .LCPI0_36
	orr	v17.16b, v18.16b, v17.16b
	and	v18.16b, v0.16b, v20.16b
	ldr	q20, [x8, :lo12:.LCPI0_36]
	adrp	x8, .LCPI0_38
	bic	v24.16b, v26.16b, v24.16b
	orr	v16.16b, v22.16b, v16.16b
	adrp	x9, .LCPI0_39
	ldr	q22, [x8, :lo12:.LCPI0_38]
	adrp	x8, .LCPI0_37
	orr	v7.16b, v21.16b, v7.16b
	orr	v6.16b, v23.16b, v6.16b
	ldr	q21, [x9, :lo12:.LCPI0_39]
	ldr	q23, [x8, :lo12:.LCPI0_37]
	adrp	x9, .LCPI0_34
	orr	v5.16b, v24.16b, v5.16b
	adrp	x8, .LCPI0_35
	and	v21.16b, v0.16b, v21.16b
	ldr	q24, [x9, :lo12:.LCPI0_34]
	and	v23.16b, v0.16b, v23.16b
	ldr	q25, [x8, :lo12:.LCPI0_35]
	and	v19.16b, v0.16b, v19.16b
	cmeq	v18.2d, v18.2d, #0
	and	v24.16b, v0.16b, v24.16b
	adrp	x8, .LCPI0_40
	adrp	x9, .LCPI0_42
	and	v26.16b, v0.16b, v25.16b
	cmeq	v25.2d, v21.2d, #0
	cmeq	v21.2d, v23.2d, #0
	ldr	q23, [x8, :lo12:.LCPI0_40]
	adrp	x8, .LCPI0_41
	cmeq	v19.2d, v19.2d, #0
	cmeq	v27.2d, v24.2d, #0
	ldr	q28, [x9, :lo12:.LCPI0_42]
	and	v22.16b, v0.16b, v22.16b
	bic	v18.16b, v23.16b, v18.16b
	ldr	q23, [x8, :lo12:.LCPI0_41]
	adrp	x8, .LCPI0_43
	cmeq	v26.2d, v26.2d, #0
	ldr	q29, [x8, :lo12:.LCPI0_43]
	adrp	x8, .LCPI0_44
	ldr	q30, [x8, :lo12:.LCPI0_44]
	adrp	x8, .LCPI0_46
	and	v20.16b, v0.16b, v20.16b
	bic	v24.16b, v23.16b, v19.16b
	bic	v23.16b, v28.16b, v27.16b
	ldr	q27, [x8, :lo12:.LCPI0_46]
	adrp	x8, .LCPI0_47
	adrp	x9, .LCPI0_45
	bic	v19.16b, v29.16b, v26.16b
	ldr	q26, [x8, :lo12:.LCPI0_47]
	adrp	x8, .LCPI0_49
	cmeq	v22.2d, v22.2d, #0
	ldr	q31, [x9, :lo12:.LCPI0_45]
	ldr	q28, [x8, :lo12:.LCPI0_49]
	adrp	x8, .LCPI0_51
	cmeq	v20.2d, v20.2d, #0
	ldr	q29, [x8, :lo12:.LCPI0_51]
	adrp	x8, .LCPI0_55
	bic	v21.16b, v31.16b, v21.16b
	adrp	x9, .LCPI0_48
	ldr	q31, [x8, :lo12:.LCPI0_55]
	adrp	x8, .LCPI0_53
	bic	v22.16b, v27.16b, v22.16b
	ldr	q27, [x9, :lo12:.LCPI0_48]
	adrp	x9, .LCPI0_54
	ldr	q9, [x8, :lo12:.LCPI0_53]
	bic	v20.16b, v30.16b, v20.16b
	ldr	q30, [x9, :lo12:.LCPI0_54]
	adrp	x9, .LCPI0_52
	and	v31.16b, v0.16b, v31.16b
	ldr	q8, [x9, :lo12:.LCPI0_52]
	adrp	x9, .LCPI0_50
	and	v9.16b, v0.16b, v9.16b
	ldr	q10, [x9, :lo12:.LCPI0_50]
	and	v30.16b, v0.16b, v30.16b
	adrp	x8, .LCPI0_56
	and	v29.16b, v0.16b, v29.16b
	and	v8.16b, v0.16b, v8.16b
	bic	v25.16b, v26.16b, v25.16b
	and	v26.16b, v0.16b, v28.16b
	and	v28.16b, v0.16b, v10.16b
	and	v0.16b, v0.16b, v27.16b
	cmeq	v27.2d, v31.2d, #0
	cmeq	v31.2d, v9.2d, #0
	ldr	q9, [x8, :lo12:.LCPI0_56]
	adrp	x8, .LCPI0_57
	cmeq	v30.2d, v30.2d, #0
	adrp	x9, .LCPI0_62
	ldr	q10, [x8, :lo12:.LCPI0_57]
	adrp	x8, .LCPI0_58
	ldr	q12, [x9, :lo12:.LCPI0_62]
	ldr	q11, [x8, :lo12:.LCPI0_58]
	adrp	x8, .LCPI0_63
	cmeq	v8.2d, v8.2d, #0
	ldr	q13, [x8, :lo12:.LCPI0_63]
	adrp	x8, .LCPI0_61
	cmeq	v29.2d, v29.2d, #0
	cmeq	v28.2d, v28.2d, #0
	cmeq	v26.2d, v26.2d, #0
	cmeq	v0.2d, v0.2d, #0
	adrp	x9, .LCPI0_59
	ldr	q14, [x8, :lo12:.LCPI0_61]
	adrp	x8, .LCPI0_60
	bic	v30.16b, v12.16b, v30.16b
	ldr	q12, [x9, :lo12:.LCPI0_59]
	bic	v27.16b, v13.16b, v27.16b
	ldr	q13, [x8, :lo12:.LCPI0_60]
	bic	v0.16b, v9.16b, v0.16b
	bic	v26.16b, v10.16b, v26.16b
	bic	v31.16b, v14.16b, v31.16b
	bic	v28.16b, v11.16b, v28.16b
	bic	v29.16b, v12.16b, v29.16b
	bic	v8.16b, v13.16b, v8.16b
	orr	v1.16b, v2.16b, v1.16b
	orr	v2.16b, v27.16b, v18.16b
	orr	v18.16b, v30.16b, v24.16b
	orr	v22.16b, v26.16b, v22.16b
	orr	v0.16b, v0.16b, v25.16b
	orr	v23.16b, v31.16b, v23.16b
	orr	v20.16b, v29.16b, v20.16b
	orr	v21.16b, v28.16b, v21.16b
	orr	v19.16b, v8.16b, v19.16b
	orr	v2.16b, v2.16b, v3.16b
	orr	v3.16b, v18.16b, v7.16b
	orr	v0.16b, v0.16b, v1.16b
	orr	v7.16b, v23.16b, v16.16b
	orr	v16.16b, v22.16b, v17.16b
	orr	v1.16b, v19.16b, v4.16b
	orr	v4.16b, v20.16b, v5.16b
	orr	v5.16b, v21.16b, v6.16b
	orr	v2.16b, v3.16b, v2.16b
	ldp	d9, d8, [sp, #48]               // 16-byte Folded Reload
	orr	v0.16b, v0.16b, v16.16b
	ldp	d11, d10, [sp, #32]             // 16-byte Folded Reload
	orr	v4.16b, v5.16b, v4.16b
	orr	v1.16b, v1.16b, v7.16b
	ldp	d13, d12, [sp, #16]             // 16-byte Folded Reload
	orr	v0.16b, v4.16b, v0.16b
	orr	v1.16b, v2.16b, v1.16b
	orr	v0.16b, v1.16b, v0.16b
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x0, d0
	ldr	d14, [sp], #64                  // 8-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	ret
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
