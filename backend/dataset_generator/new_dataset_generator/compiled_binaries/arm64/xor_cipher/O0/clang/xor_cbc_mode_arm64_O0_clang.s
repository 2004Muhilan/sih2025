	.text
	.file	"xor_cbc_mode.c"
	.globl	xor_cbc_mode                    // -- Begin function xor_cbc_mode
	.p2align	2
	.type	xor_cbc_mode,@function
xor_cbc_mode:                           // @xor_cbc_mode
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	strb	w4, [sp, #15]
	ldrb	w8, [sp, #15]
	strb	w8, [sp, #14]
	str	xzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #14]
	ldr	x9, [sp, #24]
	ldr	x10, [sp]
	ldr	x12, [sp, #16]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	ldrb	w9, [x9, x10]
	eor	w10, w8, w9
	ldr	x8, [sp, #40]
	ldr	x9, [sp]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	ldr	x8, [sp, #40]
	ldr	x9, [sp]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #14]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	xor_cbc_mode, .Lfunc_end0-xor_cbc_mode
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
