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
	sd	ra,152(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a3, 0(a5)
	sd	a3, 136(sp)
	li	a3, 0
	addi	t4,sp,72
	addi	a7,sp,8
	mv	a6,a7
	mv	a2,t4
	li	a5,0
	li	t6,54
	li	t5,92
	li	t1,64
	j	.L3
.L12:
	addi	a2,a7,16
.L4:
	lbu	a5,0(a7)
	lbu	a3,0(t4)
	xor	a5,a5,a3
	sb	a5,0(a4)
	addi	a7,a7,1
	addi	t4,t4,1
	addi	a4,a4,1
	bne	a7,a2,.L4
	la	a5,__stack_chk_guard
	ld	a4, 136(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L11
	ld	ra,152(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.L2:
	.cfi_restore_state
	sb	t6,0(a6)
	mv	a3,t5
.L5:
	sb	a3,0(a2)
	addi	a5,a5,1
	addi	a2,a2,1
	addi	a0,a0,1
	addi	a6,a6,1
	beq	a5,t1,.L12
.L3:
	bleu	a1,a5,.L2
	lbu	a3,0(a0)
	xori	t3,a3,54
	sb	t3,0(a6)
	xori	a3,a3,92
	j	.L5
.L11:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	hmac_md5, .-hmac_md5
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
