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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sw	zero,-32(s0)
	j	.L2
.L3:
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	ld	a3,-56(s0)
	lw	a5,-32(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L3
	sb	zero,-35(s0)
	sw	zero,-28(s0)
	j	.L4
.L5:
	lbu	a5,-35(s0)
	sext.w	a4,a5
	ld	a3,-56(s0)
	lw	a5,-28(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a3,-28(s0)
	ld	a5,-72(s0)
	remu	a5,a3,a5
	ld	a3,-64(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	sb	a5,-35(s0)
	ld	a4,-56(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	lbu	a5,-35(s0)
	sext.w	a5,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-56(s0)
	lw	a5,-28(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lbu	a5,-35(s0)
	sext.w	a5,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,-33(s0)
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L5
	ld	a5,-56(s0)
	sb	zero,256(a5)
	ld	a5,-56(s0)
	sb	zero,257(a5)
	sd	zero,-24(s0)
	j	.L6
.L7:
	ld	a5,-56(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-56(s0)
	sb	a4,256(a5)
	ld	a5,-56(s0)
	lbu	a4,257(a5)
	ld	a5,-56(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a3,-56(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	addw	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-56(s0)
	sb	a4,257(a5)
	ld	a5,-56(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-34(s0)
	ld	a5,-56(s0)
	lbu	a5,257(a5)
	sext.w	a4,a5
	ld	a5,-56(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a3,-56(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	ld	a3,-56(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	ld	a5,-56(s0)
	lbu	a5,257(a5)
	sext.w	a5,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,-34(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L6:
	ld	a4,-24(s0)
	ld	a5,-80(s0)
	bltu	a4,a5,.L7
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rc4_drop_init, .-rc4_drop_init
	.align	1
	.globl	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	zero,-24(s0)
	j	.L9
.L10:
	ld	a5,-40(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	sb	a4,256(a5)
	ld	a5,-40(s0)
	lbu	a4,257(a5)
	ld	a5,-40(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	addw	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	sb	a4,257(a5)
	ld	a5,-40(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-26(s0)
	ld	a5,-40(s0)
	lbu	a5,257(a5)
	sext.w	a4,a5
	ld	a5,-40(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a3,-40(s0)
	add	a4,a3,a4
	lbu	a4,0(a4)
	ld	a3,-40(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,257(a5)
	sext.w	a5,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,-26(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,256(a5)
	sext.w	a5,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,257(a5)
	sext.w	a5,a5
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	ld	a4,-48(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-48(s0)
	ld	a5,-24(s0)
	add	a5,a3,a5
	lbu	a3,-25(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L9:
	ld	a4,-24(s0)
	ld	a5,-56(s0)
	bltu	a4,a5,.L10
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	rc4_drop_crypt, .-rc4_drop_crypt
	.align	1
	.globl	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)
	sd	s0,320(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sd	a0,-296(s0)
	sd	a1,-304(s0)
	sd	a2,-312(s0)
	sd	a3,-320(s0)
	sd	a4,-328(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-288
	li	a3,768
	ld	a2,-304(s0)
	ld	a1,-296(s0)
	mv	a0,a5
	call	rc4_drop_init
	ld	a2,-320(s0)
	ld	a1,-312(s0)
	ld	a0,-328(s0)
	call	memcpy@plt
	addi	a5,s0,-288
	ld	a2,-320(s0)
	ld	a1,-328(s0)
	mv	a0,a5
	call	rc4_drop_crypt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	ld	ra,328(sp)
	.cfi_restore 1
	ld	s0,320(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
