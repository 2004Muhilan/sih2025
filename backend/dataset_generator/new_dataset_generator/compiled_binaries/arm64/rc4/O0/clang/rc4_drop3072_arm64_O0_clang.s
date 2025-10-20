	.text
	.file	"rc4_drop3072.c"
	.globl	rc4_drop3072_init               // -- Begin function rc4_drop3072_init
	.p2align	2
	.type	rc4_drop3072_init,@function
rc4_drop3072_init:                      // @rc4_drop3072_init
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #256
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #20]
	strb	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	strb	wzr, [sp, #19]
	str	wzr, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #256
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldrb	w8, [sp, #19]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #12]
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #12]
	ldr	x12, [sp, #24]
	udiv	x11, x10, x12
	mul	x11, x11, x12
	subs	x10, x10, x11
	ldrb	w9, [x9, x10]
	add	w8, w8, w9
	mov	w10, #256                       // =0x100
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	strb	w8, [sp, #19]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #11]
	ldr	x8, [sp, #40]
	ldrb	w9, [sp, #19]
                                        // kill: def $x9 killed $w9
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #12]
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #11]
	ldr	x9, [sp, #40]
	ldrb	w10, [sp, #19]
                                        // kill: def $x10 killed $w10
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_8:
	str	wzr, [sp, #4]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #3072
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #4]
	mov	w11, #256                       // =0x100
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	strb	w8, [sp, #3]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_9
.LBB0_12:
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	rc4_drop3072_init, .Lfunc_end0-rc4_drop3072_init
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
