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
	ld	a1, 0(a0)
.Lpcrel_hi0:
	auipc	a2, %pcrel_hi(.LCPI0_0)
	ld	a2, %pcrel_lo(.Lpcrel_hi0)(a2)
	mul	a2, a1, a2
	srli	a3, a1, 45
	srli	a4, a1, 27
	xor	a3, a3, a4
	srli	a1, a1, 59
	negw	a4, a1
	sllw	a4, a3, a4
	srlw	a1, a3, a1
	or	a1, a1, a4
	addi	a2, a2, 1
	sd	a2, 0(a0)
	mv	a0, a1
	ret
.Lfunc_end0:
	.size	prng_pcg, .Lfunc_end0-prng_pcg
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
