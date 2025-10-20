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
	sd	ra,280(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 264(sp)
	li	a4, 0
	addi	a4,sp,8
	li	a5,0
	li	a3,256
.L2:
	sb	a5,0(a4)
	addiw	a5,a5,1
	addi	a4,a4,1
	bne	a5,a3,.L2
	beq	a1,zero,.L1
	mv	a4,a0
	add	a1,a0,a1
	li	a2,0
.L4:
	lbu	a3,0(a4)
	addi	a5,a3,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	addw	a5,a5,a2
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a2,-264(a5)
	addi	a5,a2,272
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
	xor	a3,a3,a5
	sb	a3,0(a4)
	addi	a4,a4,1
	bne	a4,a1,.L4
.L1:
	la	a5,__stack_chk_guard
	ld	a4, 264(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L9
	ld	ra,280(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
