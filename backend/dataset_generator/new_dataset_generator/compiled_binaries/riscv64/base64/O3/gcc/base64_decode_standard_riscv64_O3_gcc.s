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
	lbu	t0,0(a0)
	beq	t0,zero,.L59
	li	t3,4096
	li	t6,4096
	li	t1,61
	addi	a4,a0,1
	li	a3,57
	li	a7,90
	li	t5,25
	li	t4,64
	li	a0,47
	li	a6,43
	addi	t3,t3,-128
	addi	t6,t6,-64
	beq	t0,t1,.L59
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	sd	s1,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
.L61:
	bgtu	t0,a3,.L15
	bgtu	t0,a0,.L16
	mv	a5,t3
	beq	t0,a6,.L17
	li	a5,-64
	bne	t0,a0,.L17
	mv	a5,t6
.L17:
	lbu	t0,0(a4)
	bgtu	t0,a3,.L21
	bgtu	t0,a0,.L22
	beq	t0,a6,.L23
	bne	t0,a0,.L49
	slliw	a5,a5,6
	or	a5,a5,t6
	sext.w	a5,a5
.L25:
	lbu	t0,1(a4)
	bgtu	t0,a3,.L29
	bgtu	t0,a0,.L30
	beq	t0,a6,.L31
	bne	t0,a0,.L50
	slliw	a5,a5,6
	or	a5,a5,t6
	sext.w	a5,a5
.L33:
	lbu	t0,2(a4)
	bgtu	t0,a3,.L37
	bgtu	t0,a0,.L38
	beq	t0,a6,.L39
	bne	t0,a0,.L51
	ori	t0,a5,63
.L65:
	srliw	t2,a5,16
	srliw	a5,a5,8
	andi	s0,a5,0xff
	andi	t2,t2,0xff
	andi	a5,t0,0xff
.L41:
	ld	t0,0(a2)
	addi	a4,a4,4
	addi	s1,t0,1
	sd	s1,0(a2)
	add	t0,a1,t0
	sb	t2,0(t0)
	ld	t0,0(a2)
	addi	t2,t0,1
	sd	t2,0(a2)
	add	t0,a1,t0
	sb	s0,0(t0)
	ld	t0,0(a2)
	addi	t2,t0,1
	sd	t2,0(a2)
	add	t0,a1,t0
	sb	a5,0(t0)
	lbu	t0,-1(a4)
	beq	t0,zero,.L12
	bne	t0,t1,.L61
.L12:
	ld	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L37:
	.cfi_restore_state
	bgtu	t0,a7,.L42
	bleu	t0,t4,.L51
	addiw	t0,t0,-65
.L64:
	or	a5,a5,t0
	srliw	t2,a5,16
	srliw	s0,a5,8
	andi	t2,t2,0xff
	andi	s0,s0,0xff
	andi	a5,a5,0xff
	j	.L41
.L29:
	bgtu	t0,a7,.L34
	bleu	t0,t4,.L50
	addiw	t0,t0,-65
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L33
.L21:
	bgtu	t0,a7,.L26
	bleu	t0,t4,.L49
	addiw	t0,t0,-65
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L25
.L15:
	bgtu	t0,a7,.L18
	bleu	t0,t4,.L48
	addiw	t0,t0,-65
	slliw	a5,t0,6
	j	.L17
.L42:
	addiw	t2,t0,-97
	andi	t2,t2,0xff
	addiw	t0,t0,-71
	bleu	t2,t5,.L64
.L51:
	li	a5,255
	li	s0,255
	li	t2,255
	j	.L41
.L34:
	addiw	t2,t0,-97
	andi	t2,t2,0xff
	bgtu	t2,t5,.L50
	addiw	t0,t0,-71
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L33
.L26:
	addiw	t2,t0,-97
	andi	t2,t2,0xff
	bgtu	t2,t5,.L49
	addiw	t0,t0,-71
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L25
.L18:
	addiw	a5,t0,-97
	andi	a5,a5,0xff
	bgtu	a5,t5,.L48
	addiw	t0,t0,-71
	slliw	a5,t0,6
	j	.L17
.L39:
	ori	t0,a5,62
	j	.L65
.L22:
	addiw	t0,t0,4
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L25
.L16:
	slli	t0,t0,6
	addi	a5,t0,256
	j	.L17
.L49:
	li	a5,-64
	j	.L25
.L23:
	slliw	a5,a5,6
	or	a5,a5,t3
	sext.w	a5,a5
	j	.L25
.L38:
	addiw	t0,t0,4
	or	t0,a5,t0
	srliw	s0,t0,8
	srliw	a5,a5,16
	andi	t2,a5,0xff
	andi	s0,s0,0xff
	andi	a5,t0,0xff
	j	.L41
.L30:
	addiw	t0,t0,4
	or	a5,a5,t0
	slliw	a5,a5,6
	j	.L33
.L50:
	li	a5,-64
	j	.L33
.L31:
	slliw	a5,a5,6
	or	a5,a5,t3
	sext.w	a5,a5
	j	.L33
.L48:
	li	a5,-64
	j	.L17
.L59:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	.cfi_restore 9
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
