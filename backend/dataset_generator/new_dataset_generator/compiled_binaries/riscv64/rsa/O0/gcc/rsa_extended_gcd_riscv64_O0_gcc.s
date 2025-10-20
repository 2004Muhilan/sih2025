	.file	"rsa_extended_gcd.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_extended_gcd
	.type	rsa_extended_gcd, @function
rsa_extended_gcd:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-56(s0)
	bne	a5,zero,.L2
	ld	a5,-72(s0)
	sd	zero,0(a5)
	ld	a5,-80(s0)
	li	a4,1
	sd	a4,0(a5)
	ld	a5,-64(s0)
	j	.L4
.L2:
	ld	a4,-64(s0)
	ld	a5,-56(s0)
	rem	a5,a4,a5
	addi	a3,s0,-40
	addi	a4,s0,-48
	mv	a2,a4
	ld	a1,-56(s0)
	mv	a0,a5
	call	rsa_extended_gcd
	sd	a0,-32(s0)
	ld	a4,-40(s0)
	ld	a3,-64(s0)
	ld	a5,-56(s0)
	div	a3,a3,a5
	ld	a5,-48(s0)
	mul	a5,a3,a5
	sub	a4,a4,a5
	ld	a5,-72(s0)
	sd	a4,0(a5)
	ld	a4,-48(s0)
	ld	a5,-80(s0)
	sd	a4,0(a5)
	ld	a5,-32(s0)
.L4:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
