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
	lui	a3, 1
	addiw	a3, a3, -863
	sd	a3, 0(a0)
	li	a0, 17
	sd	a0, 0(a1)
	sd	zero, 0(a2)
	ret
.Lfunc_end0:
	.size	rsa_generate_keys, .Lfunc_end0-rsa_generate_keys
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
