	.text
	.file	"des_key_schedule.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_key_schedule
.LCPI0_0:
	.xword	0                               // 0x0
	.xword	1                               // 0x1
	.text
	.globl	des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
des_key_schedule:                       // @des_key_schedule
	.cfi_startproc
// %bb.0:
	mov	w8, #2                          // =0x2
	movi	v0.2d, #0x00ffffffffffff
	adrp	x9, .LCPI0_0
	dup	v1.2d, x0
	dup	v2.2d, x8
	ldr	q3, [x9, :lo12:.LCPI0_0]
	mov	x8, xzr
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	shl	v4.2d, v3.2d, #2
	add	v3.2d, v3.2d, v2.2d
	neg	v4.2d, v4.2d
	ushl	v4.2d, v1.2d, v4.2d
	and	v4.16b, v4.16b, v0.16b
	str	q4, [x1, x8]
	add	x8, x8, #16
	cmp	x8, #128
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
