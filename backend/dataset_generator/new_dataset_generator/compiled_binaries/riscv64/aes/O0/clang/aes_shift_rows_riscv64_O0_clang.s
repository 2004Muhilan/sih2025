	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  # -- Begin function aes_shift_rows
	.p2align	1
	.type	aes_shift_rows,@function
aes_shift_rows:                         # @aes_shift_rows
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	lbu	a0, 1(a0)
	sb	a0, -25(s0)
	ld	a1, -24(s0)
	lbu	a0, 5(a1)
	sb	a0, 1(a1)
	ld	a1, -24(s0)
	lbu	a0, 9(a1)
	sb	a0, 5(a1)
	ld	a1, -24(s0)
	lbu	a0, 13(a1)
	sb	a0, 9(a1)
	lbu	a0, -25(s0)
	ld	a1, -24(s0)
	sb	a0, 13(a1)
	ld	a0, -24(s0)
	lbu	a0, 2(a0)
	sb	a0, -25(s0)
	ld	a1, -24(s0)
	lbu	a0, 10(a1)
	sb	a0, 2(a1)
	lbu	a0, -25(s0)
	ld	a1, -24(s0)
	sb	a0, 10(a1)
	ld	a0, -24(s0)
	lbu	a0, 6(a0)
	sb	a0, -25(s0)
	ld	a1, -24(s0)
	lbu	a0, 14(a1)
	sb	a0, 6(a1)
	lbu	a0, -25(s0)
	ld	a1, -24(s0)
	sb	a0, 14(a1)
	ld	a0, -24(s0)
	lbu	a0, 15(a0)
	sb	a0, -25(s0)
	ld	a1, -24(s0)
	lbu	a0, 11(a1)
	sb	a0, 15(a1)
	ld	a1, -24(s0)
	lbu	a0, 7(a1)
	sb	a0, 11(a1)
	ld	a1, -24(s0)
	lbu	a0, 3(a1)
	sb	a0, 7(a1)
	lbu	a0, -25(s0)
	ld	a1, -24(s0)
	sb	a0, 3(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
