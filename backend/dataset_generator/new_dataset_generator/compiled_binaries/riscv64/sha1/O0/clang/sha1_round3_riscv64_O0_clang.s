	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"sha1_round3.c"
	.globl	sha1_round3                     # -- Begin function sha1_round3
	.p2align	1
	.type	sha1_round3,@function
sha1_round3:                            # @sha1_round3
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
                                        # kill: def $x16 killed $x15
                                        # kill: def $x16 killed $x14
                                        # kill: def $x16 killed $x13
                                        # kill: def $x16 killed $x12
                                        # kill: def $x16 killed $x11
                                        # kill: def $x16 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	sw	a2, -28(s0)
	sw	a3, -32(s0)
	sw	a4, -36(s0)
	sw	a5, -40(s0)
	lw	a0, -20(s0)
	srliw	a1, a0, 27
	slliw	a0, a0, 5
	or	a0, a0, a1
	lw	a1, -24(s0)
	lw	a2, -28(s0)
	lw	a3, -32(s0)
	or	a4, a2, a3
	and	a1, a1, a4
	and	a2, a2, a3
	or	a1, a1, a2
	addw	a0, a0, a1
	lw	a1, -36(s0)
	addw	a0, a0, a1
	lw	a1, -40(s0)
	addw	a0, a0, a1
	lui	a1, 586172
	addiw	a1, a1, -804
	addw	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	sha1_round3, .Lfunc_end0-sha1_round3
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
