	.file	"hmac_md5.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_md5
	.type	hmac_md5, @function
hmac_md5:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	la	t5,__stack_chk_guard
	addi	t1,sp,8
	addi	t4,sp,72
	sd	ra,152(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t5)
	sd	a5, 136(sp)
	li	a5, 0
	mv	a6,t4
	mv	a2,t1
	li	t3,64
.L3:
	bgeu	a5,a1,.L6
	add	a3,a0,a5
	lbu	a3,0(a3)
	xori	a7,a3,54
	xori	a3,a3,92
.L2:
	sb	a7,0(a2)
	sb	a3,0(a6)
	addi	a5,a5,1
	addi	a2,a2,1
	addi	a6,a6,1
	bne	a5,t3,.L3
	addi	a2,t1,16
.L4:
	lbu	a5,0(t1)
	lbu	a3,0(t4)
	addi	t1,t1,1
	addi	t4,t4,1
	xor	a5,a5,a3
	sb	a5,0(a4)
	addi	a4,a4,1
	bne	t1,a2,.L4
	ld	a4, 136(sp)
	ld	a5, 0(t5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L11
	ld	ra,152(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L6:
	.cfi_restore_state
	li	a7,54
	li	a3,92
	j	.L2
.L11:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
