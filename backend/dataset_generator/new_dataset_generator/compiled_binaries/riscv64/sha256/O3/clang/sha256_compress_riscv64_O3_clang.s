	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.p2align	1
	.type	sha256_compress,@function
sha256_compress:                        # @sha256_compress
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -336
	.cfi_def_cfa_offset 336
	sd	s0, 328(sp)                     # 8-byte Folded Spill
	sd	s1, 320(sp)                     # 8-byte Folded Spill
	sd	s2, 312(sp)                     # 8-byte Folded Spill
	sd	s3, 304(sp)                     # 8-byte Folded Spill
	sd	s4, 296(sp)                     # 8-byte Folded Spill
	sd	s5, 288(sp)                     # 8-byte Folded Spill
	sd	s6, 280(sp)                     # 8-byte Folded Spill
	sd	s7, 272(sp)                     # 8-byte Folded Spill
	sd	s8, 264(sp)                     # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	lwu	a2, 60(a1)
	lwu	a3, 56(a1)
	slli	a2, a2, 32
	lwu	a4, 52(a1)
	or	a2, a2, a3
	lwu	a3, 48(a1)
	sd	a2, 64(sp)
	slli	a4, a4, 32
	lwu	a2, 44(a1)
	or	a3, a3, a4
	lwu	a4, 40(a1)
	sd	a3, 56(sp)
	slli	a2, a2, 32
	lwu	a3, 36(a1)
	or	a2, a2, a4
	lwu	a4, 32(a1)
	sd	a2, 48(sp)
	slli	a3, a3, 32
	lwu	a2, 28(a1)
	or	a3, a3, a4
	lwu	a4, 24(a1)
	sd	a3, 40(sp)
	slli	a2, a2, 32
	lwu	a3, 20(a1)
	or	a2, a2, a4
	lwu	a4, 16(a1)
	sd	a2, 32(sp)
	slli	a3, a3, 32
	lwu	a2, 12(a1)
	or	a3, a3, a4
	sd	a3, 24(sp)
	lwu	a3, 8(a1)
	slli	a2, a2, 32
	lwu	a4, 4(a1)
	lwu	a1, 0(a1)
	or	a2, a2, a3
	sd	a2, 16(sp)
	slli	a2, a4, 32
	or	a4, a2, a1
	sd	a4, 8(sp)
	addi	a1, sp, 72
	addi	t6, sp, 264
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a3, -28(a1)
	lwu	a2, -60(a1)
	add	a6, a4, a3
	srli	a3, a2, 7
	slli	a5, a2, 25
	or	a3, a3, a5
	srli	a5, a2, 18
	slli	a4, a2, 14
	or	a4, a4, a5
	lw	s1, -8(a1)
	xor	a3, a3, a4
	srli	a4, a2, 3
	xor	a3, a3, a4
	srliw	a4, s1, 17
	slli	a5, s1, 15
	or	a4, a4, a5
	srliw	a5, s1, 19
	slli	s0, s1, 13
	or	a5, a5, s0
	xor	a4, a4, a5
	srliw	a5, s1, 10
	xor	a4, a4, a5
	add	a3, a3, a6
	add	a3, a3, a4
	sw	a3, 0(a1)
	addi	a1, a1, 4
	mv	a4, a2
	bne	a1, t6, .LBB0_1
# %bb.2:
	lw	t5, 0(a0)
	lw	t4, 4(a0)
	lw	t3, 8(a0)
	lw	t2, 12(a0)
	lw	t1, 16(a0)
	lw	t0, 20(a0)
	lw	a7, 24(a0)
	lw	a6, 28(a0)
	addi	a2, sp, 8
	lui	a1, 272547
	addi	s2, a1, -104
	mv	a4, t5
	mv	a5, t4
	mv	s6, a6
	mv	a3, a7
	mv	s1, t0
	mv	a1, t1
	mv	s3, t2
	mv	s8, t3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	mv	s7, s8
	mv	s0, a1
	mv	s5, s1
	mv	s4, a3
	mv	s8, a5
	mv	a5, a4
	srliw	a1, a1, 6
	slli	a3, s0, 26
	or	a1, a1, a3
	srliw	a3, s0, 11
	slli	a4, s0, 21
	or	a3, a3, a4
	xor	a1, a1, a3
	srliw	a3, s0, 25
	slli	a4, s0, 7
	or	a3, a3, a4
	xor	a1, a1, a3
	and	a3, s1, s0
	not	a4, s0
	and	a4, s4, a4
	lw	s1, 0(a2)
	add	a3, a3, s6
	add	a3, a3, a4
	add	a1, a1, a3
	add	s1, s1, s2
	add	a4, a1, s1
	srliw	a1, a5, 2
	slli	a3, a5, 30
	or	a1, a1, a3
	srliw	a3, a5, 13
	slli	s1, a5, 19
	or	a3, a3, s1
	xor	a1, a1, a3
	srliw	a3, a5, 22
	slli	s1, a5, 10
	or	a3, a3, s1
	xor	a1, a1, a3
	xor	a3, s8, s7
	and	a3, a3, a5
	and	s1, s8, s7
	xor	a3, a3, s1
	add	a3, a3, a1
	add	a1, a4, s3
	addi	a2, a2, 4
	add	a4, a4, a3
	mv	s6, s4
	mv	a3, s5
	mv	s1, s0
	mv	s3, s7
	bne	a2, t6, .LBB0_3
# %bb.4:
	add	a4, a4, t5
	sw	a4, 0(a0)
	add	a5, a5, t4
	sw	a5, 4(a0)
	add	t3, t3, s8
	sw	t3, 8(a0)
	add	t2, t2, s7
	sw	t2, 12(a0)
	add	a1, a1, t1
	sw	a1, 16(a0)
	add	t0, t0, s0
	sw	t0, 20(a0)
	add	a7, a7, s5
	sw	a7, 24(a0)
	add	a6, a6, s4
	sw	a6, 28(a0)
	ld	s0, 328(sp)                     # 8-byte Folded Reload
	ld	s1, 320(sp)                     # 8-byte Folded Reload
	ld	s2, 312(sp)                     # 8-byte Folded Reload
	ld	s3, 304(sp)                     # 8-byte Folded Reload
	ld	s4, 296(sp)                     # 8-byte Folded Reload
	ld	s5, 288(sp)                     # 8-byte Folded Reload
	ld	s6, 280(sp)                     # 8-byte Folded Reload
	ld	s7, 272(sp)                     # 8-byte Folded Reload
	ld	s8, 264(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
