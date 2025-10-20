	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	1
	.type	sha256_message_schedule,@function
sha256_message_schedule:                # @sha256_message_schedule
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
	lw	a1, -36(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	addiw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_4:
	li	a0, 16
	sw	a0, -40(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -40(s0)
	li	a0, 63
	blt	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	ld	a0, -32(s0)
	lw	a1, -40(s0)
	addiw	a1, a1, -15
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	srliw	a2, a1, 7
	slliw	a0, a1, 25
	or	a0, a0, a2
	srliw	a3, a1, 18
	slliw	a2, a1, 14
	or	a2, a2, a3
	xor	a0, a0, a2
	srliw	a1, a1, 3
	xor	a0, a0, a1
	sw	a0, -44(s0)
	ld	a0, -32(s0)
	lw	a1, -40(s0)
	addiw	a1, a1, -2
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	srliw	a2, a1, 17
	slliw	a0, a1, 15
	or	a0, a0, a2
	srliw	a3, a1, 19
	slliw	a2, a1, 13
	or	a2, a2, a3
	xor	a0, a0, a2
	srliw	a1, a1, 10
	xor	a0, a0, a1
	sw	a0, -48(s0)
	ld	a1, -32(s0)
	lw	a2, -40(s0)
	addiw	a0, a2, -16
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a3, -44(s0)
	addw	a0, a0, a3
	addiw	a3, a2, -7
	slli	a3, a3, 2
	add	a3, a3, a1
	lw	a3, 0(a3)
	addw	a0, a0, a3
	lw	a3, -48(s0)
	addw	a0, a0, a3
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB0_5
.LBB0_8:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	sha256_message_schedule, .Lfunc_end0-sha256_message_schedule
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
