	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           // -- Begin function sha1_message_schedule
	.p2align	2
	.type	sha1_message_schedule,@function
sha1_message_schedule:                  // @sha1_message_schedule
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [x0, x8]
	str	w9, [x1, x8]
	add	x8, x8, #4
	cmp	x8, #64
	b.ne	.LBB0_1
// %bb.2:
	mov	x8, xzr
	add	x9, x1, #32
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x9, x8
	add	x8, x8, #4
	ldr	w11, [x10, #20]
	ldr	w12, [x10]
	ldur	w13, [x10, #-24]
	ldur	w14, [x10, #-32]
	cmp	x8, #256
	eor	w11, w12, w11
	eor	w12, w13, w14
	eor	w11, w11, w12
	ror	w11, w11, #31
	str	w11, [x10, #32]
	b.ne	.LBB0_3
// %bb.4:
	ret
.Lfunc_end0:
	.size	sha1_message_schedule, .Lfunc_end0-sha1_message_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
