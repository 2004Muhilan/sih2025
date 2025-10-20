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
	addiw	a5,a0,-65
	andi	a2,a5,0xff
	li	a3,25
	mv	a4,a0
	bgtu	a2,a3,.L2
	sext.w	a0,a5
	ret
.L2:
	addiw	a5,a0,-97
	andi	a5,a5,0xff
	bgtu	a5,a3,.L4
	addiw	a0,a0,-71
	ret
.L4:
	addiw	a5,a0,-48
	andi	a5,a5,0xff
	li	a3,9
	bgtu	a5,a3,.L5
	addi	a0,a0,4
	ret
.L5:
	li	a5,43
	li	a0,62
	beq	a4,a5,.L3
	li	a5,47
	li	a0,63
	beq	a4,a5,.L3
	li	a0,-1
.L3:
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,64(sp)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	sd	s3,40(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 22, -64
	mv	s5,a0
	mv	s2,a1
	mv	s0,a2
	sd	zero,0(a2)
	li	s4,0
	li	s7,61
	li	s8,4
.L9:
	add	s6,s5,s4
	lbu	a5,0(s6)
	beq	a5,zero,.L8
	bne	a5,s7,.L13
.L8:
	ld	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s6,16(sp)
	.cfi_restore 22
	ld	s7,8(sp)
	.cfi_restore 23
	ld	s8,0(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	li	s3,0
	li	a5,0
.L10:
	slliw	s1,a5,6
	add	a5,s6,s3
	lbu	a0,0(a5)
	addi	s3,s3,1
	call	base64_char_value
	or	a0,a0,s1
	sext.w	a5,a0
	bne	s3,s8,.L10
	ld	a4,0(s0)
	addi	s4,s4,4
	addi	a3,a4,1
	sd	a3,0(s0)
	add	a4,s2,a4
	srliw	a3,a5,16
	sb	a3,0(a4)
	ld	a4,0(s0)
	addi	a3,a4,1
	sd	a3,0(s0)
	add	a4,s2,a4
	srliw	a3,a5,8
	sb	a3,0(a4)
	ld	a4,0(s0)
	addi	a3,a4,1
	sd	a3,0(s0)
	add	a4,s2,a4
	sb	a5,0(a4)
	j	.L9
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
