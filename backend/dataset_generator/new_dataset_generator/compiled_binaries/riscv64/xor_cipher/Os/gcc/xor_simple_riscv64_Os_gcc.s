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
	li	a5,0
.L2:
	bne	a5,a1,.L3
	ret
.L3:
	remu	a4,a5,a3
	add	a6,a0,a5
	lbu	a7,0(a6)
	addi	a5,a5,1
	add	a4,a2,a4
	lbu	a4,0(a4)
	xor	a4,a4,a7
	sb	a4,0(a6)
	j	.L2
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a1
	mv	s1,a2
	mv	a2,a1
	mv	a1,a0
	mv	a0,a4
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a3,8(sp)
	call	memcpy@plt
	mv	a1,s0
	ld	s0,32(sp)
	.cfi_restore 8
	ld	a3,8(sp)
	ld	ra,40(sp)
	.cfi_restore 1
	mv	a2,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	tail	xor_cipher_simple
	.cfi_endproc
.LFE15:
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	1
	.globl	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
.LFB18:
	.cfi_startproc
	tail	xor_encrypt_simple
	.cfi_endproc
.LFE18:
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
