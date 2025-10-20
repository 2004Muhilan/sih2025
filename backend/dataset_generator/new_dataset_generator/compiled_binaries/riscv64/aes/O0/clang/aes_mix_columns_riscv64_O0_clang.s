	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_mix_columns.c"
	.globl	aes_mix_columns                 # -- Begin function aes_mix_columns
	.p2align	1
	.type	aes_mix_columns,@function
aes_mix_columns:                        # @aes_mix_columns
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	li	a0, 3
	blt	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slliw	a1, a1, 2
	add	a0, a0, a1
	sd	a0, -40(s0)
	ld	a0, -40(s0)
	lbu	a0, 0(a0)
	sb	a0, -41(s0)
	ld	a0, -40(s0)
	lbu	a0, 1(a0)
	sb	a0, -42(s0)
	ld	a0, -40(s0)
	lbu	a0, 2(a0)
	sb	a0, -43(s0)
	ld	a0, -40(s0)
	lbu	a0, 3(a0)
	sb	a0, -44(s0)
	lbu	a0, -41(s0)
	li	a1, 2
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	call	gf_mul
	sd	a0, -112(s0)                    # 8-byte Folded Spill
	lbu	a0, -42(s0)
	li	a1, 3
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	call	gf_mul
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a2
	lbu	a2, -43(s0)
	xor	a0, a0, a2
	lbu	a2, -44(s0)
	xor	a0, a0, a2
	ld	a2, -40(s0)
	sb	a0, 0(a2)
	lbu	a0, -41(s0)
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	lbu	a0, -42(s0)
	call	gf_mul
	ld	a1, -80(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	xor	a0, a0, a2
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	lbu	a0, -43(s0)
	call	gf_mul
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a2
	lbu	a2, -44(s0)
	xor	a0, a0, a2
	ld	a2, -40(s0)
	sb	a0, 1(a2)
	lbu	a0, -41(s0)
	lbu	a2, -42(s0)
	xor	a0, a0, a2
	sd	a0, -88(s0)                     # 8-byte Folded Spill
	lbu	a0, -43(s0)
	call	gf_mul
	ld	a1, -80(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a2
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	lbu	a0, -44(s0)
	call	gf_mul
	ld	a1, -80(s0)                     # 8-byte Folded Reload
	mv	a2, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a2
	ld	a2, -40(s0)
	sb	a0, 2(a2)
	lbu	a0, -41(s0)
	call	gf_mul
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	lbu	a2, -42(s0)
	xor	a0, a0, a2
	lbu	a2, -43(s0)
	xor	a0, a0, a2
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	lbu	a0, -44(s0)
	call	gf_mul
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	xor	a0, a0, a1
	ld	a1, -40(s0)
	sb	a0, 3(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_4:
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function gf_mul
	.type	gf_mul,@function
gf_mul:                                 # @gf_mul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sb	a0, -17(s0)
	sb	a1, -18(s0)
	li	a0, 0
	sb	a0, -19(s0)
	sw	a0, -24(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 7
	blt	a0, a1, .LBB1_8
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a0, -18(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB1_4
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a1, -17(s0)
	lbu	a0, -19(s0)
	xor	a0, a0, a1
	sb	a0, -19(s0)
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a0, -17(s0)
	andi	a0, a0, 128
	sb	a0, -25(s0)
	lbu	a0, -17(s0)
	slliw	a0, a0, 1
	sb	a0, -17(s0)
	lbu	a0, -25(s0)
	beqz	a0, .LBB1_6
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a0, -17(s0)
	xori	a0, a0, 27
	sb	a0, -17(s0)
	j	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	lbu	a0, -18(s0)
	srli	a0, a0, 1
	sb	a0, -18(s0)
	j	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB1_1
.LBB1_8:
	lbu	a0, -19(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	gf_mul, .Lfunc_end1-gf_mul
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gf_mul
