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
	sd	ra, 328(sp)                     # 8-byte Folded Spill
	sd	s0, 320(sp)                     # 8-byte Folded Spill
	sd	s1, 312(sp)                     # 8-byte Folded Spill
	sd	s2, 304(sp)                     # 8-byte Folded Spill
	sd	s3, 296(sp)                     # 8-byte Folded Spill
	sd	s4, 288(sp)                     # 8-byte Folded Spill
	sd	s5, 280(sp)                     # 8-byte Folded Spill
	sd	s6, 272(sp)                     # 8-byte Folded Spill
	sd	s7, 264(sp)                     # 8-byte Folded Spill
	sd	s8, 256(sp)                     # 8-byte Folded Spill
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
	mv	s2, a0
	mv	a0, sp
	li	a2, 64
	call	memcpy
	lw	a1, 0(sp)
	addi	a0, sp, 64
	addi	t6, sp, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a2, -28(a0)
	lwu	a3, -60(a0)
	add	a1, a1, a2
	srli	a2, a3, 7
	slli	a4, a3, 25
	or	a2, a2, a4
	srli	a4, a3, 18
	slli	a5, a3, 14
	or	a4, a4, a5
	lw	s0, -8(a0)
	xor	a2, a2, a4
	srli	a4, a3, 3
	xor	a2, a2, a4
	srliw	a4, s0, 17
	slli	a5, s0, 15
	or	a4, a4, a5
	srliw	a5, s0, 19
	slli	s1, s0, 13
	or	a5, a5, s1
	xor	a4, a4, a5
	srliw	a5, s0, 10
	xor	a4, a4, a5
	add	a1, a1, a2
	add	a1, a1, a4
	sw	a1, 0(a0)
	addi	a0, a0, 4
	mv	a1, a3
	bne	a0, t6, .LBB0_1
# %bb.2:
	lw	t5, 0(s2)
	lw	t4, 4(s2)
	lw	t3, 8(s2)
	lw	t2, 12(s2)
	lw	t1, 16(s2)
	lw	t0, 20(s2)
	lw	a7, 24(s2)
	lw	a6, 28(s2)
	mv	a4, sp
	lui	a0, 272547
	addi	s3, a0, -104
	mv	a3, t5
	mv	a2, t4
	mv	s7, a6
	mv	a1, a7
	mv	a0, t0
	mv	a5, t1
	mv	s4, t2
	mv	s1, t3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	mv	s8, s1
	mv	s0, a5
	mv	s6, a0
	mv	s5, a1
	mv	s1, a2
	mv	a2, a3
	srliw	a0, a5, 6
	slli	a1, a5, 26
	or	a0, a0, a1
	srliw	a1, a5, 11
	slli	a3, a5, 21
	or	a1, a1, a3
	xor	a0, a0, a1
	srliw	a1, a5, 25
	slli	a3, a5, 7
	or	a1, a1, a3
	xor	a0, a0, a1
	and	a1, s6, a5
	not	a3, a5
	and	a3, s5, a3
	lw	a5, 0(a4)
	add	a1, a1, s7
	add	a1, a1, a3
	add	a0, a0, a1
	add	a5, a5, s3
	add	a0, a0, a5
	srliw	a1, a2, 2
	slli	a3, a2, 30
	or	a1, a1, a3
	srliw	a3, a2, 13
	slli	a5, a2, 19
	or	a3, a3, a5
	xor	a1, a1, a3
	srliw	a3, a2, 22
	slli	a5, a2, 10
	or	a3, a3, a5
	xor	a1, a1, a3
	xor	a3, s1, s8
	and	a3, a3, a2
	and	a5, s1, s8
	xor	a3, a3, a5
	add	a1, a1, a3
	add	a5, a0, s4
	addi	a4, a4, 4
	add	a3, a1, a0
	mv	s7, s5
	mv	a1, s6
	mv	a0, s0
	mv	s4, s8
	bne	a4, t6, .LBB0_3
# %bb.4:
	add	a3, a3, t5
	sw	a3, 0(s2)
	add	a2, a2, t4
	sw	a2, 4(s2)
	add	t3, t3, s1
	sw	t3, 8(s2)
	add	t2, t2, s8
	sw	t2, 12(s2)
	add	a5, a5, t1
	sw	a5, 16(s2)
	add	t0, t0, s0
	sw	t0, 20(s2)
	add	a7, a7, s6
	sw	a7, 24(s2)
	add	a6, a6, s5
	sw	a6, 28(s2)
	ld	ra, 328(sp)                     # 8-byte Folded Reload
	ld	s0, 320(sp)                     # 8-byte Folded Reload
	ld	s1, 312(sp)                     # 8-byte Folded Reload
	ld	s2, 304(sp)                     # 8-byte Folded Reload
	ld	s3, 296(sp)                     # 8-byte Folded Reload
	ld	s4, 288(sp)                     # 8-byte Folded Reload
	ld	s5, 280(sp)                     # 8-byte Folded Reload
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	ld	s7, 264(sp)                     # 8-byte Folded Reload
	ld	s8, 256(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end0:
	.size	sha256_compress, .Lfunc_end0-sha256_compress
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
