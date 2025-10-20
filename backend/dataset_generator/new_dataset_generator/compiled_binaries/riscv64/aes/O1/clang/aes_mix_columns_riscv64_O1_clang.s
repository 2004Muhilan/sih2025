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
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	s0, 8(sp)                       # 8-byte Folded Spill
	sd	s1, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	li	t1, 0
	li	a6, 4
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	slli	t2, t1, 2
	add	t2, t2, a0
	lbu	t4, 0(t2)
	lbu	a7, 1(t2)
	lbu	t0, 2(t2)
	lbu	t3, 3(t2)
	li	t5, 0
	li	a5, 2
	li	a3, 8
	mv	a1, t4
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a4, a5, 63
	srai	a4, a4, 63
	and	a4, a4, a1
	slli	a2, a1, 56
	srai	a2, a2, 56
	xor	t5, a4, t5
	slli	a1, a1, 1
	srli	a2, a2, 7
	andi	a2, a2, 27
	xor	a1, a1, a2
	slli	a5, a5, 56
	addiw	a3, a3, -1
	srli	a5, a5, 57
	bnez	a3, .LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	li	t6, 0
	li	a2, 3
	li	a5, 8
	mv	a3, a7
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a1, a2, 63
	srai	a1, a1, 63
	and	a1, a1, a3
	slli	a4, a3, 56
	srai	a4, a4, 56
	xor	t6, a1, t6
	slli	a3, a3, 1
	srli	a4, a4, 7
	andi	a4, a4, 27
	xor	a3, a3, a4
	slli	a2, a2, 56
	addiw	a5, a5, -1
	srli	a2, a2, 57
	bnez	a5, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	li	s1, 0
	xor	a1, t3, t0
	xor	a1, a1, t5
	xor	a1, a1, t6
	sb	a1, 0(t2)
	li	a2, 2
	li	a1, 8
	mv	a5, a7
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a4, a2, 63
	srai	a4, a4, 63
	and	a4, a4, a5
	slli	a3, a5, 56
	srai	a3, a3, 56
	xor	s1, s1, a4
	slli	a5, a5, 1
	srli	a3, a3, 7
	andi	a3, a3, 27
	xor	a5, a5, a3
	slli	a2, a2, 56
	addiw	a1, a1, -1
	srli	a2, a2, 57
	bnez	a1, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	li	a3, 0
	li	a2, 3
	li	a1, 8
	mv	s0, t0
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a5, a2, 63
	srai	a5, a5, 63
	and	a5, a5, s0
	slli	a4, s0, 56
	srai	a4, a4, 56
	xor	a3, a3, a5
	slli	s0, s0, 1
	srli	a4, a4, 7
	andi	a4, a4, 27
	xor	s0, s0, a4
	slli	a2, a2, 56
	addiw	a1, a1, -1
	srli	a2, a2, 57
	bnez	a1, .LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	xor	a2, t3, t4
	xor	a2, a2, s1
	xor	a2, a2, a3
	sb	a2, 1(t2)
	li	a2, 2
	li	a3, 8
	mv	s1, t0
.LBB0_10:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a5, a2, 63
	srai	a5, a5, 63
	and	a5, a5, s1
	slli	a4, s1, 56
	srai	a4, a4, 56
	xor	a1, a1, a5
	slli	s1, s1, 1
	srli	a4, a4, 7
	andi	a4, a4, 27
	xor	s1, s1, a4
	slli	a2, a2, 56
	addiw	a3, a3, -1
	srli	a2, a2, 57
	bnez	a3, .LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	li	s1, 3
	li	a5, 8
	mv	s0, t3
.LBB0_12:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a2, s1, 63
	srai	a2, a2, 63
	and	a2, a2, s0
	slli	a4, s0, 56
	srai	a4, a4, 56
	xor	a3, a3, a2
	slli	s0, s0, 1
	srli	a4, a4, 7
	andi	a4, a4, 27
	xor	s0, s0, a4
	slli	s1, s1, 56
	addiw	a5, a5, -1
	srli	s1, s1, 57
	bnez	a5, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	xor	a2, a7, t4
	xor	a1, a1, a2
	xor	a1, a1, a3
	sb	a1, 2(t2)
	li	a2, 3
	li	a1, 8
.LBB0_14:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a3, a2, 63
	srai	a3, a3, 63
	and	a3, a3, t4
	slli	a4, t4, 56
	srai	a4, a4, 56
	xor	a5, a5, a3
	slli	t4, t4, 1
	srli	a4, a4, 7
	andi	a4, a4, 27
	xor	t4, t4, a4
	slli	a2, a2, 56
	addiw	a1, a1, -1
	srli	a2, a2, 57
	bnez	a1, .LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	li	a2, 2
	li	a3, 8
.LBB0_16:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli	a4, a2, 63
	srai	a4, a4, 63
	and	a4, a4, t3
	slli	s1, t3, 56
	srai	s1, s1, 56
	xor	a1, a1, a4
	slli	t3, t3, 1
	srli	s1, s1, 7
	andi	s1, s1, 27
	xor	t3, t3, s1
	slli	a2, a2, 56
	addiw	a3, a3, -1
	srli	a2, a2, 57
	bnez	a3, .LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	xor	a2, t0, a7
	xor	a2, a2, a5
	xor	a1, a1, a2
	addi	t1, t1, 1
	sb	a1, 3(t2)
	bne	t1, a6, .LBB0_1
# %bb.18:
	ld	s0, 8(sp)                       # 8-byte Folded Reload
	ld	s1, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	aes_mix_columns, .Lfunc_end0-aes_mix_columns
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
