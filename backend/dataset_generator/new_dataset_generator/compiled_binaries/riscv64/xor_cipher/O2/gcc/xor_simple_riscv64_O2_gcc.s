	.file	"xor_simple.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
.LFB14:
	.cfi_startproc
	beq	a1,zero,.L1
	li	a5,0
.L3:
	remu	a4,a5,a3
	lbu	a6,0(a0)
	addi	a0,a0,1
	addi	a5,a5,1
	add	a4,a2,a4
	lbu	a4,0(a4)
	xor	a4,a4,a6
	sb	a4,-1(a0)
	bne	a1,a5,.L3
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	1
	.globl	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	.cfi_offset 8, -16
	mv	s0,a1
	sd	s1,8(sp)
	mv	a1,a0
	.cfi_offset 9, -24
	mv	s1,a2
	mv	a0,a4
	mv	a2,s0
	sd	s2,0(sp)
	sd	ra,24(sp)
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s2,a3
	call	memcpy@plt
	beq	s0,zero,.L9
	mv	a4,a0
	li	a5,0
.L11:
	remu	a0,a5,s2
	lbu	a6,0(a4)
	addi	a4,a4,1
	addi	a5,a5,1
	add	a0,s1,a0
	lbu	a0,0(a0)
	xor	a0,a0,a6
	sb	a0,-1(a4)
	bne	s0,a5,.L11
.L9:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	1
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	.cfi_offset 8, -16
	mv	s0,a1
	sd	s1,8(sp)
	mv	a1,a0
	.cfi_offset 9, -24
	mv	s1,a2
	mv	a0,a4
	mv	a2,s0
	sd	s2,0(sp)
	sd	ra,24(sp)
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s2,a3
	call	memcpy@plt
	beq	s0,zero,.L17
	mv	a4,a0
	li	a5,0
.L19:
	remu	a0,a5,s2
	lbu	a6,0(a4)
	addi	a4,a4,1
	addi	a5,a5,1
	add	a0,s1,a0
	lbu	a0,0(a0)
	xor	a0,a0,a6
	sb	a0,-1(a4)
	bne	s0,a5,.L19
.L17:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
