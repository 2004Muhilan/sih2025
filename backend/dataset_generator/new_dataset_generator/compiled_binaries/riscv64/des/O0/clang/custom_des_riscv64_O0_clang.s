	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_des.c"
	.globl	des_encrypt                     # -- Begin function des_encrypt
	.p2align	1
	.type	des_encrypt,@function
des_encrypt:                            # @des_encrypt
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
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	li	a0, 0
	sd	a0, -48(s0)
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -52(s0)
	li	a0, 7
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -52(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	slliw	a2, a1, 3
	li	a1, 56
	subw	a1, a1, a2
	sll	a1, a0, a1
	ld	a0, -48(s0)
	or	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -52(s0)
	addiw	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 0
	sw	a0, -56(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -56(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	ld	a0, -48(s0)
	sw	a0, -60(s0)
	lwu	a0, -44(s0)
	sw	a0, -64(s0)
	lw	a0, -60(s0)
	ld	a1, -32(s0)
	lw	a2, -56(s0)
	slli	a3, a2, 1
	srli	a3, a3, 61
	addw	a3, a3, a2
	andi	a3, a3, -8
	subw	a2, a2, a3
	add	a1, a1, a2
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	sw	a0, -68(s0)
	lw	a1, -68(s0)
	lw	a0, -64(s0)
	xor	a0, a0, a1
	sw	a0, -64(s0)
	lw	a0, -60(s0)
	slli	a0, a0, 32
	lwu	a1, -64(s0)
	or	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -56(s0)
	addiw	a0, a0, 1
	sw	a0, -56(s0)
	j	.LBB0_5
.LBB0_8:
	li	a0, 0
	sw	a0, -72(s0)
	j	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -72(s0)
	li	a0, 7
	blt	a0, a1, .LBB0_12
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	ld	a0, -48(s0)
	lw	a2, -72(s0)
	slliw	a3, a2, 3
	li	a1, 56
	subw	a1, a1, a3
	srl	a0, a0, a1
	ld	a1, -40(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	lw	a0, -72(s0)
	addiw	a0, a0, 1
	sw	a0, -72(s0)
	j	.LBB0_9
.LBB0_12:
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	des_encrypt, .Lfunc_end0-des_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
