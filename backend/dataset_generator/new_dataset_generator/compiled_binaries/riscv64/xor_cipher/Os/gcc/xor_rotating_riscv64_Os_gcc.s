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
	li	a5,0
.L2:
	bne	a5,a1,.L3
	ret
.L3:
	remu	a6,a5,a3
	add	t1,a0,a5
	lbu	a7,0(t1)
	addi	a5,a5,1
	add	a6,a2,a6
	lbu	a4,0(a6)
	xor	a7,a4,a7
	sb	a7,0(t1)
	slliw	a7,a4,1
	srliw	a4,a4,7
	or	a4,a7,a4
	sb	a4,0(a6)
	j	.L2
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
	sd	s4,272(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	sd	s1,296(sp)
	sd	s3,280(sp)
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	mv	s1,a1
	mv	s3,a2
	ld	a5, 0(s4)
	sd	a5, 264(sp)
	li	a5, 0
	mv	a2,a1
	mv	a1,a0
	mv	a0,a4
	sd	ra,312(sp)
	sd	s0,304(sp)
	sd	s2,288(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a4
	mv	s2,a3
	call	memcpy@plt
	addi	a5,sp,8
	mv	a0,a5
	li	a3,256
	mv	a2,s2
	mv	a1,s3
	call	__memcpy_chk@plt
	mv	a2,a0
	mv	a3,s2
	mv	a1,s1
	mv	a0,s0
	call	xor_cipher_rotating
	ld	a4, 264(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	ld	ra,312(sp)
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
