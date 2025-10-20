	.file	"rsa_pkcs1_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	mv	a7,a2
	sb	zero,0(a2)
	li	a5,2
	sb	a5,1(a2)
	sub	a3,a3,a1
	addi	t1,a3,-1
	bleu	t1,a5,.L2
	addi	a5,a2,2
	add	a6,a2,t1
	li	a4,-1
.L3:
	sb	a4,0(a5)
	addi	a5,a5,1
	bne	a5,a6,.L3
.L2:
	add	t1,a7,t1
	sb	zero,0(t1)
	mv	a2,a1
	mv	a1,a0
	add	a0,a7,a3
	call	memcpy@plt
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
