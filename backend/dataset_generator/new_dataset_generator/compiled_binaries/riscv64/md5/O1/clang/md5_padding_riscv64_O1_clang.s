	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"md5_padding.c"
	.globl	md5_padding                     # -- Begin function md5_padding
	.p2align	1
	.type	md5_padding,@function
md5_padding:                            # @md5_padding
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
	slli	a0, s1, 3
	add	s0, s0, s2
	srli	a1, s1, 53
	sb	a1, 7(s0)
	srli	a1, s1, 45
	sb	a1, 6(s0)
	srli	a1, s1, 37
	sb	a1, 5(s0)
	srli	a1, s1, 29
	sb	a1, 4(s0)
	srli	a1, s1, 21
	sb	a1, 3(s0)
	srli	a1, s1, 13
	sb	a1, 2(s0)
	srli	s1, s1, 5
	sb	s1, 1(s0)
	sb	a0, 0(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
