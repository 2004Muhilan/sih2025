	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"des3_triple.c"
	.globl	des3_encrypt                    # -- Begin function des3_encrypt
	.p2align	1
	.type	des3_encrypt,@function
des3_encrypt:                           # @des3_encrypt
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
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	xor	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	xor	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	xor	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	des3_encrypt, .Lfunc_end0-des3_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
