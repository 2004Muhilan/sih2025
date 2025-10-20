	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             // -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,@function
prng_mersenne_twist:                    // @prng_mersenne_twist
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #624
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	and	w8, w8, #0x80000000
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	add	w10, w10, #1
	mov	w11, #624                       // =0x270
	sdiv	w12, w10, w11
	mul	w12, w12, w11
	subs	w10, w10, w12
	ldr	w9, [x9, w10, sxtw #2]
	and	w9, w9, #0x7fffffff
	add	w8, w8, w9
	str	w8, [sp]
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #4]
	add	w9, w9, #397
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp]
	eor	w8, w8, w9, lsr #1
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp]
	tbz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	mov	w10, #45279                     // =0xb0df
	movk	w10, #39176, lsl #16
	eor	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #2496]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	prng_mersenne_twist, .Lfunc_end0-prng_mersenne_twist
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
