	.text
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         // -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,@function
des_pc1:                                // @des_pc1
	.cfi_startproc
// %bb.0:
	mov	x8, x0
	mov	x0, xzr
	mov	w9, #55                         // =0x37
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	add	x10, x9, #9
	lsr	x10, x8, x10
	and	x10, x10, #0x1
	lsl	x10, x10, x9
	sub	x9, x9, #1
	cmn	x9, #1
	orr	x0, x10, x0
	b.ne	.LBB0_1
// %bb.2:
	ret
.Lfunc_end0:
	.size	des_pc1, .Lfunc_end0-des_pc1
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
