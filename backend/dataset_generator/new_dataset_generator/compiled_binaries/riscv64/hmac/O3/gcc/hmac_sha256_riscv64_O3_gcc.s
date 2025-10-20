	.file	"hmac_sha256.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	la	t0,__stack_chk_guard
	addi	t5,sp,8
	addi	t6,sp,72
	sd	ra,152(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t0)
	sd	a5, 136(sp)
	li	a5, 0
	mv	a2,t6
	mv	a3,t5
	li	t4,54
	li	t3,92
	li	a7,64
.L5:
	bgeu	a5,a1,.L2
	add	a6,a0,a5
	lbu	a6,0(a6)
	addi	a3,a3,1
	addi	a5,a5,1
	xori	t1,a6,54
	xori	a6,a6,92
	sb	a6,0(a2)
	sb	t1,-1(a3)
	addi	a2,a2,1
	bne	a5,a7,.L5
	andi	a5,a4,7
	bne	a5,zero,.L6
.L14:
	ld	a5,8(sp)
	ld	a1,72(sp)
	ld	a2,16(sp)
	ld	a3,24(sp)
	xor	a1,a1,a5
	ld	a5,80(sp)
	ld	a0,32(sp)
	sd	a1,0(a4)
	xor	a2,a2,a5
	ld	a5,88(sp)
	sd	a2,8(a4)
	xor	a3,a3,a5
	ld	a5,96(sp)
	sd	a3,16(a4)
	xor	a5,a5,a0
	sd	a5,24(a4)
.L1:
	ld	a4, 136(sp)
	ld	a5, 0(t0)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L13
	ld	ra,152(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L2:
	.cfi_restore_state
	sb	t4,0(a3)
	sb	t3,0(a2)
	addi	a5,a5,1
	addi	a3,a3,1
	addi	a2,a2,1
	bne	a5,a7,.L5
	andi	a5,a4,7
	beq	a5,zero,.L14
.L6:
	addi	a2,t5,32
.L8:
	lbu	a5,0(t5)
	lbu	a3,0(t6)
	addi	t5,t5,1
	addi	t6,t6,1
	xor	a5,a5,a3
	sb	a5,0(a4)
	addi	a4,a4,1
	bne	t5,a2,.L8
	j	.L1
.L13:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
