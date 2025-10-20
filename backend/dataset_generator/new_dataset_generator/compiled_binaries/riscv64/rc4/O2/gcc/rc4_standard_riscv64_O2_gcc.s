	.file	"rc4_standard.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_init
	.type	rc4_init, @function
rc4_init:
.LFB14:
	.cfi_startproc
	li	a5,0
	li	a3,256
.L2:
	add	a4,a0,a5
	sb	a5,0(a4)
	addi	a5,a5,1
	bne	a5,a3,.L2
	mv	a6,a0
	li	a3,0
	li	a4,0
	li	t3,256
.L3:
	remu	a7,a3,a2
	lbu	t1,0(a6)
	addi	a6,a6,1
	addi	a3,a3,1
	addw	a5,a4,t1
	add	a4,a1,a7
	lbu	a4,0(a4)
	addw	a4,a4,a5
	andi	a5,a4,0xff
	add	a5,a0,a5
	lbu	a7,0(a5)
	andi	a4,a4,0xff
	sb	a7,-1(a6)
	sb	t1,0(a5)
	bne	a3,t3,.L3
	sb	zero,256(a0)
	sb	zero,257(a0)
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_init, .-rc4_init
	.align	1
	.globl	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
.LFB15:
	.cfi_startproc
	beq	a2,zero,.L7
	add	a2,a1,a2
.L9:
	lbu	a3,256(a0)
	lbu	a5,257(a0)
	addi	a1,a1,1
	addiw	a3,a3,1
	andi	a4,a3,0xff
	sb	a3,256(a0)
	add	a4,a0,a4
	lbu	a3,0(a4)
	addw	a5,a5,a3
	andi	a5,a5,0xff
	sb	a5,257(a0)
	add	a5,a0,a5
	lbu	a6,0(a5)
	sb	a6,0(a4)
	sb	a3,0(a5)
	lbu	a5,0(a4)
	lbu	a4,-1(a1)
	addw	a5,a5,a3
	andi	a5,a5,0xff
	add	a5,a0,a5
	lbu	a5,0(a5)
	xor	a5,a5,a4
	sb	a5,-1(a1)
	bne	a2,a1,.L9
.L7:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_crypt, .-rc4_crypt
	.align	1
	.globl	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sd	s0,304(sp)
	sd	s4,272(sp)
	.cfi_offset 8, -16
	.cfi_offset 20, -48
	mv	s0,sp
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 264(sp)
	li	a5, 0
	sd	s3,280(sp)
	.cfi_offset 19, -40
	mv	s3,a2
	mv	a2,a1
	mv	a1,a0
	mv	a0,s0
	sd	ra,312(sp)
	sd	s1,296(sp)
	sd	s2,288(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s1,a4
	mv	s2,a3
	call	rc4_init
	mv	a2,s2
	mv	a1,s3
	mv	a0,s1
	call	memcpy@plt
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	rc4_crypt
	ld	a4, 264(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L17
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
.L17:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	rc4_encrypt, .-rc4_encrypt
	.align	1
	.globl	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
.LFB17:
	.cfi_startproc
	tail	rc4_encrypt
	.cfi_endproc
.LFE17:
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
