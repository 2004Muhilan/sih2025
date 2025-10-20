	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"custom_sha1.c"
	.globl	sha1_transform                  # -- Begin function sha1_transform
	.p2align	1
	.type	sha1_transform,@function
sha1_transform:                         # @sha1_transform
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -400
	.cfi_def_cfa_offset 400
	sd	s0, 392(sp)                     # 8-byte Folded Spill
	sd	s1, 384(sp)                     # 8-byte Folded Spill
	sd	s2, 376(sp)                     # 8-byte Folded Spill
	sd	s3, 368(sp)                     # 8-byte Folded Spill
	sd	s4, 360(sp)                     # 8-byte Folded Spill
	sd	s5, 352(sp)                     # 8-byte Folded Spill
	sd	s6, 344(sp)                     # 8-byte Folded Spill
	sd	s7, 336(sp)                     # 8-byte Folded Spill
	sd	s8, 328(sp)                     # 8-byte Folded Spill
	sd	s9, 320(sp)                     # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	lw	t2, 0(a0)
	lw	t1, 4(a0)
	lw	t0, 8(a0)
	lw	a7, 12(a0)
	lw	a6, 16(a0)
	mv	a2, sp
	addi	a3, a1, 3
	addi	a1, a1, 67
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, -3(a3)
	lbu	a5, -2(a3)
	slli	a4, a4, 24
	lbu	s1, -1(a3)
	lbu	s0, 0(a3)
	slli	a5, a5, 16
	or	a4, a4, a5
	slli	s1, s1, 8
	or	s0, s0, s1
	or	a4, a4, s0
	sw	a4, 0(a2)
	addi	a3, a3, 4
	addi	a2, a2, 4
	bne	a3, a1, .LBB0_1
# %bb.2:
	addi	a1, sp, 64
	addi	a2, sp, 320
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -12(a1)
	lw	a4, -32(a1)
	lw	a5, -56(a1)
	lw	s1, -64(a1)
	xor	a3, a3, a4
	xor	a5, a5, s1
	xor	a3, a3, a5
	srliw	a4, a3, 31
	slli	a3, a3, 1
	or	a3, a3, a4
	sw	a3, 0(a1)
	addi	a1, a1, 4
	bne	a1, a2, .LBB0_3
# %bb.4:
	li	a1, 0
	mv	a3, sp
	li	s3, 19
	lui	a2, 370728
	addi	s5, a2, -1639
	li	s4, 80
	li	t3, 39
	lui	a2, 454047
	addi	t4, a2, -1119
	li	t5, 59
	lui	a2, 586172
	addi	t6, a2, -804
	lui	a2, 828972
	addi	s2, a2, 470
	mv	a5, t2
	mv	s1, a6
	mv	a2, a7
	mv	s0, t0
	mv	s8, t1
	j	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	and	a2, s7, a4
	not	a5, a4
	and	a5, s6, a5
	or	s9, a5, a2
	mv	s0, s5
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	srliw	a2, s8, 27
	slli	a5, s8, 5
	or	a2, a2, a5
	lw	a5, 0(a3)
	add	s1, s1, s9
	add	a2, a2, s0
	add	a2, a2, s1
	add	a5, a5, a2
	srliw	a2, a4, 2
	slli	a4, a4, 30
	or	s0, a4, a2
	addi	a1, a1, 1
	addi	a3, a3, 4
	mv	s1, s6
	mv	a2, s7
	beq	a1, s4, .LBB0_13
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	mv	a4, s8
	mv	s7, s0
	mv	s6, a2
	mv	s8, a5
	bgeu	s3, a1, .LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	bltu	t3, a1, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	xor	a2, s7, a4
	xor	s9, a2, s6
	mv	s0, t4
	j	.LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	bltu	t5, a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	or	a2, s6, s7
	and	a2, a2, a4
	and	a5, s6, s7
	or	s9, a2, a5
	mv	s0, t6
	j	.LBB0_6
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	xor	a2, s7, a4
	xor	s9, a2, s6
	mv	s0, s2
	j	.LBB0_6
.LBB0_13:
	add	a5, a5, t2
	sw	a5, 0(a0)
	add	t1, t1, s8
	sw	t1, 4(a0)
	add	t0, t0, s0
	sw	t0, 8(a0)
	add	a7, a7, s7
	sw	a7, 12(a0)
	add	a6, a6, s6
	sw	a6, 16(a0)
	ld	s0, 392(sp)                     # 8-byte Folded Reload
	ld	s1, 384(sp)                     # 8-byte Folded Reload
	ld	s2, 376(sp)                     # 8-byte Folded Reload
	ld	s3, 368(sp)                     # 8-byte Folded Reload
	ld	s4, 360(sp)                     # 8-byte Folded Reload
	ld	s5, 352(sp)                     # 8-byte Folded Reload
	ld	s6, 344(sp)                     # 8-byte Folded Reload
	ld	s7, 336(sp)                     # 8-byte Folded Reload
	ld	s8, 328(sp)                     # 8-byte Folded Reload
	ld	s9, 320(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 400
	ret
.Lfunc_end0:
	.size	sha1_transform, .Lfunc_end0-sha1_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha1_init                       # -- Begin function sha1_init
	.p2align	1
	.type	sha1_init,@function
sha1_init:                              # @sha1_init
	.cfi_startproc
# %bb.0:
	lui	a1, 422994
	addi	a1, a1, 769
	sw	a1, 0(a0)
	lui	a1, 982235
	addi	a1, a1, -1143
	sw	a1, 4(a0)
	lui	a1, 625582
	addi	a1, a1, -770
	sw	a1, 8(a0)
	lui	a1, 66341
	addi	a1, a1, 1142
	sw	a1, 12(a0)
	lui	a1, 802094
	addi	a1, a1, 496
	sw	a1, 16(a0)
	ret
.Lfunc_end1:
	.size	sha1_init, .Lfunc_end1-sha1_init
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
