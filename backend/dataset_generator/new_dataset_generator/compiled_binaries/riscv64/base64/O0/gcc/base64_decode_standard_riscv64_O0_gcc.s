	.file	"base64_decode_standard.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L2
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,90
	bgtu	a4,a5,.L2
	lbu	a5,-17(s0)
	sext.w	a5,a5
	addiw	a5,a5,-65
	sext.w	a5,a5
	j	.L3
.L2:
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L4
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,122
	bgtu	a4,a5,.L4
	lbu	a5,-17(s0)
	sext.w	a5,a5
	addiw	a5,a5,-71
	sext.w	a5,a5
	j	.L3
.L4:
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,47
	bleu	a4,a5,.L5
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,57
	bgtu	a4,a5,.L5
	lbu	a5,-17(s0)
	sext.w	a5,a5
	addiw	a5,a5,4
	sext.w	a5,a5
	j	.L3
.L5:
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,43
	bne	a4,a5,.L6
	li	a5,62
	j	.L3
.L6:
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,47
	bne	a4,a5,.L7
	li	a5,63
	j	.L3
.L7:
	li	a5,-1
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.align	1
	.globl	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
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
	ld	a5,-72(s0)
	sd	zero,0(a5)
	sd	zero,-40(s0)
	j	.L9
.L13:
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L10
.L11:
	lw	a5,-48(s0)
	slliw	a5,a5,6
	sext.w	s1,a5
	lw	a4,-44(s0)
	ld	a5,-40(s0)
	add	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a0,a5
	call	base64_char_value
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,s1
	or	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L10:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L11
	lw	a5,-48(s0)
	srliw	a5,a5,16
	sext.w	a2,a5
	ld	a5,-72(s0)
	ld	a5,0(a5)
	addi	a3,a5,1
	ld	a4,-72(s0)
	sd	a3,0(a4)
	ld	a4,-64(s0)
	add	a5,a4,a5
	mv	a4,a2
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-48(s0)
	srliw	a5,a5,8
	sext.w	a2,a5
	ld	a5,-72(s0)
	ld	a5,0(a5)
	addi	a3,a5,1
	ld	a4,-72(s0)
	sd	a3,0(a4)
	ld	a4,-64(s0)
	add	a5,a4,a5
	mv	a4,a2
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-72(s0)
	ld	a5,0(a5)
	addi	a3,a5,1
	ld	a4,-72(s0)
	sd	a3,0(a4)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a4,-48(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	sd	a5,-40(s0)
.L9:
	ld	a4,-56(s0)
	ld	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L14
	ld	a4,-56(s0)
	ld	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,61
	bne	a4,a5,.L13
.L14:
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
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
