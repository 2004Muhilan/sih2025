	.text
	.file	"string_reverse.c"
	.globl	string_reverse                  // -- Begin function string_reverse
	.p2align	2
	.type	string_reverse,@function
string_reverse:                         // @string_reverse
	.cfi_startproc
// %bb.0:
	subs	x8, x1, #1
	b.eq	.LBB0_3
// %bb.1:
	mov	x9, xzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0, x8]
	ldrb	w11, [x0, x9]
	strb	w10, [x0, x9]
	add	x9, x9, #1
	strb	w11, [x0, x8]
	sub	x8, x8, #1
	cmp	x9, x8
	b.lo	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	string_reverse, .Lfunc_end0-string_reverse
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
