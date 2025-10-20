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
	la	a6,__stack_chk_guard
	sd	ra,280(sp)
	.cfi_offset 1, -8
	ld	a5, 0(a6)
	sd	a5, 264(sp)
	li	a5, 0
	addi	a2,sp,8
	li	a4,256
.L2:
	add	a3,a2,a5
	sb	a5,0(a3)
	addi	a5,a5,1
	bne	a5,a4,.L2
	li	a3,0
	li	a7,0
.L3:
	andi	a5,a3,0xff
	bne	a3,a1,.L4
	ld	a4, 264(sp)
	ld	a5, 0(a6)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L4:
	addiw	a5,a5,1
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a2,-264(a5)
	addw	a4,a2,a7
	andi	a7,a4,0xff
	addi	a4,a7,272
	add	a4,a4,sp
	lbu	t1,-264(a4)
	sb	t1,-264(a5)
	sb	a2,-264(a4)
	lbu	a5,-264(a5)
	add	a4,a0,a3
	addi	a3,a3,1
	addw	a5,a5,a2
	andi	a5,a5,0xff
	addi	a5,a5,272
	add	a5,a5,sp
	lbu	a2,0(a4)
	lbu	a5,-264(a5)
	xor	a5,a5,a2
	sb	a5,0(a4)
	j	.L3
.L5:
	ld	ra,280(sp)
	.cfi_restore 1
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
