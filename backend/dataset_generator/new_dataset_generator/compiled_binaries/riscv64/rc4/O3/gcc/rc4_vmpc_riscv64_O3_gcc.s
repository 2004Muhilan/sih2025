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
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	la	a6,__stack_chk_guard
	sd	ra,280(sp)
	.cfi_offset 1, -8
	ld	a5, 0(a6)
	sd	a5, 264(sp)
	li	a5, 0
	addi	a4,sp,8
	li	a3,256
.L2:
	sb	a5,0(a4)
	addiw	a5,a5,1
	addi	a4,a4,1
	bne	a5,a3,.L2
	beq	a1,zero,.L1
	add	a2,a0,a1
	li	a3,0
.L4:
	lbu	a4,0(a0)
	addi	a0,a0,1
	addi	a5,a4,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	addw	a5,a5,a3
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a3,-264(a5)
	addi	a5,a3,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	xor	a4,a4,a5
	sb	a4,-1(a0)
	bne	a2,a0,.L4
.L1:
	ld	a4, 264(sp)
	ld	a5, 0(a6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L13
	ld	ra,280(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
