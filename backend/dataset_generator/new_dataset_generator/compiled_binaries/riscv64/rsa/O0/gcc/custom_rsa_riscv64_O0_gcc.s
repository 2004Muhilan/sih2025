	.file	"custom_rsa.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	mod_exp
	.type	mod_exp, @function
mod_exp:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	li	a5,1
	sd	a5,-24(s0)
	ld	a4,-40(s0)
	ld	a5,-56(s0)
	remu	a5,a4,a5
	sd	a5,-40(s0)
	j	.L2
.L4:
	ld	a5,-48(s0)
	andi	a5,a5,1
	beq	a5,zero,.L3
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	mul	a4,a4,a5
	ld	a5,-56(s0)
	remu	a5,a4,a5
	sd	a5,-24(s0)
.L3:
	ld	a5,-48(s0)
	srli	a5,a5,1
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	mul	a4,a5,a5
	ld	a5,-56(s0)
	remu	a5,a4,a5
	sd	a5,-40(s0)
.L2:
	ld	a5,-48(s0)
	bne	a5,zero,.L4
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	mod_exp, .-mod_exp
	.align	1
	.globl	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
.LFB1:
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
	bne	a5,zero,.L7
	ld	a5,-72(s0)
	sd	zero,0(a5)
	ld	a5,-80(s0)
	li	a4,1
	sd	a4,0(a5)
	ld	a5,-64(s0)
	j	.L9
.L7:
	ld	a4,-64(s0)
	ld	a5,-56(s0)
	rem	a5,a4,a5
	addi	a3,s0,-40
	addi	a4,s0,-48
	mv	a2,a4
	ld	a1,-56(s0)
	mv	a0,a5
	call	extended_gcd
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
.L9:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
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
.LFE1:
	.size	extended_gcd, .-extended_gcd
	.align	1
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	mod_exp
	mv	a5,a0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	rsa_encrypt, .-rsa_encrypt
	.align	1
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	mod_exp
	mv	a5,a0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
