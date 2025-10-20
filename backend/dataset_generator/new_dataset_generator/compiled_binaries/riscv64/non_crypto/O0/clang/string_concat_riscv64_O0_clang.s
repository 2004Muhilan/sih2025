	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"string_concat.c"
	.globl	string_concat                   # -- Begin function string_concat
	.p2align	1
	.type	string_concat,@function
string_concat:                          # @string_concat
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
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	li	a2, 0
	sd	a2, -64(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB0_1
.LBB0_5:
	li	a0, 0
	sd	a0, -56(s0)
	j	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	addi	a1, a1, -1
	li	a2, 0
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB0_8
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a0, -32(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB0_10
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a0, -32(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -24(s0)
	ld	a2, -48(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB0_6
.LBB0_10:
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	add	a1, a1, a0
	li	a0, 0
	sb	a0, 0(a1)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	string_concat, .Lfunc_end0-string_concat
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
