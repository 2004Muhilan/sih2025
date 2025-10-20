	.text
	.file	"hmac_ipad.c"
	.globl	hmac_create_ipad                // -- Begin function hmac_create_ipad
	.p2align	2
	.type	hmac_create_ipad,@function
hmac_create_ipad:                       // @hmac_create_ipad
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
	mov	w9, #54                         // =0x36
	b	.LBB0_2
.LBB0_1:                                //   in Loop: Header=BB0_2 Depth=1
	ldrb	w10, [x0, x8]
	eor	w10, w10, w9
	strb	w10, [x2, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.eq	.LBB0_4
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	cmp	x8, x1
	b.lo	.LBB0_1
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	mov	w10, wzr
	eor	w10, wzr, w9
	strb	w10, [x2, x8]
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	.LBB0_2
.LBB0_4:
	ret
.Lfunc_end0:
	.size	hmac_create_ipad, .Lfunc_end0-hmac_create_ipad
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
