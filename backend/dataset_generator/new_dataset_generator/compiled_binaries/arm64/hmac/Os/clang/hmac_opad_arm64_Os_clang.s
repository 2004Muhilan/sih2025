	.text
	.file	"hmac_opad.c"
	.globl	hmac_create_opad                // -- Begin function hmac_create_opad
	.p2align	2
	.type	hmac_create_opad,@function
hmac_create_opad:                       // @hmac_create_opad
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	mov	w9, #92                         // =0x5c
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	cmp	x8, x1
	b.hs	.LBB0_3
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	ldrb	w10, [x0, x8]
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w10, wzr
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	eor	w10, w10, w9
	strb	w10, [x2, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	.LBB0_1
// %bb.5:
	ret
.Lfunc_end0:
	.size	hmac_create_opad, .Lfunc_end0-hmac_create_opad
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
