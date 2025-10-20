	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_multi_key.c"
	.globl	xor_multi_key                   # -- Begin function xor_multi_key
	.p2align	1
	.type	xor_multi_key,@function
xor_multi_key:                          # @xor_multi_key
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
	sd	a4, -56(s0)
	li	a0, 0
	sd	a0, -64(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -64(s0)
	ld	a1, -32(s0)
	bgeu	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -40(s0)
	ld	a1, -64(s0)
	ld	a2, -56(s0)
	remu	a2, a1, a2
	add	a0, a0, a2
	lbu	a2, 0(a0)
	ld	a0, -24(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -64(s0)
	ld	a2, -56(s0)
	remu	a2, a1, a2
	add	a0, a0, a2
	lbu	a2, 0(a0)
	ld	a0, -24(s0)
	add	a1, a1, a0
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	j	.LBB0_1
.LBB0_4:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	xor_multi_key, .Lfunc_end0-xor_multi_key
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
