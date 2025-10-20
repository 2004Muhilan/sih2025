	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               # -- Begin function rsa_generate_keys
	.p2align	1
	.type	rsa_generate_keys,@function
rsa_generate_keys:                      # @rsa_generate_keys
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
	li	a0, 61
	sd	a0, -48(s0)
	li	a0, 53
	sd	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	mul	a0, a0, a1
	ld	a1, -24(s0)
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	addi	a0, a0, -1
	ld	a1, -56(s0)
	addi	a1, a1, -1
	mul	a0, a0, a1
	sd	a0, -64(s0)
	ld	a1, -32(s0)
	li	a0, 17
	sd	a0, 0(a1)
	ld	a1, -40(s0)
	li	a0, 0
	sd	a0, 0(a1)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
