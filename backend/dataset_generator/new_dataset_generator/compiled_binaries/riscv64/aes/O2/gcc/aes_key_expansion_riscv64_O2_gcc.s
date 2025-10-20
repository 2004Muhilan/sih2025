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
	la	a7,__stack_chk_guard
	ld	a5, 0(a7)
	sd	a5, 8(sp)
	li	a5, 0
	sd	ra,24(sp)
	.cfi_offset 1, -8
	mv	a5,a1
	addi	a3,a0,16
.L2:
	lbu	a4,0(a0)
	addi	a0,a0,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a0,a3,.L2
	li	t3,16777216
	addi	a0,a1,1
	lla	a6,.LANCHOR0
	lla	t4,.LANCHOR0+10
	addi	t3,t3,-1
	li	a1,16
.L3:
	lbu	a3,0(a6)
	lbu	a4,12(a0)
	lbu	a5,13(a0)
	lbu	a2,14(a0)
	xor	a4,a4,a3
	slliw	a5,a5,8
	lbu	a3,11(a0)
	or	a5,a4,a5
	lbu	t1,-1(a0)
	slliw	a2,a2,16
	or	a5,a5,a2
	slliw	a3,a3,24
	and	a5,a5,t3
	or	a5,a5,a3
	xor	a4,a4,t1
	sw	a5,0(sp)
	sb	a4,15(a0)
	li	a5,1
	mv	a4,a0
.L4:
	andi	a3,a5,3
	addi	a3,a3,16
	add	a3,a3,sp
	lbu	a2,0(a4)
	lbu	a3,-16(a3)
	addi	a4,a4,1
	addiw	a5,a5,1
	xor	a3,a3,a2
	sb	a3,15(a4)
	bne	a5,a1,.L4
	addi	a6,a6,1
	addi	a0,a0,16
	bne	a6,t4,.L3
	ld	a4, 8(sp)
	ld	a5, 0(a7)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L11
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L11:
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
