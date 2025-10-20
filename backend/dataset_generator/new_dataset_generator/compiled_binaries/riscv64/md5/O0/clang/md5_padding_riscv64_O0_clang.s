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
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -40(s0)
	ld	a1, -24(s0)
	ld	a2, -32(s0)
	call	memcpy
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	add	a1, a1, a0
	li	a0, 128
	sb	a0, 0(a1)
	ld	a1, -32(s0)
	li	a0, 55
	subw	a0, a0, a1
	andi	a0, a0, 63
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	add	a0, a0, a1
	addi	a0, a0, 1
	ld	a2, -48(s0)
	li	a1, 0
	call	memset
	ld	a0, -32(s0)
	slli	a0, a0, 3
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	add	a0, a0, a1
	ld	a1, -48(s0)
	add	a1, a1, a0
	lbu	a0, -49(s0)
	sb	a0, 8(a1)
	lbu	a0, -50(s0)
	sb	a0, 7(a1)
	lbu	a0, -51(s0)
	sb	a0, 6(a1)
	lbu	a0, -52(s0)
	sb	a0, 5(a1)
	lbu	a0, -53(s0)
	sb	a0, 4(a1)
	lbu	a0, -54(s0)
	sb	a0, 3(a1)
	lbu	a0, -55(s0)
	sb	a0, 2(a1)
	lbu	a0, -56(s0)
	sb	a0, 1(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
