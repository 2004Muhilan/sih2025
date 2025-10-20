	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                # -- Begin function rsa_extended_gcd
	.p2align	1
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       # @rsa_extended_gcd
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	ld	a0, -32(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	ld	a1, -48(s0)
	li	a0, 0
	sd	a0, 0(a1)
	ld	a1, -56(s0)
	li	a0, 1
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB0_3
.LBB0_2:
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	rem	a0, a0, a1
	addi	a2, s0, -64
	addi	a3, s0, -72
	call	rsa_extended_gcd
	sd	a0, -80(s0)
	ld	a0, -72(s0)
	ld	a1, -40(s0)
	ld	a2, -32(s0)
	div	a1, a1, a2
	ld	a2, -64(s0)
	mul	a1, a1, a2
	sub	a0, a0, a1
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a0, 0(a1)
	ld	a0, -80(s0)
	sd	a0, -24(s0)
	j	.LBB0_3
.LBB0_3:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rsa_extended_gcd
