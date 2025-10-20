	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   // -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
md5_transform:                          // @md5_transform
	.cfi_startproc
// %bb.0:
	ldp	w10, w9, [x0, #4]
	ldr	w8, [x0, #12]
	ldr	w11, [x0]
	ldp	w12, w15, [x1]
	and	w13, w10, w9
	bic	w14, w8, w10
	orr	w13, w13, w14
	add	w12, w11, w12
	add	w15, w8, w15
	add	w12, w13, w12
	ror	w12, w12, #25
	add	w12, w12, w10
	and	w13, w12, w10
	bic	w14, w9, w12
	orr	w13, w13, w14
	add	w13, w13, w15
	ror	w13, w13, #25
	ldp	w14, w17, [x1, #8]
	add	w13, w13, w12
	and	w15, w13, w12
	bic	w16, w10, w13
	add	w14, w9, w14
	orr	w15, w15, w16
	add	w17, w10, w17
	add	w14, w15, w14
	ror	w14, w14, #25
	add	w14, w14, w13
	and	w15, w14, w13
	bic	w16, w12, w14
	orr	w15, w15, w16
	add	w15, w15, w17
	ror	w15, w15, #25
	ldp	w16, w2, [x1, #16]
	add	w15, w15, w14
	and	w17, w15, w14
	bic	w18, w13, w15
	add	w12, w12, w16
	orr	w16, w17, w18
	add	w13, w13, w2
	add	w12, w16, w12
	ror	w12, w12, #25
	add	w12, w12, w15
	and	w16, w12, w15
	bic	w17, w14, w12
	orr	w16, w16, w17
	add	w13, w16, w13
	ror	w13, w13, #25
	ldp	w16, w2, [x1, #24]
	add	w13, w13, w12
	and	w17, w13, w12
	bic	w18, w15, w13
	add	w14, w14, w16
	orr	w16, w17, w18
	add	w15, w15, w2
	add	w14, w16, w14
	ror	w14, w14, #25
	add	w14, w14, w13
	and	w16, w14, w13
	bic	w17, w12, w14
	orr	w16, w16, w17
	add	w15, w16, w15
	ror	w15, w15, #25
	ldp	w16, w2, [x1, #32]
	add	w15, w15, w14
	and	w17, w15, w14
	bic	w18, w13, w15
	add	w12, w12, w16
	orr	w16, w17, w18
	add	w13, w13, w2
	add	w12, w16, w12
	ror	w12, w12, #25
	add	w12, w12, w15
	and	w16, w12, w15
	bic	w17, w14, w12
	orr	w16, w16, w17
	add	w13, w16, w13
	ror	w13, w13, #25
	ldp	w16, w2, [x1, #40]
	add	w13, w13, w12
	and	w17, w13, w12
	bic	w18, w15, w13
	add	w14, w14, w16
	orr	w16, w17, w18
	add	w15, w15, w2
	add	w14, w16, w14
	ror	w14, w14, #25
	add	w14, w14, w13
	and	w16, w14, w13
	bic	w17, w12, w14
	orr	w16, w16, w17
	add	w15, w16, w15
	ror	w15, w15, #25
	ldp	w16, w2, [x1, #48]
	add	w15, w15, w14
	and	w17, w15, w14
	bic	w18, w13, w15
	add	w12, w12, w16
	orr	w16, w17, w18
	add	w13, w13, w2
	add	w12, w16, w12
	ror	w12, w12, #25
	add	w12, w12, w15
	and	w16, w12, w15
	bic	w17, w14, w12
	add	w11, w12, w11
	orr	w16, w16, w17
	add	w13, w16, w13
	ror	w13, w13, #25
	ldp	w16, w1, [x1, #56]
	add	w13, w13, w12
	and	w17, w13, w12
	bic	w18, w15, w13
	add	w8, w13, w8
	add	w14, w14, w16
	orr	w16, w17, w18
	add	w15, w15, w1
	add	w14, w16, w14
	ror	w14, w14, #25
	add	w14, w14, w13
	and	w16, w14, w13
	bic	w17, w12, w14
	add	w10, w14, w10
	orr	w16, w16, w17
	add	w9, w14, w9
	add	w15, w16, w15
	stp	w9, w8, [x0, #8]
	ror	w15, w15, #25
	add	w10, w15, w10
	stp	w11, w10, [x0]
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
