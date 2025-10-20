	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_seed.c"
	.globl	prng_seed                       # -- Begin function prng_seed
	.p2align	1
	.type	prng_seed,@function
prng_seed:                              # @prng_seed
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
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -28(s0)
	lui	a1, 442489
	addiw	a1, a1, -1691
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sw	a0, 4(a1)
	lw	a0, -28(s0)
	lui	a1, 200520
	addiw	a1, a1, -624
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sw	a0, 8(a1)
	lw	a0, -28(s0)
	lui	a1, 389974
	addiw	a1, a1, 1173
	xor	a0, a0, a1
	ld	a1, -24(s0)
	sw	a0, 12(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	prng_seed, .Lfunc_end0-prng_seed
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
