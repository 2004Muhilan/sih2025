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
	xor	a0, a0, a1
	xor	a2, a2, a3
	xor	a0, a0, a2
	ret
.Lfunc_end0:
	.size	des3_encrypt, .Lfunc_end0-des3_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
