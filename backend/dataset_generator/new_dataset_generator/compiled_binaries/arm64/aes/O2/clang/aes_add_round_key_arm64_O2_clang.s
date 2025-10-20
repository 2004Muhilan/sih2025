	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               // -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
aes_add_round_key:                      // @aes_add_round_key
	.cfi_startproc
// %bb.0:
	ldrb	w8, [x1]
	ldrb	w9, [x0]
	eor	w8, w9, w8
	ldrb	w9, [x0, #1]
	strb	w8, [x0]
	ldrb	w8, [x1, #1]
	eor	w8, w9, w8
	ldrb	w9, [x0, #2]
	strb	w8, [x0, #1]
	ldrb	w8, [x1, #2]
	eor	w8, w9, w8
	ldrb	w9, [x0, #3]
	strb	w8, [x0, #2]
	ldrb	w8, [x1, #3]
	eor	w8, w9, w8
	ldrb	w9, [x0, #4]
	strb	w8, [x0, #3]
	ldrb	w8, [x1, #4]
	eor	w8, w9, w8
	ldrb	w9, [x0, #5]
	strb	w8, [x0, #4]
	ldrb	w8, [x1, #5]
	eor	w8, w9, w8
	ldrb	w9, [x0, #6]
	strb	w8, [x0, #5]
	ldrb	w8, [x1, #6]
	eor	w8, w9, w8
	ldrb	w9, [x0, #7]
	strb	w8, [x0, #6]
	ldrb	w8, [x1, #7]
	eor	w8, w9, w8
	ldrb	w9, [x0, #8]
	strb	w8, [x0, #7]
	ldrb	w8, [x1, #8]
	eor	w8, w9, w8
	ldrb	w9, [x0, #9]
	strb	w8, [x0, #8]
	ldrb	w8, [x1, #9]
	eor	w8, w9, w8
	ldrb	w9, [x0, #10]
	strb	w8, [x0, #9]
	ldrb	w8, [x1, #10]
	eor	w8, w9, w8
	ldrb	w9, [x0, #11]
	strb	w8, [x0, #10]
	ldrb	w8, [x1, #11]
	eor	w8, w9, w8
	ldrb	w9, [x0, #12]
	strb	w8, [x0, #11]
	ldrb	w8, [x1, #12]
	eor	w8, w9, w8
	ldrb	w9, [x0, #13]
	strb	w8, [x0, #12]
	ldrb	w8, [x1, #13]
	eor	w8, w9, w8
	ldrb	w9, [x0, #14]
	strb	w8, [x0, #13]
	ldrb	w8, [x1, #14]
	eor	w8, w9, w8
	ldrb	w9, [x0, #15]
	strb	w8, [x0, #14]
	ldrb	w8, [x1, #15]
	eor	w8, w9, w8
	strb	w8, [x0, #15]
	ret
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
