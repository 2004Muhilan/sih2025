	.text
	.file	"hmac_verify.c"
	.globl	hmac_verify                     // -- Begin function hmac_verify
	.p2align	2
	.type	hmac_verify,@function
hmac_verify:                            // @hmac_verify
	.cfi_startproc
// %bb.0:
	cbz	x2, .LBB0_4
// %bb.1:
	mov	w8, wzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x0], #1
	subs	x2, x2, #1
	ldrb	w10, [x1], #1
	eor	w9, w10, w9
	orr	w8, w9, w8
	b.ne	.LBB0_2
// %bb.3:
	cmp	w8, #0
	cset	w0, eq
	ret
.LBB0_4:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end0:
	.size	hmac_verify, .Lfunc_end0-hmac_verify
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
