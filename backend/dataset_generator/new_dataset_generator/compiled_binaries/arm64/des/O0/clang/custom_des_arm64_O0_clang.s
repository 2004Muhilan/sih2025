	.text
	.file	"custom_des.c"
	.globl	des_encrypt                     // -- Begin function des_encrypt
	.p2align	2
	.type	des_encrypt,@function
des_encrypt:                            // @des_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	xzr, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #8
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #28]
	ldrb	w8, [x8, x9]
                                        // kill: def $x8 killed $w8
	ldr	w10, [sp, #28]
	mov	w9, #8                          // =0x8
	mul	w10, w9, w10
	mov	w9, #56                         // =0x38
	subs	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsl	x9, x8, x9
	ldr	x8, [sp, #32]
	orr	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #16
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #32]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	ldr	x8, [sp, #32]
	lsr	x8, x8, #32
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #48]
	ldr	w10, [sp, #24]
	mov	w12, #8                         // =0x8
	sdiv	w11, w10, w12
	mul	w11, w11, w12
	subs	w10, w10, w11
	ldrb	w9, [x9, w10, sxtw]
	eor	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #16]
	eor	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	mov	w9, w8
	ldr	w8, [sp, #16]
                                        // kill: def $x8 killed $w8
	orr	x8, x8, x9, lsl #32
	str	x8, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_8:
	str	wzr, [sp, #8]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #32]
	ldr	w10, [sp, #8]
	mov	w9, #8                          // =0x8
	mul	w10, w9, w10
	mov	w9, #56                         // =0x38
	subs	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsr	x8, x8, x9
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #8]
                                        // kill: def $w8 killed $w8 killed $x8
	strb	w8, [x9, x10]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_9
.LBB0_12:
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
