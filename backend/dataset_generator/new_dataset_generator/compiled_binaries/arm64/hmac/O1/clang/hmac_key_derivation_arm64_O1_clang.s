	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 // -- Begin function hmac_key_derive
	.p2align	2
	.type	hmac_key_derive,@function
hmac_key_derive:                        // @hmac_key_derive
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x1
	udiv	x10, x8, x3
	msub	x9, x9, x1, x8
	ldrb	w9, [x0, x9]
	msub	x10, x10, x3, x8
	ldrb	w10, [x2, x10]
	eor	w9, w10, w9
	strb	w9, [x4, x8]
	add	x8, x8, #1
	cmp	x8, #32
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	hmac_key_derive, .Lfunc_end0-hmac_key_derive
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
