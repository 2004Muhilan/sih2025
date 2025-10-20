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
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	ld	a1, -32(s0)
	li	a0, 1
	bltu	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	li	a0, 0
	sb	a0, -17(s0)
	j	.LBB0_11
.LBB0_2:
	ld	a0, -32(s0)
	li	a1, 2
	beq	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	ld	a0, -32(s0)
	li	a1, 3
	bne	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:
	li	a0, 1
	sb	a0, -17(s0)
	j	.LBB0_11
.LBB0_5:
	lbu	a0, -32(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:
	li	a0, 0
	sb	a0, -17(s0)
	j	.LBB0_11
.LBB0_7:
	ld	a0, -32(s0)
	addi	a0, a0, -1
	sd	a0, -48(s0)
	j	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lbu	a0, -48(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB0_10
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	ld	a0, -48(s0)
	srli	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB0_8
.LBB0_10:
	li	a0, 1
	sb	a0, -17(s0)
	j	.LBB0_11
.LBB0_11:
	lbu	a0, -17(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	rsa_miller_rabin, .Lfunc_end0-rsa_miller_rabin
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
