	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   // -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          // @aes_sub_bytes
	.cfi_startproc
// %bb.0:
	ldrb	w9, [x0]
	adrp	x8, sbox
	add	x8, x8, :lo12:sbox
	ldrb	w10, [x0, #1]
	ldrb	w9, [x8, x9]
	strb	w9, [x0]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #2]
	strb	w9, [x0, #1]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #3]
	strb	w9, [x0, #2]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #4]
	strb	w9, [x0, #3]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #5]
	strb	w9, [x0, #4]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #6]
	strb	w9, [x0, #5]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #7]
	strb	w9, [x0, #6]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #8]
	strb	w9, [x0, #7]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #9]
	strb	w9, [x0, #8]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #10]
	strb	w9, [x0, #9]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #11]
	strb	w9, [x0, #10]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #12]
	strb	w9, [x0, #11]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #13]
	strb	w9, [x0, #12]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #14]
	strb	w9, [x0, #13]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #15]
	strb	w9, [x0, #14]
	ldrb	w8, [x8, x10]
	strb	w8, [x0, #15]
	ret
.Lfunc_end0:
	.size	aes_sub_bytes, .Lfunc_end0-aes_sub_bytes
	.cfi_endproc
                                        // -- End function
	.globl	aes_inv_sub_bytes               // -- Begin function aes_inv_sub_bytes
	.p2align	2
	.type	aes_inv_sub_bytes,@function
aes_inv_sub_bytes:                      // @aes_inv_sub_bytes
	.cfi_startproc
// %bb.0:
	ldrb	w9, [x0]
	adrp	x8, aes_inv_sub_bytes.inv_sbox
	add	x8, x8, :lo12:aes_inv_sub_bytes.inv_sbox
	ldrb	w10, [x0, #1]
	ldrb	w9, [x8, x9]
	strb	w9, [x0]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #2]
	strb	w9, [x0, #1]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #3]
	strb	w9, [x0, #2]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #4]
	strb	w9, [x0, #3]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #5]
	strb	w9, [x0, #4]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #6]
	strb	w9, [x0, #5]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #7]
	strb	w9, [x0, #6]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #8]
	strb	w9, [x0, #7]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #9]
	strb	w9, [x0, #8]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #10]
	strb	w9, [x0, #9]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #11]
	strb	w9, [x0, #10]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #12]
	strb	w9, [x0, #11]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #13]
	strb	w9, [x0, #12]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #14]
	strb	w9, [x0, #13]
	ldrb	w9, [x8, x10]
	ldrb	w10, [x0, #15]
	strb	w9, [x0, #14]
	ldrb	w8, [x8, x10]
	strb	w8, [x0, #15]
	ret
.Lfunc_end1:
	.size	aes_inv_sub_bytes, .Lfunc_end1-aes_inv_sub_bytes
	.cfi_endproc
                                        // -- End function
	.type	aes_inv_sub_bytes.inv_sbox,@object // @aes_inv_sub_bytes.inv_sbox
	.section	.rodata,"a",@progbits
aes_inv_sub_bytes.inv_sbox:
	.ascii	"R\tj\32506\2458"
	.zero	248
	.size	aes_inv_sub_bytes.inv_sbox, 256

	.type	sbox,@object                    // @sbox
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	240
	.size	sbox, 256

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
