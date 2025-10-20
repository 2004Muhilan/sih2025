	.text
	.file	"rc4_drop3072.c"
	.globl	rc4_drop3072_init               // -- Begin function rc4_drop3072_init
	.p2align	2
	.type	rc4_drop3072_init,@function
rc4_drop3072_init:                      // @rc4_drop3072_init
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	strb	w8, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	.LBB0_1
// %bb.2:
	mov	x8, xzr
	mov	w9, wzr
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x10, x8, x2
	ldrb	w11, [x0, x8]
	add	w9, w11, w9
	msub	x10, x10, x2, x8
	ldrb	w10, [x1, x10]
	add	w9, w9, w10
	and	x10, x9, #0xff
	ldrb	w12, [x0, x10]
	strb	w12, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #256
	strb	w11, [x0, x10]
	b.ne	.LBB0_3
// %bb.4:
	ret
.Lfunc_end0:
	.size	rc4_drop3072_init, .Lfunc_end0-rc4_drop3072_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
