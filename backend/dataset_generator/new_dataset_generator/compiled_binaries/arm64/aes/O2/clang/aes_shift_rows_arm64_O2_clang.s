	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  // -- Begin function aes_shift_rows
	.p2align	2
	.type	aes_shift_rows,@function
aes_shift_rows:                         // @aes_shift_rows
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x0, #5]
	ldrb	w9, [x0, #9]
	ldrb	w10, [x0, #1]
	strb	w8, [x0, #1]
	ldrb	w8, [x0, #13]
	strb	w9, [x0, #5]
	ldrb	w9, [x0, #10]
	strb	w8, [x0, #9]
	ldrb	w8, [x0, #2]
	strb	w9, [x0, #2]
	ldrb	w9, [x0, #14]
	strb	w8, [x0, #10]
	ldrb	w8, [x0, #6]
	strb	w9, [x0, #6]
	ldrb	w9, [x0, #11]
	strb	w10, [x0, #13]
	ldrb	w10, [x0, #15]
	strb	w8, [x0, #14]
	ldrb	w8, [x0, #7]
	strb	w9, [x0, #15]
	ldrb	w9, [x0, #3]
	strb	w8, [x0, #11]
	strb	w9, [x0, #7]
	strb	w10, [x0, #3]
	ret
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
