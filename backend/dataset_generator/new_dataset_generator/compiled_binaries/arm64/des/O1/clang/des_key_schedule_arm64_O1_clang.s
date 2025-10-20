	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                // -- Begin function des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
des_key_schedule:                       // @des_key_schedule
	.cfi_startproc
// %bb.0:
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	lsr	x9, x0, x8
	add	x8, x8, #4
	cmp	x8, #64
	and	x9, x9, #0xffffffffffff
	str	x9, [x1], #8
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
