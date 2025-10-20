	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    // -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,@function
md5_compress:                           // @md5_compress
	.cfi_startproc
// %bb.0:
	ldp	w10, w11, [x0]
	ldp	w9, w8, [x0, #8]
	mov	x12, xzr
	mov	w16, w10
	mov	w17, w11
	mov	w18, w8
	mov	w14, w9
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w13, w14
	mov	w14, w17
	mov	w15, w18
	and	w17, w17, w13
	bic	w18, w18, w14
	orr	w17, w17, w18
	ldr	w18, [x1, x12]
	add	x12, x12, #4
	add	w16, w17, w16
	cmp	x12, #64
	add	w16, w16, w18
	mov	w18, w13
	add	w17, w14, w16, lsl #7
	mov	w16, w15
	b.ne	.LBB0_1
// %bb.2:
	add	w10, w15, w10
	add	w11, w17, w11
	add	w9, w14, w9
	add	w8, w13, w8
	stp	w10, w11, [x0]
	stp	w9, w8, [x0, #8]
	ret
.Lfunc_end0:
	.size	md5_compress, .Lfunc_end0-md5_compress
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
