	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_ksa.c"
	.globl	rc4_ksa                         # -- Begin function rc4_ksa
	.p2align	1
	.type	rc4_ksa,@function
rc4_ksa:                                # @rc4_ksa
	.cfi_startproc
# %bb.0:
	li	a3, 0
	li	a4, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a5, a0, a3
	sb	a3, 0(a5)
	addi	a3, a3, 1
	bne	a3, a4, .LBB0_1
# %bb.2:
	li	a3, 0
	li	a5, 0
	li	a6, 256
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	add	t0, a0, a3
	lbu	a7, 0(t0)
	remu	a4, a3, a2
	add	a4, a4, a1
	lbu	a4, 0(a4)
	add	a5, a5, a7
	add	a5, a5, a4
	andi	a4, a5, 255
	add	t1, a0, a4
	lbu	a4, 0(t1)
	sb	a4, 0(t0)
	addi	a3, a3, 1
	sb	a7, 0(t1)
	bne	a3, a6, .LBB0_3
# %bb.4:
	ret
.Lfunc_end0:
	.size	rc4_ksa, .Lfunc_end0-rc4_ksa
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
