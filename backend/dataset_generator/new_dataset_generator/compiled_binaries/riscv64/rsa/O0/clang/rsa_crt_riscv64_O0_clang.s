	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rsa_crt.c"
	.globl	rsa_crt_decrypt                 # -- Begin function rsa_crt_decrypt
	.p2align	1
	.type	rsa_crt_decrypt,@function
rsa_crt_decrypt:                        # @rsa_crt_decrypt
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
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	addi	a1, a1, -1
	remu	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -48(s0)
	addi	a1, a1, -1
	remu	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	remu	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -24(s0)
	ld	a1, -48(s0)
	remu	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -72(s0)
	ld	a2, -48(s0)
	mul	a0, a0, a2
	ld	a3, -80(s0)
	ld	a1, -40(s0)
	mul	a3, a3, a1
	add	a0, a0, a3
	mul	a1, a1, a2
	remu	a0, a0, a1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
