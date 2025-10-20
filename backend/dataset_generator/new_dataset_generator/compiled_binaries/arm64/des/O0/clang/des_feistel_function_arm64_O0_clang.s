	.text
	.file	"des_feistel_function.c"
	.globl	des_feistel                     // -- Begin function des_feistel
	.p2align	2
	.type	des_feistel,@function
des_feistel:                            // @des_feistel
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	xzr, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #48
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	ldr	w10, [sp, #4]
	mov	w9, #32                         // =0x20
	subs	w9, w9, w10
	lsr	w8, w8, w9
	and	w8, w8, #0x1
	ldr	w10, [sp, #4]
	mov	w9, #47                         // =0x2f
	subs	w9, w9, w10
	lsl	w8, w8, w9
	mov	w8, w8
	mov	w9, w8
	ldr	x8, [sp, #8]
	orr	x8, x8, x9
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	eor	x8, x8, x9
	str	x8, [sp, #8]
	str	wzr, [sp]
	ldr	w0, [sp]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_feistel, .Lfunc_end0-des_feistel
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
