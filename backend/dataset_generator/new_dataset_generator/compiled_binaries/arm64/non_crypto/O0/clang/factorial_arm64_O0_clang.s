	.text
	.file	"factorial.c"
	.globl	factorial                       // -- Begin function factorial
	.p2align	2
	.type	factorial,@function
factorial:                              // @factorial
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	x8, #1                          // =0x1
	str	x8, [sp, #24]
	b	.LBB0_8
.LBB0_3:
	mov	x8, #1                          // =0x1
	str	x8, [sp, #8]
	mov	w8, #2                          // =0x2
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.hi	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #4]
	mov	w9, w8
	ldr	x8, [sp, #8]
	mul	x8, x8, x9
	str	x8, [sp, #8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_7:
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
