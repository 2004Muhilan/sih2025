	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    // -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,@function
md5_compress:                           // @md5_compress
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
	add	w13, w10, w12, lsl #7
	and	w14, w13, w10
	bic	w16, w9, w13
	orr	w14, w14, w16
	add	w14, w14, w15
	add	w12, w12, w14
	add	w14, w10, w12, lsl #7
	ldp	w15, w18, [x1, #8]
	and	w16, w14, w13
	bic	w17, w10, w14
	orr	w16, w16, w17
	add	w15, w9, w15
	add	w18, w10, w18
	add	w15, w16, w15
	add	w12, w12, w15
	add	w15, w10, w12, lsl #7
	and	w16, w15, w14
	bic	w17, w13, w15
	orr	w16, w16, w17
	add	w16, w16, w18
	add	w12, w12, w16
	add	w16, w10, w12, lsl #7
	ldp	w17, w3, [x1, #16]
	and	w18, w16, w15
	bic	w2, w14, w16
	add	w13, w13, w17
	orr	w17, w18, w2
	add	w14, w14, w3
	add	w13, w17, w13
	add	w12, w12, w13
	add	w13, w10, w12, lsl #7
	and	w17, w13, w16
	bic	w18, w15, w13
	orr	w17, w17, w18
	add	w14, w17, w14
	add	w12, w12, w14
	add	w14, w10, w12, lsl #7
	ldp	w17, w3, [x1, #24]
	and	w18, w14, w13
	bic	w2, w16, w14
	add	w15, w15, w17
	orr	w17, w18, w2
	add	w16, w16, w3
	add	w15, w17, w15
	add	w12, w12, w15
	add	w15, w10, w12, lsl #7
	and	w17, w15, w14
	bic	w18, w13, w15
	orr	w17, w17, w18
	add	w16, w17, w16
	add	w12, w12, w16
	add	w16, w10, w12, lsl #7
	ldp	w17, w3, [x1, #32]
	and	w18, w16, w15
	bic	w2, w14, w16
	add	w13, w13, w17
	orr	w17, w18, w2
	add	w14, w14, w3
	add	w13, w17, w13
	add	w12, w12, w13
	add	w13, w10, w12, lsl #7
	and	w17, w13, w16
	bic	w18, w15, w13
	orr	w17, w17, w18
	add	w14, w17, w14
	add	w12, w12, w14
	add	w14, w10, w12, lsl #7
	ldp	w17, w3, [x1, #40]
	and	w18, w14, w13
	bic	w2, w16, w14
	add	w15, w15, w17
	orr	w17, w18, w2
	add	w16, w16, w3
	add	w15, w17, w15
	add	w12, w12, w15
	add	w15, w10, w12, lsl #7
	and	w17, w15, w14
	bic	w18, w13, w15
	orr	w17, w17, w18
	add	w16, w17, w16
	add	w12, w12, w16
	add	w16, w10, w12, lsl #7
	ldp	w17, w3, [x1, #48]
	and	w18, w16, w15
	bic	w2, w14, w16
	add	w13, w13, w17
	orr	w17, w18, w2
	add	w14, w14, w3
	add	w13, w17, w13
	add	w12, w12, w13
	add	w13, w10, w12, lsl #7
	and	w17, w13, w16
	bic	w18, w15, w13
	add	w11, w13, w11
	orr	w17, w17, w18
	add	w14, w17, w14
	add	w12, w12, w14
	add	w14, w10, w12, lsl #7
	ldp	w17, w1, [x1, #56]
	and	w18, w14, w13
	bic	w2, w16, w14
	add	w8, w14, w8
	add	w15, w15, w17
	orr	w17, w18, w2
	add	w16, w16, w1
	add	w15, w17, w15
	add	w12, w12, w15
	add	w15, w10, w12, lsl #7
	and	w17, w15, w14
	bic	w18, w13, w15
	add	w9, w15, w9
	orr	w17, w17, w18
	stp	w9, w8, [x0, #8]
	add	w16, w17, w16
	add	w12, w12, w16
	lsl	w12, w12, #7
	add	w10, w12, w10, lsl #1
	stp	w11, w10, [x0]
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
