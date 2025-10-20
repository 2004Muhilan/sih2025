	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"md5_round4.c"
	.globl	md5_round4                      # -- Begin function md5_round4
	.p2align	1
	.type	md5_round4,@function
md5_round4:                             # @md5_round4
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
                                        # kill: def $x17 killed $x16
                                        # kill: def $x17 killed $x15
                                        # kill: def $x17 killed $x14
                                        # kill: def $x17 killed $x13
                                        # kill: def $x17 killed $x12
                                        # kill: def $x17 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	sw	a3, -36(s0)
	sw	a4, -40(s0)
	sw	a5, -44(s0)
	sw	a6, -48(s0)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	lw	a2, 0(a1)
	lw	a3, -32(s0)
	lw	a4, -36(s0)
	not	a4, a4
	or	a4, a4, a0
	xor	a3, a3, a4
	addw	a2, a2, a3
	lw	a3, -40(s0)
	addw	a2, a2, a3
	lw	a3, -48(s0)
	addw	a2, a2, a3
	lwu	a3, -44(s0)
	sllw	a2, a2, a3
	addw	a0, a0, a2
	sw	a0, 0(a1)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	md5_round4, .Lfunc_end0-md5_round4
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
