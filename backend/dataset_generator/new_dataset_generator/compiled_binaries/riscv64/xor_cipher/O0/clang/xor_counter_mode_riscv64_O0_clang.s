	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                # -- Begin function xor_counter_mode
	.p2align	1
	.type	xor_counter_mode,@function
xor_counter_mode:                       # @xor_counter_mode
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
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
	ld	a2, -64(s0)
	ld	a1, -48(s0)
	remu	a1, a2, a1
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	addw	a1, a1, a2
	xor	a0, a0, a1
	sb	a0, -65(s0)
	lbu	a2, -65(s0)
	ld	a0, -24(s0)
	ld	a1, -64(s0)
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
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	xor_counter_mode, .Lfunc_end0-xor_counter_mode
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
