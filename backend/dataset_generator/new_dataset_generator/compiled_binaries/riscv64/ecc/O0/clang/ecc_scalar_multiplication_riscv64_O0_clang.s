	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"ecc_scalar_multiplication.c"
	.globl	ecc_scalar_mult                 # -- Begin function ecc_scalar_mult
	.p2align	1
	.type	ecc_scalar_mult,@function
ecc_scalar_mult:                        # @ecc_scalar_mult
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
                                        # kill: def $x14 killed $x11
                                        # kill: def $x14 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a2, -56(s0)
	sd	a3, -64(s0)
	li	a0, 0
	sd	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	ld	a0, -48(s0)
	sd	a0, -80(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	beqz	a0, .LBB0_5
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lbu	a0, -56(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -56(s0)
	srli	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_5:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	ecc_scalar_mult, .Lfunc_end0-ecc_scalar_mult
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
