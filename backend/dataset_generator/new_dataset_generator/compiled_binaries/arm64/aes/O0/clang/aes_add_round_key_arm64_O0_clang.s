	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               // -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
aes_add_round_key:                      // @aes_add_round_key
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w10, [x8, x9]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	aes_add_round_key, .Lfunc_end0-aes_add_round_key
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
