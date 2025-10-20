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
	mv	a5,a0
	li	a4,57
	bgtu	a0,a4,.L2
	li	a4,47
	addi	a0,a0,4
	bgtu	a5,a4,.L4
	li	a4,43
	li	a0,62
	beq	a5,a4,.L4
	li	a4,47
	li	a0,63
	bne	a5,a4,.L11
.L4:
	ret
.L11:
	li	a0,-1
	ret
.L2:
	li	a4,90
	bleu	a0,a4,.L12
	addiw	a4,a0,-97
	andi	a4,a4,0xff
	li	a3,25
	bgtu	a4,a3,.L10
	addiw	a0,a0,-71
	ret
.L12:
	li	a4,64
	addiw	a0,a0,-65
	bgtu	a5,a4,.L4
	li	a0,-1
	ret
.L10:
	li	a0,-1
	ret
	.cfi_endproc
.LFE0:
	.size	base64_char_value, .-base64_char_value
	.align	1
	.globl	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
.LFB1:
	.cfi_startproc
	sd	zero,0(a2)
	lbu	a5,0(a0)
	beq	a5,zero,.L20
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s4,a1
	mv	s3,a2
	addi	s2,a0,4
	li	s5,61
	li	s6,0
	j	.L15
.L23:
	ld	a4,0(s3)
	addi	a3,a4,1
	sd	a3,0(s3)
	add	a4,s4,a4
	srliw	a3,a5,16
	sb	a3,0(a4)
	ld	a4,0(s3)
	addi	a3,a4,1
	sd	a3,0(s3)
	add	a4,s4,a4
	srliw	a3,a5,8
	sb	a3,0(a4)
	ld	a4,0(s3)
	addi	a3,a4,1
	sd	a3,0(s3)
	add	a4,s4,a4
	sb	a5,0(a4)
	addi	s2,s2,4
	lbu	a5,-4(s2)
	beq	a5,zero,.L13
.L15:
	beq	a5,s5,.L13
	addi	s1,s2,-4
	mv	a5,s6
.L16:
	slliw	s0,a5,6
	lbu	a0,0(s1)
	call	base64_char_value
	or	a0,a0,s0
	sext.w	a5,a0
	addi	s1,s1,1
	bne	s1,s2,.L16
	j	.L23
.L13:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L20:
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
