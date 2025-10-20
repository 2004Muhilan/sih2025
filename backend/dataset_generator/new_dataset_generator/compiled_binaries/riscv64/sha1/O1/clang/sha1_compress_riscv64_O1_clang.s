	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha1_compress.c"
	.globl	sha1_compress                   # -- Begin function sha1_compress
	.p2align	1
	.type	sha1_compress,@function
sha1_compress:                          # @sha1_compress
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
	lwu	a2, 60(a1)
	lwu	a3, 56(a1)
	slli	a2, a2, 32
	lwu	a4, 52(a1)
	or	a2, a2, a3
	lwu	a3, 48(a1)
	sd	a2, 56(sp)
	slli	a4, a4, 32
	lwu	a2, 44(a1)
	or	a3, a3, a4
	lwu	a4, 40(a1)
	sd	a3, 48(sp)
	slli	a2, a2, 32
	lwu	a3, 36(a1)
	or	a2, a2, a4
	lwu	a4, 32(a1)
	sd	a2, 40(sp)
	slli	a3, a3, 32
	lwu	a2, 28(a1)
	or	a3, a3, a4
	lwu	a4, 24(a1)
	sd	a3, 32(sp)
	slli	a2, a2, 32
	lwu	a3, 20(a1)
	or	a2, a2, a4
	sd	a2, 24(sp)
	lwu	a2, 16(a1)
	slli	a3, a3, 32
	lwu	a4, 12(a1)
	lwu	a5, 8(a1)
	or	a2, a2, a3
	sd	a2, 16(sp)
	slli	a4, a4, 32
	or	a4, a4, a5
	lwu	a2, 4(a1)
	lwu	a3, 0(a1)
	addi	a1, sp, 64
	sd	a4, 8(sp)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 0(sp)
	addi	a2, sp, 320
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
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
	bne	a1, a2, .LBB0_1
# %bb.2:
	li	a1, 0
	lw	t2, 0(a0)
	lw	t1, 4(a0)
	lw	t0, 8(a0)
	lw	a7, 12(a0)
	lw	a6, 16(a0)
	mv	a2, sp
	li	s3, 19
	lui	a3, 370728
	addi	s5, a3, -1639
	li	s4, 80
	li	t3, 39
	lui	a3, 454047
	addi	t4, a3, -1119
	li	t5, 59
	lui	a3, 586172
	addi	t6, a3, -804
	lui	a3, 828972
	addi	s2, a3, 470
	mv	s1, a6
	mv	a5, a7
	mv	s0, t0
	mv	a3, t1
	mv	a4, t2
	j	.LBB0_5
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	and	a4, s7, a3
	not	a5, a3
	and	s0, s6, a5
	or	s9, s0, a4
	mv	a4, s5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	srliw	a5, s8, 27
	slli	s0, s8, 5
	or	a5, a5, s0
	lw	s0, 0(a2)
	add	s1, s1, s9
	add	a4, a4, a5
	add	a4, a4, s1
	add	a4, a4, s0
	srliw	a5, a3, 2
	slli	a3, a3, 30
	or	s0, a3, a5
	addi	a1, a1, 1
	addi	a2, a2, 4
	mv	s1, s6
	mv	a5, s7
	mv	a3, s8
	beq	a1, s4, .LBB0_11
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	mv	s8, a4
	mv	s7, s0
	mv	s6, a5
	bgeu	s3, a1, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	bltu	t3, a1, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	xor	a4, s7, a3
	xor	s9, a4, s6
	mv	a4, t4
	j	.LBB0_4
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	bltu	t5, a1, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	or	a4, s6, s7
	and	a4, a4, a3
	and	s0, s6, s7
	or	s9, a4, s0
	mv	a4, t6
	j	.LBB0_4
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	xor	a4, s7, a3
	xor	s9, a4, s6
	mv	a4, s2
	j	.LBB0_4
.LBB0_11:
	add	a4, a4, t2
	sw	a4, 0(a0)
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
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
