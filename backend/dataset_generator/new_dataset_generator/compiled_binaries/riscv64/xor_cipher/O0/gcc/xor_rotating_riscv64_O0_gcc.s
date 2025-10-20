	.file	"xor_rotating.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	rotate_left, @function
rotate_left:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-17(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lbu	a5,-17(s0)
	sext.w	a5,a5
	lw	a4,-24(s0)
	sllw	a5,a5,a4
	sext.w	a5,a5
	slliw	a4,a5,24
	sraiw	a4,a4,24
	lbu	a5,-17(s0)
	sext.w	a3,a5
	li	a5,8
	lw	a2,-24(s0)
	subw	a5,a5,a2
	sext.w	a5,a5
	sraw	a5,a3,a5
	sext.w	a5,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	or	a5,a4,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	andi	a5,a5,0xff
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rotate_left, .-rotate_left
	.align	1
	.globl	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sd	zero,-40(s0)
	j	.L4
.L5:
	ld	a4,-40(s0)
	ld	a5,-80(s0)
	remu	a5,a4,a5
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	ld	a4,-56(s0)
	ld	a5,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-56(s0)
	ld	a5,-40(s0)
	add	a5,a3,a5
	lbu	a3,-41(s0)
	xor	a4,a4,a3
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a4,-40(s0)
	ld	a5,-80(s0)
	remu	a5,a4,a5
	ld	a4,-72(s0)
	add	s1,a4,a5
	lbu	a5,-41(s0)
	li	a1,1
	mv	a0,a5
	call	rotate_left
	mv	a5,a0
	sb	a5,0(s1)
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L4:
	ld	a4,-40(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L5
	nop
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	1
	.globl	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
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
	ld	a2,-304(s0)
	ld	a1,-296(s0)
	ld	a0,-328(s0)
	call	memcpy@plt
	addi	a5,s0,-280
	ld	a2,-320(s0)
	ld	a1,-312(s0)
	mv	a0,a5
	call	memcpy@plt
	addi	a5,s0,-280
	ld	a3,-320(s0)
	mv	a2,a5
	ld	a1,-304(s0)
	ld	a0,-328(s0)
	call	xor_cipher_rotating
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L7
	call	__stack_chk_fail@plt
.L7:
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
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	1
	.globl	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	ld	a4,-56(s0)
	ld	a3,-48(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	xor_encrypt_rotating
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
