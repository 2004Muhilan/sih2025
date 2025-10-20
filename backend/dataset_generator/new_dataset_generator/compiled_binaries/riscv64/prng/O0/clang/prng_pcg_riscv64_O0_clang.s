	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"prng_pcg.c"
	.section	.sdata,"aw",@progbits
	.p2align	3, 0x0                          # -- Begin function prng_pcg
.LCPI0_0:
	.quad	6364136223846793005             # 0x5851f42d4c957f2d
	.text
	.globl	prng_pcg
	.p2align	1
	.type	prng_pcg,@function
prng_pcg:                               # @prng_pcg
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
	ld	a0, -24(s0)
	ld	a0, 0(a0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(.LCPI0_0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	ld	a1, 0(a1)
	mul	a0, a0, a1
	addi	a0, a0, 1
	ld	a1, -24(s0)
	sd	a0, 0(a1)
	ld	a0, -32(s0)
	srli	a1, a0, 27
	srli	a0, a0, 45
	xor	a0, a0, a1
	sw	a0, -36(s0)
	ld	a0, -32(s0)
	srli	a0, a0, 59
	sw	a0, -40(s0)
	lw	a1, -36(s0)
	lwu	a3, -40(s0)
	srlw	a0, a1, a3
	li	a2, 0
	subw	a2, a2, a3
	sllw	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
