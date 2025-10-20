	.text
	.file	"des_initial_permutation.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_initial_permutation
.LCPI0_0:
	.xword	14                              // 0xe
	.xword	15                              // 0xf
.LCPI0_1:
	.xword	12                              // 0xc
	.xword	13                              // 0xd
.LCPI0_2:
	.xword	10                              // 0xa
	.xword	11                              // 0xb
.LCPI0_3:
	.xword	8                               // 0x8
	.xword	9                               // 0x9
.LCPI0_4:
	.xword	6                               // 0x6
	.xword	7                               // 0x7
.LCPI0_5:
	.xword	4                               // 0x4
	.xword	5                               // 0x5
.LCPI0_6:
	.xword	2                               // 0x2
	.xword	3                               // 0x3
.LCPI0_7:
	.xword	0                               // 0x0
	.xword	1                               // 0x1
	.text
	.globl	des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
des_initial_permutation:                // @des_initial_permutation
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	d15, d14, [sp, #96]             // 16-byte Folded Spill
	stp	d13, d12, [sp, #112]            // 16-byte Folded Spill
	stp	d11, d10, [sp, #128]            // 16-byte Folded Spill
	stp	d9, d8, [sp, #144]              // 16-byte Folded Spill
	.cfi_offset b8, -8
	.cfi_offset b9, -16
	.cfi_offset b10, -24
	.cfi_offset b11, -32
	.cfi_offset b12, -40
	.cfi_offset b13, -48
	.cfi_offset b14, -56
	.cfi_offset b15, -64
	adrp	x10, .LCPI0_1
	adrp	x9, .LCPI0_0
	adrp	x11, .LCPI0_4
	ldr	q1, [x10, :lo12:.LCPI0_1]
	adrp	x10, .LCPI0_3
	ldr	q0, [x9, :lo12:.LCPI0_0]
	ldr	q3, [x10, :lo12:.LCPI0_3]
	mov	w10, #64                        // =0x40
	adrp	x9, .LCPI0_2
	dup	v7.2d, x10
	mov	w10, #1                         // =0x1
	movi	v6.2d, #0000000000000000
	dup	v17.2d, x10
	mov	w10, #63                        // =0x3f
	movi	v16.2d, #0x000000ffffffff
	dup	v18.2d, x10
	mov	w10, #16                        // =0x10
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v24.2d, #0000000000000000
	movi	v9.2d, #0000000000000000
	movi	v31.2d, #0000000000000000
	ldr	q2, [x9, :lo12:.LCPI0_2]
	ldr	q4, [x11, :lo12:.LCPI0_4]
	adrp	x9, .LCPI0_5
	dup	v5.2d, x0
	adrp	x11, .LCPI0_6
	dup	v26.2d, x10
	adrp	x10, .LCPI0_7
	ldr	q27, [x9, :lo12:.LCPI0_5]
	ldr	q28, [x11, :lo12:.LCPI0_6]
	ldr	q29, [x10, :lo12:.LCPI0_7]
	mov	x8, xzr
	adrp	x9, IP
	add	x9, x9, :lo12:IP
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	q30, [x9, x8]
	stp	q9, q1, [sp, #16]               // 32-byte Folded Spill
	and	v1.16b, v1.16b, v16.16b
	stp	q31, q2, [sp, #48]              // 32-byte Folded Spill
	and	v15.16b, v2.16b, v16.16b
	and	v14.16b, v3.16b, v16.16b
	ushll2	v31.8h, v30.16b, #0
	ushll	v30.8h, v30.8b, #0
	str	q6, [sp, #80]                   // 16-byte Folded Spill
	str	q1, [sp]                        // 16-byte Folded Spill
	and	v6.16b, v4.16b, v16.16b
	and	v19.16b, v29.16b, v16.16b
	eor	v15.16b, v15.16b, v18.16b
	mov	v2.16b, v24.16b
	mov	v24.16b, v4.16b
	ushll	v8.4s, v31.4h, #0
	ushll2	v31.4s, v31.8h, #0
	add	x8, x8, #16
	ushll	v9.4s, v30.4h, #0
	ushll2	v30.4s, v30.8h, #0
	cmp	x8, #64
	mov	v4.16b, v23.16b
	mov	v23.16b, v3.16b
	mov	v3.16b, v20.16b
	usubw2	v11.2d, v7.2d, v8.4s
	ldr	q20, [sp]                       // 16-byte Folded Reload
	usubw	v10.2d, v7.2d, v31.2s
	usubw2	v13.2d, v7.2d, v9.4s
	usubw	v9.2d, v7.2d, v9.2s
	usubw2	v12.2d, v7.2d, v30.4s
	usubw2	v31.2d, v7.2d, v31.4s
	usubw	v30.2d, v7.2d, v30.2s
	usubw	v8.2d, v7.2d, v8.2s
	mov	v25.16b, v21.16b
	mov	v21.16b, v0.16b
	and	v0.16b, v0.16b, v16.16b
	and	v11.16b, v11.16b, v16.16b
	and	v10.16b, v10.16b, v16.16b
	eor	v20.16b, v20.16b, v18.16b
	and	v9.16b, v9.16b, v16.16b
	and	v12.16b, v12.16b, v16.16b
	and	v13.16b, v13.16b, v16.16b
	and	v31.16b, v31.16b, v16.16b
	and	v30.16b, v30.16b, v16.16b
	and	v8.16b, v8.16b, v16.16b
	ushl	v11.2d, v17.2d, v11.2d
	ushl	v10.2d, v17.2d, v10.2d
	ushl	v15.2d, v17.2d, v15.2d
	ushl	v9.2d, v17.2d, v9.2d
	ushl	v12.2d, v17.2d, v12.2d
	and	v1.16b, v27.16b, v16.16b
	ushl	v31.2d, v17.2d, v31.2d
	ushl	v30.2d, v17.2d, v30.2d
	eor	v19.16b, v19.16b, v18.16b
	and	v11.16b, v11.16b, v5.16b
	and	v10.16b, v10.16b, v5.16b
	eor	v0.16b, v0.16b, v18.16b
	and	v9.16b, v9.16b, v5.16b
	and	v12.16b, v12.16b, v5.16b
	eor	v6.16b, v6.16b, v18.16b
	and	v31.16b, v31.16b, v5.16b
	ushl	v20.2d, v17.2d, v20.2d
	ushl	v13.2d, v17.2d, v13.2d
	cmeq	v11.2d, v11.2d, #0
	cmeq	v10.2d, v10.2d, #0
	ushl	v8.2d, v17.2d, v8.2d
	and	v30.16b, v30.16b, v5.16b
	eor	v1.16b, v1.16b, v18.16b
	cmeq	v9.2d, v9.2d, #0
	ushl	v19.2d, v17.2d, v19.2d
	cmeq	v12.2d, v12.2d, #0
	cmeq	v31.2d, v31.2d, #0
	bic	v11.16b, v15.16b, v11.16b
	and	v15.16b, v28.16b, v16.16b
	ushl	v6.2d, v17.2d, v6.2d
	ushl	v0.2d, v17.2d, v0.2d
	bic	v20.16b, v20.16b, v10.16b
	and	v13.16b, v13.16b, v5.16b
	and	v8.16b, v8.16b, v5.16b
	eor	v14.16b, v14.16b, v18.16b
	cmeq	v30.2d, v30.2d, #0
	eor	v15.16b, v15.16b, v18.16b
	ushl	v1.2d, v17.2d, v1.2d
	bic	v19.16b, v19.16b, v9.16b
	ldr	q9, [sp, #16]                   // 16-byte Folded Reload
	bic	v0.16b, v0.16b, v31.16b
	ldr	q31, [sp, #48]                  // 16-byte Folded Reload
	bic	v6.16b, v6.16b, v12.16b
	cmeq	v8.2d, v8.2d, #0
	ushl	v14.2d, v17.2d, v14.2d
	orr	v9.16b, v20.16b, v9.16b
	mov	v20.16b, v3.16b
	mov	v3.16b, v23.16b
	mov	v23.16b, v4.16b
	cmeq	v10.2d, v13.2d, #0
	ushl	v13.2d, v17.2d, v15.2d
	bic	v1.16b, v1.16b, v30.16b
	mov	v4.16b, v24.16b
	mov	v24.16b, v2.16b
	orr	v24.16b, v11.16b, v2.16b
	orr	v31.16b, v0.16b, v31.16b
	mov	v0.16b, v21.16b
	orr	v23.16b, v6.16b, v23.16b
	ldp	q2, q6, [sp, #64]               // 32-byte Folded Reload
	mov	v21.16b, v25.16b
	bic	v8.16b, v14.16b, v8.16b
	bic	v30.16b, v13.16b, v10.16b
	orr	v21.16b, v1.16b, v25.16b
	ldr	q1, [sp, #32]                   // 16-byte Folded Reload
	add	v27.2d, v27.2d, v26.2d
	add	v28.2d, v28.2d, v26.2d
	add	v29.2d, v29.2d, v26.2d
	add	v4.2d, v4.2d, v26.2d
	add	v3.2d, v3.2d, v26.2d
	add	v2.2d, v2.2d, v26.2d
	add	v1.2d, v1.2d, v26.2d
	add	v0.2d, v0.2d, v26.2d
	orr	v22.16b, v8.16b, v22.16b
	orr	v20.16b, v30.16b, v20.16b
	orr	v6.16b, v19.16b, v6.16b
	b.ne	.LBB0_1
// %bb.2:
	orr	v0.16b, v6.16b, v22.16b
	orr	v1.16b, v21.16b, v9.16b
	orr	v2.16b, v20.16b, v24.16b
	orr	v3.16b, v23.16b, v31.16b
	ldp	d9, d8, [sp, #144]              // 16-byte Folded Reload
	ldp	d11, d10, [sp, #128]            // 16-byte Folded Reload
	orr	v0.16b, v0.16b, v1.16b
	ldp	d13, d12, [sp, #112]            // 16-byte Folded Reload
	orr	v1.16b, v2.16b, v3.16b
	ldp	d15, d14, [sp, #96]             // 16-byte Folded Reload
	orr	v0.16b, v0.16b, v1.16b
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x0, d0
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore b8
	.cfi_restore b9
	.cfi_restore b10
	.cfi_restore b11
	.cfi_restore b12
	.cfi_restore b13
	.cfi_restore b14
	.cfi_restore b15
	ret
.Lfunc_end0:
	.size	des_initial_permutation, .Lfunc_end0-des_initial_permutation
	.cfi_endproc
                                        // -- End function
	.type	IP,@object                      // @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
