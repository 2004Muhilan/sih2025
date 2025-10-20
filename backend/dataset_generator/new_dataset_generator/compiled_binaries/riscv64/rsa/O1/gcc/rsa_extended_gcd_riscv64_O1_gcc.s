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
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s0,a0
	mv	s1,a1
	mv	s3,a2
	mv	s2,a3
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 24(sp)
	li	a4, 0
	li	a5,1
	bne	a0,zero,.L6
.L2:
	sd	s0,0(s3)
	sd	a5,0(s2)
	la	a5,__stack_chk_guard
	ld	a4, 24(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L7
	mv	a0,s1
	ld	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L6:
	.cfi_restore_state
	addi	a3,sp,16
	addi	a2,sp,8
	mv	a1,a0
	rem	a0,s1,a0
	call	rsa_extended_gcd
	ld	a5,8(sp)
	div	s0,s1,s0
	mul	s0,s0,a5
	ld	a4,16(sp)
	sub	s0,a4,s0
	mv	s1,a0
	j	.L2
.L7:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
