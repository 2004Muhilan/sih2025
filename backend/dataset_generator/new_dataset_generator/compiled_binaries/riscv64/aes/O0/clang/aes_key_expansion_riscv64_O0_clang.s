	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.p2align	1
	.type	aes_key_expansion,@function
aes_key_expansion:                      # @aes_key_expansion
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	addiw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 1
	sw	a0, -40(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	lw	a1, -40(s0)
	li	a0, 10
	blt	a0, a1, .LBB0_16
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	li	a0, 0
	sw	a0, -48(s0)
	j	.LBB0_7
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -48(s0)
	li	a0, 3
	blt	a0, a1, .LBB0_10
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=2
	ld	a0, -32(s0)
	lw	a1, -40(s0)
	slliw	a1, a1, 4
	lw	a2, -48(s0)
	addw	a1, a1, a2
	addiw	a1, a1, -4
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, s0, -44
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	lw	a0, -48(s0)
	addiw	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	lbu	a0, -44(s0)
	sb	a0, -49(s0)
	lbu	a0, -43(s0)
	sb	a0, -44(s0)
	lbu	a0, -42(s0)
	sb	a0, -43(s0)
	lbu	a0, -41(s0)
	sb	a0, -42(s0)
	lbu	a0, -49(s0)
	sb	a0, -41(s0)
	lw	a0, -40(s0)
	addiw	a1, a0, -1
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(rcon)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	add	a0, a0, a1
	lbu	a1, 0(a0)
	lbu	a0, -44(s0)
	xor	a0, a0, a1
	sb	a0, -44(s0)
	li	a0, 0
	sw	a0, -56(s0)
	j	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a1, -56(s0)
	li	a0, 15
	blt	a0, a1, .LBB0_14
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=2
	ld	a1, -32(s0)
	lw	a0, -40(s0)
	lw	a3, -56(s0)
	slliw	a0, a0, 4
	addw	a2, a0, a3
	addiw	a0, a2, -16
	add	a0, a0, a1
	lbu	a0, 0(a0)
	slli	a4, a3, 1
	srli	a4, a4, 62
	addw	a4, a4, a3
	andi	a4, a4, -4
	subw	a4, a3, a4
	addi	a3, s0, -44
	add	a3, a3, a4
	lbu	a3, 0(a3)
	xor	a0, a0, a3
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=2
	lw	a0, -56(s0)
	addiw	a0, a0, 1
	sw	a0, -56(s0)
	j	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	j	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB0_5
.LBB0_16:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	aes_key_expansion, .Lfunc_end0-aes_key_expansion
	.cfi_endproc
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rcon
