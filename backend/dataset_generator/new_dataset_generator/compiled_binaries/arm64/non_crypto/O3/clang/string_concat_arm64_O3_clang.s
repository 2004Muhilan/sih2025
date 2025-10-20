	.text
	.file	"string_concat.c"
	.globl	string_concat                   // -- Begin function string_concat
	.p2align	2
	.type	string_concat,@function
string_concat:                          // @string_concat
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	cbz	x2, .LBB0_4
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x0, x8]
	cbz	w9, .LBB0_4
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	add	x8, x8, #1
	cmp	x2, x8
	b.ne	.LBB0_1
// %bb.3:
	mov	x8, x2
.LBB0_4:
	sub	x9, x2, #1
	cmp	x8, x9
	b.hs	.LBB0_7
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x1], #1
	cbz	w10, .LBB0_7
// %bb.6:                               //   in Loop: Header=BB0_5 Depth=1
	strb	w10, [x0, x8]
	add	x8, x8, #1
	cmp	x9, x8
	b.ne	.LBB0_5
.LBB0_7:
	strb	wzr, [x0, x8]
	ret
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
