	.file	"xor_rotating.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
.LFB15:
	.cfi_startproc
	beq	a1,zero,.L1
	li	a6,0
.L3:
	remu	a4,a6,a3
	lbu	t1,0(a0)
	addi	a0,a0,1
	addi	a6,a6,1
	add	a4,a2,a4
	lbu	a5,0(a4)
	xor	t1,a5,t1
	slliw	a7,a5,1
	srliw	a5,a5,7
	sb	t1,-1(a0)
	or	a5,a7,a5
	sb	a5,0(a4)
	bne	a1,a6,.L3
.L1:
	ret
	.cfi_endproc
.LFE15:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	1
	.globl	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sd	s1,296(sp)
	sd	s4,272(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s1,a1
	la	s4,__stack_chk_guard
	sd	s3,280(sp)
	mv	a1,a0
	.cfi_offset 19, -40
	mv	s3,a2
	mv	a0,a4
	mv	a2,s1
	ld	a5, 0(s4)
	sd	a5, 264(sp)
	li	a5, 0
	sd	s0,304(sp)
	sd	s2,288(sp)
	sd	ra,312(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s2,a3
	mv	s0,a4
	call	memcpy@plt
	addi	t4,sp,8
	li	a3,256
	mv	a2,s2
	mv	a1,s3
	mv	a0,t4
	call	__memcpy_chk@plt
	beq	s1,zero,.L9
	mv	t4,a0
	mv	a4,s0
	li	a0,0
.L11:
	remu	a6,a0,s2
	lbu	t3,0(a4)
	addi	a4,a4,1
	addi	a0,a0,1
	add	a6,t4,a6
	lbu	a5,0(a6)
	slliw	a7,a5,1
	srliw	t1,a5,7
	or	a7,a7,t1
	xor	a5,a5,t3
	sb	a5,-1(a4)
	sb	a7,0(a6)
	bne	s1,a0,.L11
.L9:
	ld	a4, 264(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L18
	ld	ra,312(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,304(sp)
	.cfi_restore 8
	ld	s1,296(sp)
	.cfi_restore 9
	ld	s2,288(sp)
	.cfi_restore 18
	ld	s3,280(sp)
	.cfi_restore 19
	ld	s4,272(sp)
	.cfi_restore 20
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	1
	.globl	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
.LFB17:
	.cfi_startproc
	tail	xor_encrypt_rotating
	.cfi_endproc
.LFE17:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
