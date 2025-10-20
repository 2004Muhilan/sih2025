	.text
	.file	"array_max.c"
	.globl	array_max                       // -- Begin function array_max
	.p2align	2
	.type	array_max,@function
array_max:                              // @array_max
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #44]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	mov	x8, #1                          // =0x1
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_8:
	ldr	w8, [sp, #20]
	str	w8, [sp, #44]
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	array_max, .Lfunc_end0-array_max
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
