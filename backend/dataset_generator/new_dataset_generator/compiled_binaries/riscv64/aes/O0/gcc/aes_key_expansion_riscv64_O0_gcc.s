	.file	"aes_key_expansion.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.text
	.align	1
	.globl	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-48(s0)
	j	.L2
.L3:
	lw	a5,-48(s0)
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	ld	a3,-80(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L3
	li	a5,1
	sw	a5,-44(s0)
	j	.L4
.L9:
	sw	zero,-40(s0)
	j	.L5
.L6:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slliw	a5,a5,4
	sext.w	a5,a5
	addiw	a5,a5,12
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-80(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-16(a5)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L6
	lbu	a5,-32(s0)
	sb	a5,-49(s0)
	lbu	a5,-31(s0)
	sb	a5,-32(s0)
	lbu	a5,-30(s0)
	sb	a5,-31(s0)
	lbu	a5,-29(s0)
	sb	a5,-30(s0)
	lbu	a5,-49(s0)
	sb	a5,-29(s0)
	lbu	a4,-32(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a3,rcon
	add	a5,a3,a5
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	sb	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L7
.L8:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-80(s0)
	add	a5,a5,a4
	lbu	a3,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,30
	addw	a4,a4,a5
	andi	a4,a4,3
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-16(a5)
	lw	a5,-44(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a2,-36(s0)
	addw	a5,a2,a5
	sext.w	a5,a5
	mv	a2,a5
	ld	a5,-80(s0)
	add	a5,a5,a2
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L7:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L8
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L4:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,10
	ble	a4,a5,.L9
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	aes_key_expansion, .-aes_key_expansion
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
