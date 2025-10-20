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
	sd	s4,32(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	ld	a5, 0(s4)
	sd	a5, 24(sp)
	li	a5, 0
	sd	ra,72(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	mv	s0,a0
	mv	s1,a1
	mv	s3,a2
	mv	s2,a3
	li	a5,1
	beq	a0,zero,.L2
	mv	a1,a0
	rem	a0,s1,a0
	addi	a3,sp,16
	addi	a2,sp,8
	call	rsa_extended_gcd
	div	s1,s1,s0
	ld	a5,8(sp)
	ld	s0,16(sp)
	mul	s1,s1,a5
	sub	s0,s0,s1
	mv	s1,a0
.L2:
	sd	s0,0(s3)
	sd	a5,0(s2)
	ld	a4, 24(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L3
	call	__stack_chk_fail@plt
.L3:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	mv	a0,s1
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_extended_gcd, .-rsa_extended_gcd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
