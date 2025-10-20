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
	mv	t1,a0
	li	a7,0
	li	a6,0
	li	t4,256
.L3:
	lbu	t3,0(t1)
	remu	a5,a7,a2
	add	a5,a1,a5
	lbu	a4,0(a5)
	addw	a6,a6,t3
	addw	a4,a4,a6
	andi	a5,a4,0xff
	mv	a6,a5
	add	a5,a0,a5
	lbu	a4,0(a5)
	sb	a4,0(t1)
	sb	t3,0(a5)
	addi	a7,a7,1
	addi	t1,t1,1
	bne	a7,t4,.L3
	sb	zero,256(a0)
	sb	zero,257(a0)
	beq	a3,zero,.L1
	li	t3,0
	li	a5,0
	li	a1,0
.L5:
	addiw	a5,a5,1
	andi	t1,a5,0xff
	mv	a5,t1
	add	a7,a0,t1
	lbu	a2,0(a7)
	addw	a4,t3,a2
	andi	t3,a4,0xff
	add	a6,a0,t3
	lbu	t4,0(a6)
	sb	t4,0(a7)
	sb	a2,0(a6)
	addi	a1,a1,1
	bne	a3,a1,.L5
	sb	t1,256(a0)
	sb	t3,257(a0)
	sb	t4,0(a7)
	sb	a2,0(a6)
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
	beq	a2,zero,.L9
	mv	a3,a1
	add	a1,a1,a2
.L11:
	lbu	a5,256(a0)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,256(a0)
	add	a5,a0,a5
	lbu	a2,0(a5)
	lbu	a4,257(a0)
	addw	a4,a4,a2
	andi	a4,a4,0xff
	sb	a4,257(a0)
	add	a4,a0,a4
	lbu	a6,0(a4)
	sb	a6,0(a5)
	sb	a2,0(a4)
	lbu	a5,0(a5)
	addw	a5,a5,a2
	andi	a5,a5,0xff
	add	a5,a0,a5
	lbu	a5,0(a5)
	lbu	a4,0(a3)
	xor	a5,a5,a4
	sb	a5,0(a3)
	addi	a3,a3,1
	bne	a3,a1,.L11
.L9:
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
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sd	ra,312(sp)
	sd	s0,304(sp)
	sd	s1,296(sp)
	sd	s2,288(sp)
	sd	s3,280(sp)
	sd	s4,272(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a2
	mv	s2,a3
	mv	s1,a4
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 264(sp)
	li	a5, 0
	li	a3,768
	mv	a2,a1
	mv	a1,a0
	mv	s0,sp
	mv	a0,s0
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
	bne	a5,zero,.L16
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
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
