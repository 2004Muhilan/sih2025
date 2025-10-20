	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           // -- Begin function sha1_message_schedule
	.p2align	2
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  // @sha1_message_schedule
	.cfi_startproc
// %bb.0:
	ldr	w9, [x0]
	mov	x8, xzr
	str	w9, [x1]
	ldr	w9, [x0, #4]
	str	w9, [x1, #4]
	ldr	w9, [x0, #8]
	str	w9, [x1, #8]
	ldr	w9, [x0, #12]
	str	w9, [x1, #12]
	ldr	w9, [x0, #16]
	str	w9, [x1, #16]
	ldr	w9, [x0, #20]
	str	w9, [x1, #20]
	ldr	w9, [x0, #24]
	str	w9, [x1, #24]
	ldr	w9, [x0, #28]
	str	w9, [x1, #28]
	ldr	w9, [x0, #32]
	str	w9, [x1, #32]!
	ldr	w9, [x0, #36]
	str	w9, [x1, #4]
	ldr	w9, [x0, #40]
	str	w9, [x1, #8]
	ldr	w9, [x0, #44]
	str	w9, [x1, #12]
	ldr	w9, [x0, #48]
	str	w9, [x1, #16]
	ldr	w9, [x0, #52]
	str	w9, [x1, #20]
	ldr	w9, [x0, #56]
	str	w9, [x1, #24]
	ldr	w9, [x0, #60]
	str	w9, [x1, #28]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x9, x1, x8
	add	x8, x8, #4
	ldr	w10, [x9, #20]
	ldr	w11, [x9]
	ldur	w12, [x9, #-24]
	ldur	w13, [x9, #-32]
	cmp	x8, #256
	eor	w10, w11, w10
	eor	w11, w12, w13
	eor	w10, w10, w11
	ror	w10, w10, #31
	str	w10, [x9, #32]
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
