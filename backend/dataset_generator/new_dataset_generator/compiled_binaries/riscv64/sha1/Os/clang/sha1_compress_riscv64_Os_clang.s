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
	addi	sp, sp, -416
	.cfi_def_cfa_offset 416
	sd	ra, 408(sp)                     # 8-byte Folded Spill
	sd	s0, 400(sp)                     # 8-byte Folded Spill
	sd	s1, 392(sp)                     # 8-byte Folded Spill
	sd	s2, 384(sp)                     # 8-byte Folded Spill
	sd	s3, 376(sp)                     # 8-byte Folded Spill
	sd	s4, 368(sp)                     # 8-byte Folded Spill
	sd	s5, 360(sp)                     # 8-byte Folded Spill
	sd	s6, 352(sp)                     # 8-byte Folded Spill
	sd	s7, 344(sp)                     # 8-byte Folded Spill
	sd	s8, 336(sp)                     # 8-byte Folded Spill
	sd	s9, 328(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	mv	s2, a0
	addi	s0, sp, 72
	addi	a0, sp, 8
	li	a2, 64
	call	memcpy
	addi	a0, sp, 328
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -12(s0)
	lw	a2, -32(s0)
	lw	a3, -56(s0)
	lw	a4, -64(s0)
	xor	a1, a1, a2
	xor	a3, a3, a4
	xor	a1, a1, a3
	srliw	a2, a1, 31
	slli	a1, a1, 1
	or	a1, a1, a2
	sw	a1, 0(s0)
	addi	s0, s0, 4
	bne	s0, a0, .LBB0_1
# %bb.2:
	li	a5, 0
	lw	t2, 0(s2)
	lw	t1, 4(s2)
	lw	t0, 8(s2)
	lw	a7, 12(s2)
	lw	a6, 16(s2)
	addi	a0, sp, 8
	li	s4, 19
	lui	a1, 370728
	addi	s6, a1, -1639
	li	s5, 80
	li	t6, 39
	lui	a1, 454047
	addi	s3, a1, -1119
	li	t3, 59
	lui	a1, 586172
	addi	t4, a1, -804
	lui	a1, 828972
	addi	t5, a1, 470
	mv	s1, a6
	mv	a2, a7
	mv	a4, t0
	mv	s0, t1
	mv	a3, t2
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	mv	s9, a3
	mv	s8, a4
	mv	s7, a2
	bltu	s4, a5, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	and	a2, s8, s0
	not	a3, s0
	and	a4, s7, a3
	or	a4, a4, a2
	mv	a2, s6
	j	.LBB0_10
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	bltu	t6, a5, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	xor	a2, s8, s0
	xor	a4, a2, s7
	mv	a2, s3
	j	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	bltu	t3, a5, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	or	a2, s7, s8
	and	a2, a2, s0
	and	a4, s7, s8
	or	a4, a4, a2
	mv	a2, t4
	j	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	xor	a2, s8, s0
	xor	a4, a2, s7
	mv	a2, t5
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	srliw	a3, s9, 27
	slli	a1, s9, 5
	or	a1, a1, a3
	lw	a3, 0(a0)
	add	a4, a4, s1
	add	a1, a1, a2
	add	a1, a1, a4
	add	a3, a3, a1
	srliw	a1, s0, 2
	slli	a4, s0, 30
	or	a4, a4, a1
	addi	a5, a5, 1
	addi	a0, a0, 4
	mv	s1, s7
	mv	a2, s8
	mv	s0, s9
	bne	a5, s5, .LBB0_3
# %bb.11:
	add	a3, a3, t2
	sw	a3, 0(s2)
	add	a1, s9, t1
	sw	a1, 4(s2)
	add	a4, a4, t0
	sw	a4, 8(s2)
	add	a7, a7, s8
	sw	a7, 12(s2)
	add	a6, a6, s7
	sw	a6, 16(s2)
	ld	ra, 408(sp)                     # 8-byte Folded Reload
	ld	s0, 400(sp)                     # 8-byte Folded Reload
	ld	s1, 392(sp)                     # 8-byte Folded Reload
	ld	s2, 384(sp)                     # 8-byte Folded Reload
	ld	s3, 376(sp)                     # 8-byte Folded Reload
	ld	s4, 368(sp)                     # 8-byte Folded Reload
	ld	s5, 360(sp)                     # 8-byte Folded Reload
	ld	s6, 352(sp)                     # 8-byte Folded Reload
	ld	s7, 344(sp)                     # 8-byte Folded Reload
	ld	s8, 336(sp)                     # 8-byte Folded Reload
	ld	s9, 328(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 416
	ret
.Lfunc_end0:
	.size	sha1_compress, .Lfunc_end0-sha1_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
