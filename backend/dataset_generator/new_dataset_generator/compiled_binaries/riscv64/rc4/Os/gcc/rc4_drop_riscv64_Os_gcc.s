	.file	"rc4_drop.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
.LFB14:
	.cfi_startproc
	li	a5,0
	li	a4,256
.L2:
	add	a6,a0,a5
	sb	a5,0(a6)
	addi	a5,a5,1
	bne	a5,a4,.L2
	li	a5,0
	li	a6,0
	li	t3,256
.L3:
	remu	a4,a5,a2
	add	t1,a0,a5
	lbu	a7,0(t1)
	addi	a5,a5,1
	addw	a6,a6,a7
	add	a4,a1,a4
	lbu	a4,0(a4)
	addw	a6,a4,a6
	andi	a4,a6,0xff
	mv	a6,a4
	add	a4,a0,a4
	lbu	t4,0(a4)
	sb	t4,0(t1)
	sb	a7,0(a4)
	bne	a5,t3,.L3
	sb	zero,256(a0)
	sb	zero,257(a0)
	li	a2,0
.L4:
	bne	a2,a3,.L5
	ret
.L5:
	lbu	a5,256(a0)
	addi	a2,a2,1
	addiw	a5,a5,1
	andi	a4,a5,0xff
	sb	a5,256(a0)
	add	a4,a0,a4
	lbu	a1,0(a4)
	lbu	a5,257(a0)
	addw	a5,a5,a1
	andi	a5,a5,0xff
	sb	a5,257(a0)
	add	a5,a0,a5
	lbu	a6,0(a5)
	sb	a6,0(a4)
	sb	a1,0(a5)
	j	.L4
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	1
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	add	a2,a1,a2
.L9:
	bne	a1,a2,.L10
	ret
.L10:
	lbu	a5,256(a0)
	addi	a1,a1,1
	addiw	a5,a5,1
	andi	a4,a5,0xff
	sb	a5,256(a0)
	add	a4,a0,a4
	lbu	a3,0(a4)
	lbu	a5,257(a0)
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
	j	.L9
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	1
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
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
	sd	s2,288(sp)
	sd	s3,280(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a3
	mv	s3,a2
	li	a3,768
	mv	a2,a1
	mv	a1,a0
	mv	a0,s0
	sd	ra,312(sp)
	sd	s1,296(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	mv	s1,a4
	call	rc4_drop_init
	mv	a2,s2
	mv	a1,s3
	mv	a0,s1
	call	memcpy@plt
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	rc4_drop_crypt
	ld	a4, 264(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
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
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
