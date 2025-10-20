	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   # -- Begin function rsa_pkcs1_pad
	.p2align	1
	.type	rsa_pkcs1_pad,@function
rsa_pkcs1_pad:                          # @rsa_pkcs1_pad
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
	sd	a3, -48(s0)
	ld	a1, -40(s0)
	li	a0, 0
	sb	a0, 0(a1)
	ld	a1, -40(s0)
	li	a0, 2
	sb	a0, 1(a1)
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	ld	a2, -48(s0)
	ld	a1, -32(s0)
	not	a1, a1
	add	a1, a1, a2
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	add	a1, a1, a0
	li	a0, 255
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB0_1
.LBB0_4:
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	ld	a2, -32(s0)
	sub	a0, a0, a2
	add	a1, a1, a0
	li	a0, 0
	sb	a0, -1(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	ld	a2, -32(s0)
	sub	a0, a0, a2
	ld	a1, -24(s0)
	call	memcpy
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
