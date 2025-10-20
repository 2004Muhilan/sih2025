	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha256_padding.c"
	.globl	sha256_padding                  # -- Begin function sha256_padding
	.p2align	1
	.type	sha256_padding,@function
sha256_padding:                         # @sha256_padding
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	sd	s2, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	mv	s0, a2
	mv	s1, a1
	mv	a1, a0
	mv	a0, a2
	mv	a2, s1
	call	memcpy
	add	s0, s0, s1
	li	a0, 128
	sb	a0, 0(s0)
	li	a0, 55
	subw	a0, a0, s1
	andi	s2, a0, 63
	addi	s0, s0, 1
	mv	a0, s0
	li	a1, 0
	mv	a2, s2
	call	memset
	slli	s1, s1, 3
	add	s0, s0, s2
	li	a0, 56
	li	a1, -8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srl	a2, s1, a0
	sb	a2, 0(s0)
	addi	a0, a0, -8
	addi	s0, s0, 1
	bne	a0, a1, .LBB0_1
# %bb.2:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	sha256_padding, .Lfunc_end0-sha256_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
