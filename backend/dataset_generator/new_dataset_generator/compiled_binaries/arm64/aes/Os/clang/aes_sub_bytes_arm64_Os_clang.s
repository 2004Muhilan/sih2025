	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   // -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          // @aes_sub_bytes
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	adrp	x9, sbox
	add	x9, x9, :lo12:sbox
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0, x8]
	ldrb	w10, [x9, x10]
	strb	w10, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB0_1
// %bb.2:
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
	mov	x8, xzr
	adrp	x9, aes_inv_sub_bytes.inv_sbox
	add	x9, x9, :lo12:aes_inv_sub_bytes.inv_sbox
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0, x8]
	ldrb	w10, [x9, x10]
	strb	w10, [x0, x8]
	add	x8, x8, #1
	cmp	x8, #16
	b.ne	.LBB1_1
// %bb.2:
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
