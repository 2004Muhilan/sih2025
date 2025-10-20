	.text
	.file	"des_key_schedule.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_key_schedule
.LCPI0_0:
	.xword	-4                              // 0xfffffffffffffffc
	.xword	-8                              // 0xfffffffffffffff8
.LCPI0_1:
	.xword	-16                             // 0xfffffffffffffff0
	.xword	-20                             // 0xffffffffffffffec
.LCPI0_2:
	.xword	-24                             // 0xffffffffffffffe8
	.xword	-28                             // 0xffffffffffffffe4
.LCPI0_3:
	.xword	-32                             // 0xffffffffffffffe0
	.xword	-36                             // 0xffffffffffffffdc
.LCPI0_4:
	.xword	-40                             // 0xffffffffffffffd8
	.xword	-44                             // 0xffffffffffffffd4
.LCPI0_5:
	.xword	-48                             // 0xffffffffffffffd0
	.xword	-52                             // 0xffffffffffffffcc
.LCPI0_6:
	.xword	-56                             // 0xffffffffffffffc8
	.xword	-60                             // 0xffffffffffffffc4
	.text
	.globl	des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
des_key_schedule:                       // @des_key_schedule
	.cfi_startproc
// %bb.0:
	adrp	x8, .LCPI0_0
	dup	v0.2d, x0
	movi	v2.2d, #0x00ffffffffffff
	ldr	q1, [x8, :lo12:.LCPI0_0]
	adrp	x9, .LCPI0_1
	adrp	x8, .LCPI0_2
	ldr	q3, [x9, :lo12:.LCPI0_1]
	ldr	q4, [x8, :lo12:.LCPI0_2]
	adrp	x8, .LCPI0_3
	ushl	v1.2d, v0.2d, v1.2d
	adrp	x9, .LCPI0_4
	ldr	q5, [x8, :lo12:.LCPI0_3]
	ushl	v3.2d, v0.2d, v3.2d
	ushl	v4.2d, v0.2d, v4.2d
	adrp	x8, .LCPI0_5
	ubfx	x10, x0, #12, #48
	and	v1.16b, v1.16b, v2.16b
	ldr	q2, [x9, :lo12:.LCPI0_4]
	adrp	x9, .LCPI0_6
	stp	q3, q4, [x1, #32]
	ldr	q3, [x8, :lo12:.LCPI0_5]
	ushl	v4.2d, v0.2d, v5.2d
	ushl	v2.2d, v0.2d, v2.2d
	and	x8, x0, #0xffffffffffff
	str	x10, [x1, #24]
	stur	q1, [x1, #8]
	ldr	q1, [x9, :lo12:.LCPI0_6]
	ushl	v3.2d, v0.2d, v3.2d
	str	x8, [x1]
	ushl	v0.2d, v0.2d, v1.2d
	stp	q4, q2, [x1, #64]
	stp	q3, q0, [x1, #96]
	ret
.Lfunc_end0:
	.size	des_key_schedule, .Lfunc_end0-des_key_schedule
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
