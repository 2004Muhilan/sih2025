	.text
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                // -- Begin function xor_counter_mode
	.p2align	2
	.type	xor_counter_mode,@function
xor_counter_mode:                       // @xor_counter_mode
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_3
// %bb.1:
	mov	x8, xzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x3
	ldrb	w10, [x0, x8]
	add	w11, w4, w8
	eor	w10, w11, w10
	msub	x9, x9, x3, x8
	ldrb	w9, [x2, x9]
	eor	w9, w9, w10
	strb	w9, [x0, x8]
	add	x8, x8, #1
	cmp	x1, x8
	b.ne	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
