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
	remu	a1, a0, a2
	remu	a0, a0, a3
	mul	a1, a1, a3
	mul	a0, a0, a2
	add	a0, a0, a1
	mul	a1, a3, a2
	remu	a0, a0, a1
	ret
.Lfunc_end0:
	.size	rsa_crt_decrypt, .Lfunc_end0-rsa_crt_decrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
