	.text
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   // -- Begin function xor_multi_key
	.p2align	2
	.type	xor_multi_key,@function
xor_multi_key:                          // @xor_multi_key
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_3
// %bb.1:
	mov	x8, xzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x4
	ldrb	w11, [x0, x8]
	msub	x9, x9, x4, x8
	ldrb	w10, [x2, x9]
	eor	w10, w11, w10
	strb	w10, [x0, x8]
	ldrb	w9, [x3, x9]
	eor	w9, w9, w10
	strb	w9, [x0, x8]
	add	x8, x8, #1
	cmp	x1, x8
	b.ne	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_multi_key, .Lfunc_end0-xor_multi_key
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
