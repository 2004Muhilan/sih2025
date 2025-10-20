	.file	"rc4_vmpc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)
	sd	s0,320(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sd	a0,-312(s0)
	sd	a1,-320(s0)
	sd	a2,-328(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-292(s0)
	j	.L2
.L3:
	lw	a5,-292(s0)
	andi	a4,a5,0xff
	lw	a5,-292(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-264(a5)
	lw	a5,-292(s0)
	addiw	a5,a5,1
	sw	a5,-292(s0)
.L2:
	lw	a5,-292(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L3
	sb	zero,-293(s0)
	sd	zero,-288(s0)
	j	.L4
.L5:
	ld	a4,-312(s0)
	ld	a5,-288(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-264(a5)
	lbu	a4,-293(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-264(a5)
	sb	a5,-293(s0)
	ld	a4,-312(s0)
	ld	a5,-288(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lbu	a5,-293(s0)
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-264(a5)
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-264(a5)
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-264(a5)
	ld	a2,-312(s0)
	ld	a5,-288(s0)
	add	a5,a2,a5
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-288(s0)
	addi	a5,a5,1
	sd	a5,-288(s0)
.L4:
	ld	a4,-288(s0)
	ld	a5,-320(s0)
	bltu	a4,a5,.L5
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,328(sp)
	.cfi_restore 1
	ld	s0,320(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
