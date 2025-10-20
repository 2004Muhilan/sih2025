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
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	s7,40(sp)
	.cfi_offset 23, -72
	la	s7,__stack_chk_guard
	sd	s0,96(sp)
	sd	s1,88(sp)
	sd	s2,80(sp)
	sd	s3,72(sp)
	sd	s4,64(sp)
	sd	ra,104(sp)
	ld	a5, 0(s7)
	sd	a5, 24(sp)
	li	a5, 0
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 1, -8
	mv	s0,a0
	mv	s1,a1
	mv	s4,a2
	mv	s3,a3
	li	s2,1
	bne	a0,zero,.L18
.L2:
	sd	s0,0(s4)
	sd	s2,0(s3)
	ld	a4, 24(sp)
	ld	a5, 0(s7)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L19
	ld	ra,104(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	ld	s2,80(sp)
	.cfi_restore 18
	ld	s3,72(sp)
	.cfi_restore 19
	ld	s4,64(sp)
	.cfi_restore 20
	ld	s7,40(sp)
	.cfi_restore 23
	mv	a0,s1
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L18:
	.cfi_restore_state
	rem	s2,a1,a0
	sd	s5,56(sp)
	.cfi_offset 21, -56
	li	s5,1
	beq	s2,zero,.L3
	rem	s5,a0,s2
	li	a1,1
	bne	s5,zero,.L20
.L4:
	div	s1,s1,s0
	mv	s0,s2
	mv	s2,a1
	mul	s1,s1,a1
	sub	s5,s5,s1
.L3:
	mv	s1,s0
	mv	s0,s5
	ld	s5,56(sp)
	.cfi_remember_state
	.cfi_restore 21
	j	.L2
.L20:
	.cfi_restore_state
	sd	s6,48(sp)
	.cfi_offset 22, -64
	rem	s6,s2,s5
	li	a5,1
	beq	s6,zero,.L5
	rem	a0,s5,s6
	mv	a1,s6
	addi	a3,sp,16
	addi	a2,sp,8
	call	rsa_extended_gcd
	div	a1,s5,s6
	ld	a5,8(sp)
	ld	a3,16(sp)
	div	a4,s2,s5
	mv	s5,a0
	mul	a1,a1,a5
	sub	s6,a3,a1
	mul	a4,a4,s6
	sub	a5,a5,a4
.L5:
	div	a4,s0,s2
	mv	s2,s5
	mv	s5,a5
	mul	a5,a4,a5
	sub	a1,s6,a5
	ld	s6,48(sp)
	.cfi_restore 22
	j	.L4
.L19:
	.cfi_restore 21
	sd	s5,56(sp)
	sd	s6,48(sp)
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
