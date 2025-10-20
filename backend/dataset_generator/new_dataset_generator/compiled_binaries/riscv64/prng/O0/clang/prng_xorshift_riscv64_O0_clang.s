	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   # -- Begin function prng_xorshift
	.p2align	1
	.type	prng_xorshift,@function
prng_xorshift:                          # @prng_xorshift
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
	lw	a0, 0(a0)
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	slliw	a1, a0, 13
	xor	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	srliw	a1, a0, 17
	xor	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	slliw	a1, a0, 5
	xor	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	prng_xorshift, .Lfunc_end0-prng_xorshift
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
