	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         // -- Begin function sha256_message_schedule
	.p2align	2
	.type	sha256_message_schedule,@function
sha256_message_schedule:                // @sha256_message_schedule
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
	subs	w8, w8, #64
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	subs	w9, w9, #15
	ldr	w9, [x8, w9, sxtw #2]
	ldr	x8, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #15
	ldr	w8, [x8, w10, sxtw #2]
	lsl	w8, w8, #25
	orr	w8, w8, w9, lsr #7
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #15
	ldr	w10, [x9, w10, sxtw #2]
	ldr	x9, [sp, #16]
	ldr	w11, [sp, #8]
	subs	w11, w11, #15
	ldr	w9, [x9, w11, sxtw #2]
	lsl	w9, w9, #14
	orr	w9, w9, w10, lsr #18
	eor	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #15
	ldr	w9, [x9, w10, sxtw #2]
	eor	w8, w8, w9, lsr #3
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	subs	w9, w9, #2
	ldr	w9, [x8, w9, sxtw #2]
	ldr	x8, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #2
	ldr	w8, [x8, w10, sxtw #2]
	lsl	w8, w8, #15
	orr	w8, w8, w9, lsr #17
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #2
	ldr	w10, [x9, w10, sxtw #2]
	ldr	x9, [sp, #16]
	ldr	w11, [sp, #8]
	subs	w11, w11, #2
	ldr	w9, [x9, w11, sxtw #2]
	lsl	w9, w9, #13
	orr	w9, w9, w10, lsr #19
	eor	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #2
	ldr	w9, [x9, w10, sxtw #2]
	eor	w8, w8, w9, lsr #10
	str	w8, [sp]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	subs	w9, w9, #16
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #4]
	add	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #8]
	subs	w10, w10, #7
	ldr	w9, [x9, w10, sxtw #2]
	add	w8, w8, w9
	ldr	w9, [sp]
	add	w8, w8, w9
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
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
