	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 // -- Begin function hmac_key_derive
	.p2align	2
	.type	hmac_key_derive,@function
hmac_key_derive:                        // @hmac_key_derive
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	str	xzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	subs	x8, x8, #32
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp]
	ldr	x11, [sp, #32]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	x10, [sp]
	ldr	x12, [sp, #16]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	ldrb	w9, [x9, x10]
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	x10, [sp]
	strb	w8, [x9, x10]
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
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
