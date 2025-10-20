	.file	"aes_key_expansion.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 8(sp)
	li	a4, 0
	mv	a5,a0
	addi	a2,a0,16
	mv	a4,a1
.L2:
	lbu	a3,0(a5)
	sb	a3,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	bne	a5,a2,.L2
	lla	t1,.LANCHOR0
	li	a6,0
	addi	t5,a1,12
	addi	a7,sp,4
	li	t4,0
	li	a0,16
	li	t3,160
	j	.L3
.L12:
	lbu	a4,0(sp)
	lbu	a5,1(sp)
	lbu	a3,2(sp)
	sb	a3,1(sp)
	lbu	a3,3(sp)
	sb	a3,2(sp)
	sb	a4,3(sp)
	lbu	a4,0(t1)
	xor	a5,a5,a4
	sb	a5,0(sp)
	add	a2,a1,a6
	mv	a4,t4
.L5:
	sraiw	a3,a4,31
	srliw	a3,a3,30
	addw	a5,a3,a4
	andi	a5,a5,3
	subw	a5,a5,a3
	addi	a5,a5,16
	add	a5,a5,sp
	lbu	a5,-16(a5)
	lbu	a3,0(a2)
	xor	a5,a5,a3
	sb	a5,16(a2)
	addiw	a4,a4,1
	addi	a2,a2,1
	bne	a4,a0,.L5
	addi	t1,t1,1
	addi	a6,a6,16
	beq	a6,t3,.L1
.L3:
	add	a4,t5,a6
	mv	a5,sp
.L4:
	lbu	a3,0(a4)
	sb	a3,0(a5)
	addi	a4,a4,1
	addi	a5,a5,1
	bne	a5,a7,.L4
	j	.L12
.L1:
	la	a5,__stack_chk_guard
	ld	a4, 8(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L13
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
