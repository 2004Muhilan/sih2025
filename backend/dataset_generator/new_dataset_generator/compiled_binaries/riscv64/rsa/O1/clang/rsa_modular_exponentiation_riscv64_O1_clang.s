	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_modular_exponentiation.c"
	.globl	rsa_mod_exp                     # -- Begin function rsa_mod_exp
	.p2align	1
	.type	rsa_mod_exp,@function
rsa_mod_exp:                            # @rsa_mod_exp
	.cfi_startproc
# %bb.0:
	beqz	a1, .LBB0_6
# %bb.1:
	mv	a3, a0
	li	a0, 1
	j	.LBB0_3
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	srli	a1, a1, 1
	mul	a3, a3, a3
	beqz	a1, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	andi	a4, a1, 1
	remu	a3, a3, a2
	beqz	a4, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	mul	a0, a3, a0
	remu	a0, a0, a2
	j	.LBB0_2
.LBB0_5:
	ret
.LBB0_6:
	li	a0, 1
	ret
.Lfunc_end0:
	.size	rsa_mod_exp, .Lfunc_end0-rsa_mod_exp
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
