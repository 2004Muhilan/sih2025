	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         // -- Begin function sha256_message_schedule
	.p2align	2
	.type	sha256_message_schedule,@function
sha256_message_schedule:                // @sha256_message_schedule
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
	str	w9, [x1, #32]
	ldr	w9, [x0, #36]
	str	w9, [x1, #36]
	ldr	w9, [x0, #40]
	str	w9, [x1, #40]
	ldr	w9, [x0, #44]
	str	w9, [x1, #44]
	ldr	w9, [x0, #48]
	str	w9, [x1, #48]
	ldr	w9, [x0, #52]
	str	w9, [x1, #52]
	ldr	w9, [x0, #56]
	str	w9, [x1, #56]
	ldr	w9, [x0, #60]
	str	w9, [x1, #60]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x9, x1, x8
	add	x8, x8, #4
	ldp	w12, w10, [x9]
	ldr	w11, [x9, #56]
	ldr	w15, [x9, #36]
	cmp	x8, #192
	ror	w13, w10, #7
	ror	w14, w11, #17
	add	w12, w12, w15
	eor	w13, w13, w10, ror #18
	eor	w14, w14, w11, ror #19
	eor	w10, w13, w10, lsr #3
	eor	w11, w14, w11, lsr #10
	add	w10, w10, w12
	add	w10, w10, w11
	str	w10, [x9, #64]
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
