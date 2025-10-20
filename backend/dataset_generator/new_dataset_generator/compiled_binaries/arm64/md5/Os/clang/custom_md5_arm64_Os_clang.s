	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   // -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
md5_transform:                          // @md5_transform
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	ld4	{ v0.16b, v1.16b, v2.16b, v3.16b }, [x1]
	mov	x8, xzr
	mov	x14, sp
	ldp	w12, w11, [x0]
	ldp	w10, w9, [x0, #8]
	mov	w17, w12
	mov	w18, w11
	mov	w1, w9
	mov	w15, w10
	ushll2	v4.8h, v0.16b, #0
	ushll	v5.8h, v0.8b, #0
	ushll	v6.8h, v1.8b, #0
	ushll2	v7.8h, v1.16b, #0
	ushll2	v16.8h, v2.16b, #0
	ushll2	v17.8h, v3.16b, #0
	ushll	v22.8h, v2.8b, #0
	ushll	v0.8h, v3.8b, #0
	ushll2	v18.4s, v4.8h, #0
	ushll	v19.4s, v5.4h, #0
	ushll	v20.4s, v6.4h, #8
	ushll	v4.4s, v4.4h, #0
	ushll2	v21.4s, v7.8h, #8
	ushll	v7.4s, v7.4h, #8
	ushll2	v1.4s, v5.8h, #0
	ushll2	v2.4s, v6.8h, #8
	shll2	v5.4s, v16.8h, #16
	orr	v3.16b, v20.16b, v19.16b
	ushll2	v6.4s, v17.8h, #0
	shll	v16.4s, v16.4h, #16
	orr	v4.16b, v7.16b, v4.16b
	orr	v7.16b, v21.16b, v18.16b
	shll	v18.4s, v22.4h, #16
	ushll	v17.4s, v17.4h, #0
	shll2	v19.4s, v22.8h, #16
	orr	v1.16b, v2.16b, v1.16b
	ushll2	v2.4s, v0.8h, #0
	ushll	v0.4s, v0.4h, #0
	shl	v6.4s, v6.4s, #24
	orr	v5.16b, v7.16b, v5.16b
	orr	v4.16b, v4.16b, v16.16b
	orr	v3.16b, v3.16b, v18.16b
	shl	v7.4s, v17.4s, #24
	orr	v1.16b, v1.16b, v19.16b
	shl	v2.4s, v2.4s, #24
	shl	v0.4s, v0.4s, #24
	orr	v5.16b, v5.16b, v6.16b
	orr	v4.16b, v4.16b, v7.16b
	orr	v1.16b, v1.16b, v2.16b
	orr	v0.16b, v3.16b, v0.16b
	stp	q4, q5, [sp, #32]
	stp	q0, q1, [sp]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w13, w15
	mov	w15, w18
	mov	w16, w1
	and	w18, w18, w13
	bic	w1, w1, w15
	orr	w18, w18, w1
	ldr	w1, [x14, x8]
	add	x8, x8, #4
	add	w17, w18, w17
	cmp	x8, #64
	add	w17, w17, w1
	mov	w1, w13
	ror	w17, w17, #25
	add	w18, w17, w15
	mov	w17, w16
	b.ne	.LBB0_1
// %bb.2:
	add	w8, w16, w12
	add	w11, w18, w11
	add	w9, w13, w9
	stp	w8, w11, [x0]
	add	w8, w15, w10
	stp	w8, w9, [x0, #8]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	md5_transform, .Lfunc_end0-md5_transform
	.cfi_endproc
                                        // -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function md5_init
.LCPI1_0:
	.word	1732584193                      // 0x67452301
	.word	4023233417                      // 0xefcdab89
	.word	2562383102                      // 0x98badcfe
	.word	271733878                       // 0x10325476
	.text
	.globl	md5_init
	.p2align	2
	.type	md5_init,@function
md5_init:                               // @md5_init
	.cfi_startproc
// %bb.0:
	adrp	x8, .LCPI1_0
	ldr	q0, [x8, :lo12:.LCPI1_0]
	str	q0, [x0]
	ret
.Lfunc_end1:
	.size	md5_init, .Lfunc_end1-md5_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
