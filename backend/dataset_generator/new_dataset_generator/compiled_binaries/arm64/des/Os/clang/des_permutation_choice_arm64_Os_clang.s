	.text
	.file	"des_permutation_choice.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          // -- Begin function des_pc1
.LCPI0_0:
	.xword	0                               // 0x0
	.xword	1                               // 0x1
	.text
	.globl	des_pc1
	.p2align	2
	.type	des_pc1,@function
des_pc1:                                // @des_pc1
	.cfi_startproc
// %bb.0:
	mov	w9, #64                         // =0x40
	movi	v0.2d, #0000000000000000
	mov	w10, #55                        // =0x37
	dup	v2.2d, x9
	mov	w9, #1                          // =0x1
	mov	w11, #2                         // =0x2
	adrp	x8, .LCPI0_0
	dup	v1.2d, x0
	dup	v3.2d, x9
	dup	v4.2d, x10
	dup	v5.2d, x11
	ldr	q6, [x8, :lo12:.LCPI0_0]
	mov	w8, #56                         // =0x38
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	sub	v7.2d, v6.2d, v2.2d
	sub	v16.2d, v4.2d, v6.2d
	subs	x8, x8, #2
	add	v6.2d, v6.2d, v5.2d
	ushl	v7.2d, v1.2d, v7.2d
	and	v7.16b, v7.16b, v3.16b
	ushl	v7.2d, v7.2d, v16.2d
	orr	v0.16b, v7.16b, v0.16b
	b.ne	.LBB0_1
// %bb.2:
	ext	v1.16b, v0.16b, v0.16b, #8
	orr	v0.8b, v0.8b, v1.8b
	fmov	x0, d0
	ret
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
