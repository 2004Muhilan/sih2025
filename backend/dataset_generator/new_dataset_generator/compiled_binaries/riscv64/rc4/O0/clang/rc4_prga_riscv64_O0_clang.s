	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.p2align	1
	.type	rc4_prga,@function
rc4_prga:                               # @rc4_prga
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
	sd	a2, -40(s0)
	ld	a1, -32(s0)
	lbu	a0, 0(a1)
	addiw	a0, a0, 1
	sb	a0, 0(a1)
	ld	a1, -40(s0)
	lbu	a0, 0(a1)
	ld	a2, -24(s0)
	ld	a3, -32(s0)
	lbu	a3, 0(a3)
	add	a2, a2, a3
	lbu	a2, 0(a2)
	addw	a0, a0, a2
	sb	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	sb	a0, -41(s0)
	ld	a1, -24(s0)
	ld	a0, -40(s0)
	lbu	a0, 0(a0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a2, -32(s0)
	lbu	a2, 0(a2)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lbu	a0, -41(s0)
	ld	a1, -24(s0)
	ld	a2, -40(s0)
	lbu	a2, 0(a2)
	add	a1, a1, a2
	sb	a0, 0(a1)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	ld	a2, -40(s0)
	lbu	a2, 0(a2)
	add	a2, a2, a0
	lbu	a2, 0(a2)
	addw	a1, a1, a2
	andi	a1, a1, 255
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
