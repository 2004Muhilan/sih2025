	.file	"hmac_sha256.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sd	ra,216(sp)
	sd	s0,208(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)
	sd	a1,-192(s0)
	sd	a2,-200(s0)
	sd	a3,-208(s0)
	sd	a4,-216(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-160(s0)
	j	.L2
.L7:
	ld	a4,-160(s0)
	ld	a5,-192(s0)
	bgeu	a4,a5,.L3
	ld	a4,-184(s0)
	ld	a5,-160(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	xori	a5,a5,54
	andi	a5,a5,0xff
	j	.L4
.L3:
	li	a5,54
.L4:
	ld	a4,-160(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	sb	a5,-136(a4)
	ld	a4,-160(s0)
	ld	a5,-192(s0)
	bgeu	a4,a5,.L5
	ld	a4,-184(s0)
	ld	a5,-160(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	xori	a5,a5,92
	andi	a5,a5,0xff
	j	.L6
.L5:
	li	a5,92
.L6:
	ld	a4,-160(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	sb	a5,-72(a4)
	ld	a5,-160(s0)
	addi	a5,a5,1
	sd	a5,-160(s0)
.L2:
	ld	a4,-160(s0)
	li	a5,63
	bleu	a4,a5,.L7
	sw	zero,-164(s0)
	j	.L8
.L9:
	lw	a5,-164(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a3,-136(a5)
	lw	a5,-164(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-72(a5)
	lw	a5,-164(s0)
	ld	a2,-216(s0)
	add	a5,a2,a5
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L8:
	lw	a5,-164(s0)
	sext.w	a4,a5
	li	a5,31
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
	ld	ra,216(sp)
	.cfi_restore 1
	ld	s0,208(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	hmac_sha256, .-hmac_sha256
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
