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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a5,-56(s0)
	sb	zero,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,1
	li	a4,2
	sb	a4,0(a5)
	li	a5,2
	sd	a5,-24(s0)
	j	.L2
.L3:
	ld	a4,-56(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	li	a4,-1
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L2:
	ld	a4,-64(s0)
	ld	a5,-48(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	ld	a4,-24(s0)
	bltu	a4,a5,.L3
	ld	a4,-64(s0)
	ld	a5,-48(s0)
	sub	a5,a4,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a4,-64(s0)
	ld	a5,-48(s0)
	sub	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a2,-48(s0)
	ld	a1,-40(s0)
	mv	a0,a5
	call	memcpy@plt
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
