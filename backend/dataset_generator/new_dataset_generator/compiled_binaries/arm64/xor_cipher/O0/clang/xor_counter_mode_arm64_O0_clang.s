	.text
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                // -- Begin function xor_counter_mode
	.p2align	2
	.type	xor_counter_mode,@function
xor_counter_mode:                       // @xor_counter_mode
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	xzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #16]
	ldr	x11, [sp, #32]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #16]
	add	x9, x9, x10
	and	x9, x9, #0xff
                                        // kill: def $w9 killed $w9 killed $x9
	and	w9, w9, #0xff
	eor	w8, w8, w9
	strb	w8, [sp, #15]
	ldrb	w10, [sp, #15]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #16]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
