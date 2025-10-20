	.file	"base64_decode_urlsafe.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
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
	li	a5,45
	li	a0,62
	beq	a4,a5,.L3
	li	a5,95
	li	a0,63
	beq	a4,a5,.L3
	li	a0,-1
.L3:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.align	1
	.globl	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s2,a1
	li	s0,0
.L9:
	add	a5,s1,s0
	lbu	a0,0(a5)
	bne	a0,zero,.L10
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L10:
	.cfi_restore_state
	call	base64_url_char_value
	add	a5,s2,s0
	sb	a0,0(a5)
	addi	s0,s0,1
	j	.L9
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
