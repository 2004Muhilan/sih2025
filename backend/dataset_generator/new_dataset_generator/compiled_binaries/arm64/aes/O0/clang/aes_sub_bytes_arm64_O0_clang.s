	.text
	.file	"aes_sub_bytes.c"
	.globl	aes_sub_bytes                   // -- Begin function aes_sub_bytes
	.p2align	2
	.type	aes_sub_bytes,@function
aes_sub_bytes:                          // @aes_sub_bytes
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldrb	w8, [x8, x9]
	mov	w9, w8
	adrp	x8, sbox
	add	x8, x8, :lo12:sbox
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB1_1
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #16
	b.ge	.LBB1_4
	b	.LBB1_2
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldrb	w8, [x8, x9]
	mov	w9, w8
	adrp	x8, aes_inv_sub_bytes.inv_sbox
	add	x8, x8, :lo12:aes_inv_sub_bytes.inv_sbox
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB1_3
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB1_1
.LBB1_4:
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
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
	.addrsig_sym aes_inv_sub_bytes.inv_sbox
	.addrsig_sym sbox
