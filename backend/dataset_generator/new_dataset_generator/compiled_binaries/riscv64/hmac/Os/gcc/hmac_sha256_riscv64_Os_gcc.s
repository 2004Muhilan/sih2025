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
	la	a2,__stack_chk_guard
	sd	ra,152(sp)
	.cfi_offset 1, -8
	ld	a5, 0(a2)
	sd	a5, 136(sp)
	li	a5, 0
	addi	a7,sp,8
	addi	a6,sp,72
	li	t1,64
.L4:
	li	a3,54
	bleu	a1,a5,.L2
	add	a3,a0,a5
	lbu	a3,0(a3)
	xori	a3,a3,54
.L2:
	add	t3,a7,a5
	sb	a3,0(t3)
	li	a3,92
	bleu	a1,a5,.L3
	add	a3,a0,a5
	lbu	a3,0(a3)
	xori	a3,a3,92
.L3:
	add	t3,a6,a5
	sb	a3,0(t3)
	addi	a5,a5,1
	bne	a5,t1,.L4
	li	a5,0
	li	a1,32
.L5:
	add	a3,a7,a5
	add	t1,a6,a5
	lbu	a3,0(a3)
	lbu	t1,0(t1)
	add	a0,a4,a5
	addi	a5,a5,1
	xor	a3,a3,t1
	sb	a3,0(a0)
	bne	a5,a1,.L5
	ld	a4, 136(sp)
	ld	a5, 0(a2)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,152(sp)
	.cfi_restore 1
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
