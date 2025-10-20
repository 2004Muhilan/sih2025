	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                // -- Begin function des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
des_key_schedule:                       // @des_key_schedule
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w10, [sp, #12]
	mov	w9, #4                          // =0x4
	mul	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsr	x8, x8, x9
	and	x8, x8, #0xffffffffffff
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
