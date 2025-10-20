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
	li	a4,57
	mv	a5,a0
	bgtu	a0,a4,.L2
	li	a4,47
	addi	a0,a0,4
	bgtu	a5,a4,.L4
	li	a3,43
	li	a0,62
	beq	a5,a3,.L4
	li	a0,-1
	bne	a5,a4,.L4
	li	a0,63
	ret
.L2:
	li	a4,90
	bgtu	a0,a4,.L5
	li	a4,64
	addiw	a0,a0,-65
	bleu	a5,a4,.L10
.L4:
	ret
.L5:
	addiw	a4,a0,-97
	andi	a4,a4,0xff
	li	a3,25
	bgtu	a4,a3,.L10
	addiw	a0,a0,-71
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
	beq	a5,zero,.L35
	li	t4,61
	addi	a0,a0,4
	li	a6,57
	li	t3,90
	li	a7,47
	li	t1,43
	li	t0,25
	li	t6,64
	li	t5,47
	beq	a5,t4,.L39
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
.L24:
	addi	a3,a0,-4
	li	a4,0
.L23:
	lbu	a5,0(a3)
	slliw	a4,a4,6
	bgtu	a5,a6,.L15
	bgtu	a5,a7,.L16
	beq	a5,t1,.L17
	ori	a4,a4,63
	sext.w	a4,a4
	bne	a5,t5,.L25
.L19:
	addi	a3,a3,1
	bne	a0,a3,.L23
	ld	a5,0(a2)
	srliw	t2,a4,16
	srliw	a3,a4,8
	addi	s0,a5,1
	sd	s0,0(a2)
	add	a5,a1,a5
	sb	t2,0(a5)
	ld	a5,0(a2)
	addi	a0,a0,4
	addi	t2,a5,1
	sd	t2,0(a2)
	add	a5,a1,a5
	sb	a3,0(a5)
	ld	a5,0(a2)
	addi	a3,a5,1
	sd	a3,0(a2)
	add	a5,a1,a5
	sb	a4,0(a5)
	lbu	a5,-4(a0)
	beq	a5,zero,.L12
	bne	a5,t4,.L24
.L12:
	ld	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L15:
	.cfi_restore_state
	bgtu	a5,t3,.L20
	bleu	a5,t6,.L25
	addiw	a5,a5,-65
	or	a5,a5,a4
	sext.w	a4,a5
	j	.L19
.L20:
	addiw	t2,a5,-97
	andi	t2,t2,0xff
	bgtu	t2,t0,.L25
	addiw	a5,a5,-71
	or	a5,a5,a4
	sext.w	a4,a5
	j	.L19
.L16:
	addiw	a5,a5,4
	or	a5,a5,a4
	sext.w	a4,a5
	j	.L19
.L25:
	li	a4,-1
	j	.L19
.L17:
	ori	a4,a4,62
	sext.w	a4,a4
	j	.L19
.L35:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	ret
.L39:
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
