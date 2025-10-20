	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           // -- Begin function sha1_message_schedule
	.p2align	2
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  // @sha1_message_schedule
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
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #16                         // =0x10
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #80
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	subs	w9, w9, #3
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #8
	ldr	w9, [x9, w10, sxtw #2]
	eor	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #14
	ldr	w9, [x9, w10, sxtw #2]
	eor	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #16
	ldr	w9, [x9, w10, sxtw #2]
	eor	w9, w8, w9
	ldr	x8, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #3
	ldr	w8, [x8, w10, sxtw #2]
	ldr	x10, [sp, #16]
	ldr	w11, [sp, #8]
	subs	w11, w11, #8
	ldr	w10, [x10, w11, sxtw #2]
	eor	w8, w8, w10
	ldr	x10, [sp, #16]
	ldr	w11, [sp, #8]
	subs	w11, w11, #14
	ldr	w10, [x10, w11, sxtw #2]
	eor	w8, w8, w10
	ldr	x10, [sp, #16]
	ldr	w11, [sp, #8]
	subs	w11, w11, #16
	ldr	w10, [x10, w11, sxtw #2]
	eor	w8, w8, w10
	lsr	w8, w8, #31
	orr	w8, w8, w9, lsl #1
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
