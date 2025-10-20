	.text
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     // -- Begin function rsa_mod_exp
	.p2align	2
	.type	rsa_mod_exp,@function
rsa_mod_exp:                            // @rsa_mod_exp
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_6
// %bb.1:
	mov	x8, x0
	mov	w0, #1                          // =0x1
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x2
	msub	x8, x9, x2, x8
	tbz	w1, #0, .LBB0_4
// %bb.3:                               //   in Loop: Header=BB0_2 Depth=1
	mul	x9, x8, x0
	udiv	x10, x9, x2
	msub	x0, x10, x2, x9
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	mul	x8, x8, x8
	lsr	x9, x1, #1
	cmp	x1, #1
	mov	x1, x9
	b.hi	.LBB0_2
// %bb.5:
	ret
.LBB0_6:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
