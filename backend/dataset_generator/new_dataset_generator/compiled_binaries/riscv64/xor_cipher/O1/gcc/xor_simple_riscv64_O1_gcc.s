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
	add	a4,a2,a4
	lbu	a4,0(a4)
	lbu	a6,0(a0)
	xor	a4,a4,a6
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s1,a1
	mv	s2,a2
	mv	s3,a3
	mv	s0,a4
	mv	a2,a1
	mv	a1,a0
	mv	a0,a4
	call	memcpy@plt
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	xor_cipher_simple
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	1
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s1,a1
	mv	s2,a2
	mv	s3,a3
	mv	s0,a4
	mv	a2,a1
	mv	a1,a0
	mv	a0,a4
	call	memcpy@plt
	mv	a3,s3
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	xor_cipher_simple
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
