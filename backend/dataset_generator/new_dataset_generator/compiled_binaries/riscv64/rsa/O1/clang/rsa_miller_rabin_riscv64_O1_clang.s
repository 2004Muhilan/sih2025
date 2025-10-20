	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                # -- Begin function rsa_miller_rabin
	.p2align	1
	.type	rsa_miller_rabin,@function
rsa_miller_rabin:                       # @rsa_miller_rabin
	.cfi_startproc
# %bb.0:
	li	a2, 2
	bgeu	a0, a2, .LBB0_2
# %bb.1:
	li	a0, 0
	ret
.LBB0_2:
	mv	a1, a0
	andi	a3, a0, -2
	li	a0, 1
	beq	a3, a2, .LBB0_4
# %bb.3:
	andi	a0, a1, 1
.LBB0_4:
	ret
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
