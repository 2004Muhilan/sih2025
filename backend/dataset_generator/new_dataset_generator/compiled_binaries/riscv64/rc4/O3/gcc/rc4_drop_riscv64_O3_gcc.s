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
	li	a6,256
.L2:
	add	a4,a0,a5
	sb	a5,0(a4)
	addi	a5,a5,1
	bne	a5,a6,.L2
	mv	a7,a0
	li	a6,0
	li	a4,0
	li	t4,256
.L3:
	remu	t1,a6,a2
	lbu	t3,0(a7)
	addi	a7,a7,1
	addi	a6,a6,1
	addw	a5,a4,t3
	add	a4,a1,t1
	lbu	a4,0(a4)
	addw	a4,a4,a5
	andi	a5,a4,0xff
	add	a5,a0,a5
	lbu	t1,0(a5)
	andi	a4,a4,0xff
	sb	t1,-1(a7)
	sb	t3,0(a5)
	bne	a6,t4,.L3
	sb	zero,256(a0)
	sb	zero,257(a0)
	beq	a3,zero,.L1
	li	a4,0
	li	a1,0
.L5:
	addi	a5,a1,1
	andi	a5,a5,0xff
	add	a5,a0,a5
	lbu	a6,0(a5)
	addi	a1,a1,1
	addw	a4,a6,a4
	andi	a2,a4,0xff
	add	a2,a0,a2
	lbu	a7,0(a2)
	andi	a4,a4,0xff
	sb	a7,0(a5)
	sb	a6,0(a2)
	bne	a3,a1,.L5
	sb	a3,256(a0)
	sb	a4,257(a0)
	sb	a7,0(a5)
	sb	a6,0(a2)
.L1:
	ret
	.cfi_endproc
.LFE14:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	1
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB15:
	.cfi_startproc
	beq	a2,zero,.L13
	add	a2,a1,a2
.L15:
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
	bne	a2,a1,.L15
.L13:
	ret
	.cfi_endproc
.LFE15:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	1
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sd	s1,280(sp)
	mv	a6,sp
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	sd	s2,272(sp)
	mv	t5,a1
	sd	ra,296(sp)
	sd	s0,288(sp)
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	a1,a2
	mv	s2,a3
	ld	a5, 0(s1)
	sd	a5, 264(sp)
	li	a5, 0
	mv	a7,a6
	li	t1,256
.L21:
	sb	a5,0(a7)
	addiw	a5,a5,1
	addi	a7,a7,1
	bne	a5,t1,.L21
	addi	t6,a6,256
	li	t3,0
	li	a7,0
.L22:
	remu	a5,t3,t5
	lbu	t4,0(a6)
	addi	a6,a6,1
	addi	t3,t3,1
	addw	t1,a7,t4
	add	a5,a0,a5
	lbu	a7,0(a5)
	addw	a7,a7,t1
	andi	a5,a7,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	t1,-272(a5)
	andi	a7,a7,0xff
	sb	t1,-1(a6)
	sb	t4,-272(a5)
	bne	a6,t6,.L22
	li	a2,0
	li	s0,0
	li	a7,768
.L23:
	addi	a5,a2,1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a0,-272(a5)
	addiw	a2,a2,1
	addw	s0,s0,a0
	andi	a3,s0,0xff
	addi	a3,a3,272
	add	a3,a3,sp
	lbu	a6,-272(a3)
	andi	s0,s0,0xff
	sb	a6,-272(a5)
	sb	a0,-272(a3)
	bne	a2,a7,.L23
	mv	a0,a4
	mv	a2,s2
	call	memcpy@plt
	mv	a4,a0
	beq	s2,zero,.L20
	li	a2,0
.L25:
	addi	a5,a2,1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a1,-272(a5)
	lbu	a0,0(a4)
	addi	a4,a4,1
	addw	s0,a1,s0
	andi	a3,s0,0xff
	addi	a3,a3,272
	add	a3,a3,sp
	lbu	a6,-272(a3)
	addi	a2,a2,1
	andi	s0,s0,0xff
	sb	a6,-272(a5)
	sb	a1,-272(a3)
	lbu	a5,-272(a5)
	addw	a5,a5,a1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a5,-272(a5)
	xor	a5,a5,a0
	sb	a5,-1(a4)
	bne	s2,a2,.L25
.L20:
	ld	a4, 264(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L35
	ld	ra,296(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,288(sp)
	.cfi_restore 8
	ld	s1,280(sp)
	.cfi_restore 9
	ld	s2,272(sp)
	.cfi_restore 18
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
