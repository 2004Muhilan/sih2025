	.text
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     // -- Begin function hmac_sha256
	.p2align	2
	.type	hmac_sha256,@function
hmac_sha256:                            // @hmac_sha256
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	mov	x8, xzr
	mov	w9, #54                         // =0x36
	add	x10, sp, #64
	mov	w11, #92                        // =0x5c
	mov	x12, sp
	b	.LBB0_2
.LBB0_1:                                //   in Loop: Header=BB0_2 Depth=1
	ldrb	w13, [x0, x8]
	eor	w14, w13, w9
	strb	w14, [x10, x8]
	eor	w13, w13, w11
	strb	w13, [x12, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.eq	.LBB0_4
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	cmp	x8, x1
	b.lo	.LBB0_1
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	mov	w13, wzr
	mov	w14, #54                        // =0x36
	strb	w14, [x10, x8]
	eor	w13, wzr, w11
	strb	w13, [x12, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	.LBB0_2
.LBB0_4:
	ldp	q0, q3, [sp]
	ldp	q1, q2, [sp, #64]
	eor	v0.16b, v0.16b, v1.16b
	eor	v1.16b, v3.16b, v2.16b
	stp	q0, q1, [x4]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	hmac_sha256, .Lfunc_end0-hmac_sha256
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
