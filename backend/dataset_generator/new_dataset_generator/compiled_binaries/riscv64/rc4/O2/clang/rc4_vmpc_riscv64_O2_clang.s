	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                # -- Begin function rc4_vmpc_variant
	.p2align	1
	.type	rc4_vmpc_variant,@function
rc4_vmpc_variant:                       # @rc4_vmpc_variant
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -256
	.cfi_def_cfa_offset 256
	li	a2, 0
	mv	a3, sp
	li	a4, 256
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add	a5, a3, a2
	sb	a2, 0(a5)
	addi	a2, a2, 1
	bne	a2, a4, .LBB0_1
# %bb.2:
	beqz	a1, .LBB0_5
# %bb.3:
	li	a3, 0
	add	a1, a1, a0
	mv	a2, sp
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lbu	a4, 0(a0)
	add	a5, a2, a4
	lbu	a5, 0(a5)
	add	a3, a3, a5
	andi	a3, a3, 255
	add	a3, a3, a2
	lbu	a3, 0(a3)
	add	a5, a2, a3
	lbu	a5, 0(a5)
	add	a5, a5, a2
	lbu	a5, 0(a5)
	addi	a5, a5, 1
	andi	a5, a5, 255
	add	a5, a5, a2
	lbu	a5, 0(a5)
	xor	a4, a4, a5
	sb	a4, 0(a0)
	addi	a0, a0, 1
	bne	a0, a1, .LBB0_4
.LBB0_5:
	addi	sp, sp, 256
	ret
.Lfunc_end0:
	.size	rc4_vmpc_variant, .Lfunc_end0-rc4_vmpc_variant
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
