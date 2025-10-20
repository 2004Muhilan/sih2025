	.file	"rc4_stream_cipher.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	la	t3,__stack_chk_guard
	sd	ra,280(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t3)
	sd	a5, 264(sp)
	li	a5, 0
	addi	a4,sp,8
	li	a3,256
.L2:
	sb	a5,0(a4)
	addiw	a5,a5,1
	addi	a4,a4,1
	bne	a5,a3,.L2
	beq	a1,zero,.L1
	li	a2,0
	li	a4,0
.L4:
	addi	a5,a2,1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a6,-264(a5)
	lbu	a7,0(a0)
	addi	a0,a0,1
	addw	a4,a6,a4
	andi	a3,a4,0xff
	addi	a3,a3,272
	add	a3,a3,sp
	lbu	t1,-264(a3)
	addi	a2,a2,1
	andi	a4,a4,0xff
	sb	t1,-264(a5)
	sb	a6,-264(a3)
	lbu	a5,-264(a5)
	addw	a5,a5,a6
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a5,-264(a5)
	xor	a5,a5,a7
	sb	a5,-1(a0)
	bne	a1,a2,.L4
.L1:
	ld	a4, 264(sp)
	ld	a5, 0(t3)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L13
	ld	ra,280(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE14:
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
