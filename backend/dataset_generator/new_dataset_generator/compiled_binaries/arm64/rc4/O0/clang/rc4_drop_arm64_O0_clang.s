	.text
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   // -- Begin function rc4_drop_init
	.p2align	2
	.type	rc4_drop_init,@function
rc4_drop_init:                          // @rc4_drop_init
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #256
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #28]
	strb	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_4:
	strb	wzr, [sp, #27]
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #256
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #27]
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #20]
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	ldr	x9, [sp, #48]
	ldrsw	x10, [sp, #20]
	ldr	x12, [sp, #40]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	mov	w10, #256                       // =0x100
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	strb	w8, [sp, #27]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #19]
	ldr	x8, [sp, #56]
	ldrb	w9, [sp, #27]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #20]
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #19]
	ldr	x9, [sp, #56]
	ldrb	w10, [sp, #27]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_8:
	ldr	x8, [sp, #56]
	strb	wzr, [x8, #256]
	ldr	x8, [sp, #56]
	strb	wzr, [x8, #257]
	str	xzr, [sp, #8]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #56]
	ldrb	w8, [x8, #256]
	add	w8, w8, #1
	mov	w10, #256                       // =0x100
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldr	x9, [sp, #56]
	strb	w8, [x9, #256]
	ldr	x8, [sp, #56]
	ldrb	w8, [x8, #257]
	ldr	x9, [sp, #56]
	ldr	x11, [sp, #56]
	ldrb	w11, [x11, #256]
                                        // kill: def $x11 killed $w11
	ldrb	w9, [x9, x11]
	add	w8, w8, w9
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldr	x9, [sp, #56]
	strb	w8, [x9, #257]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #56]
	ldrb	w9, [x9, #256]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #56]
	ldrb	w9, [x9, #257]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #56]
	ldr	x10, [sp, #56]
	ldrb	w10, [x10, #256]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #56]
	ldr	x10, [sp, #56]
	ldrb	w10, [x10, #257]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_12:
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rc4_drop_init, .Lfunc_end0-rc4_drop_init
	.cfi_endproc
                                        // -- End function
	.globl	rc4_drop_crypt                  // -- Begin function rc4_drop_crypt
	.p2align	2
	.type	rc4_drop_crypt,@function
rc4_drop_crypt:                         // @rc4_drop_crypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	b	.LBB1_1
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.hs	.LBB1_4
	b	.LBB1_2
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #40]
	ldrb	w8, [x8, #256]
	add	w8, w8, #1
	mov	w11, #256                       // =0x100
	sdiv	w9, w8, w11
	mul	w9, w9, w11
	subs	w8, w8, w9
	ldr	x9, [sp, #40]
	strb	w8, [x9, #256]
	ldr	x8, [sp, #40]
	ldrb	w8, [x8, #257]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #40]
	ldrb	w10, [x10, #256]
                                        // kill: def $x10 killed $w10
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	sdiv	w9, w8, w11
	mul	w9, w9, w11
	subs	w8, w8, w9
	ldr	x9, [sp, #40]
	strb	w8, [x9, #257]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #40]
	ldrb	w9, [x9, #256]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #40]
	ldrb	w9, [x9, #257]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #40]
	ldrb	w10, [x10, #256]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #40]
	ldrb	w10, [x10, #257]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #40]
	ldrb	w10, [x10, #256]
                                        // kill: def $x10 killed $w10
	ldrb	w9, [x9, x10]
	ldr	x10, [sp, #40]
	ldr	x12, [sp, #40]
	ldrb	w12, [x12, #257]
                                        // kill: def $x12 killed $w12
	ldrb	w10, [x10, x12]
	add	w9, w9, w10
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	strb	w8, [sp, #14]
	ldrb	w10, [sp, #14]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #16]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB1_3
.LBB1_3:                                //   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB1_1
.LBB1_4:
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	rc4_drop_crypt, .Lfunc_end1-rc4_drop_crypt
	.cfi_endproc
                                        // -- End function
	.globl	rc4_drop_encrypt                // -- Begin function rc4_drop_encrypt
	.p2align	2
	.type	rc4_drop_encrypt,@function
rc4_drop_encrypt:                       // @rc4_drop_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	str	x28, [sp, #336]                 // 8-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	x8, x29, #40
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #32]
	str	x1, [x8, #24]
	str	x2, [x8, #16]
	str	x3, [x8, #8]
	str	x4, [x8]
	ldr	x1, [x8, #32]
	ldr	x2, [x8, #24]
	add	x0, sp, #22
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	x3, #768                        // =0x300
	bl	rc4_drop_init
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #16]
	ldr	x2, [x8, #8]
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	bl	rc4_drop_crypt
	.cfi_def_cfa wsp, 352
	ldr	x28, [sp, #336]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	add	sp, sp, #352
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	rc4_drop_encrypt, .Lfunc_end2-rc4_drop_encrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rc4_drop_init
	.addrsig_sym rc4_drop_crypt
