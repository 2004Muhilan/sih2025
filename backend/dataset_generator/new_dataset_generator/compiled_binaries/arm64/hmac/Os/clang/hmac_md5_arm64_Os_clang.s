	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        // -- Begin function hmac_md5
	.p2align	2
	.type	hmac_md5,@function
hmac_md5:                               // @hmac_md5
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	mov	x8, xzr
	mov	w9, #54                         // =0x36
	add	x10, sp, #64
	mov	w11, #92                        // =0x5c
	mov	x12, sp
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	cmp	x8, x1
	b.hs	.LBB0_3
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	ldrb	w13, [x0, x8]
	eor	w14, w13, w9
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w13, wzr
	mov	w14, #54                        // =0x36
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	strb	w14, [x10, x8]
	eor	w13, w13, w11
	strb	w13, [x12, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	.LBB0_1
// %bb.5:
	ldr	q0, [sp, #64]
	ldr	q1, [sp]
	eor	v0.16b, v1.16b, v0.16b
	str	q0, [x4]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	hmac_md5, .Lfunc_end0-hmac_md5
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
