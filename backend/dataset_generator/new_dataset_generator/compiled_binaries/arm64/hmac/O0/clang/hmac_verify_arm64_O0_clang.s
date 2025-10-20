	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     // -- Begin function hmac_verify
	.p2align	2
	.type	hmac_verify,@function
hmac_verify:                            // @hmac_verify
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	strb	wzr, [sp, #23]
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #8]
	ldrb	w9, [x9, x10]
	eor	w9, w8, w9
	ldrb	w8, [sp, #23]
	orr	w8, w8, w9
	strb	w8, [sp, #23]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldrb	w8, [sp, #23]
	subs	w8, w8, #0
	cset	w0, eq
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
