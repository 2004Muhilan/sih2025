	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_prga.c"
	.globl	rc4_prga                        # -- Begin function rc4_prga
	.p2align	1
	.type	rc4_prga,@function
rc4_prga:                               # @rc4_prga
	.cfi_startproc
# %bb.0:
	lbu	a3, 0(a1)
	addi	a3, a3, 1
	sb	a3, 0(a1)
	lbu	a4, 0(a2)
	andi	a3, a3, 255
	add	a3, a3, a0
	lbu	a3, 0(a3)
	add	a3, a3, a4
	sb	a3, 0(a2)
	lbu	a4, 0(a1)
	andi	a3, a3, 255
	add	a3, a3, a0
	lbu	a3, 0(a3)
	add	a4, a4, a0
	lbu	a5, 0(a4)
	sb	a3, 0(a4)
	lbu	a3, 0(a2)
	add	a3, a3, a0
	sb	a5, 0(a3)
	lbu	a1, 0(a1)
	lbu	a2, 0(a2)
	add	a1, a1, a0
	lbu	a1, 0(a1)
	add	a2, a2, a0
	lbu	a2, 0(a2)
	add	a1, a1, a2
	andi	a1, a1, 255
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ret
.Lfunc_end0:
	.size	rc4_prga, .Lfunc_end0-rc4_prga
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
