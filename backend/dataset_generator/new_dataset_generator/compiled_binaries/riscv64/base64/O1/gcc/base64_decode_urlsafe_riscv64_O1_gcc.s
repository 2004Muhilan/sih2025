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
	mv	a5,a0
	li	a4,90
	bgtu	a0,a4,.L2
	li	a4,64
	bgtu	a0,a4,.L3
	li	a4,45
	li	a0,62
	beq	a5,a4,.L4
	addiw	a4,a5,-48
	andi	a4,a4,0xff
	li	a3,9
	bgtu	a4,a3,.L6
	addi	a0,a5,4
	ret
.L2:
	li	a4,95
	li	a0,63
	beq	a5,a4,.L4
	addiw	a4,a5,-97
	andi	a4,a4,0xff
	li	a3,25
	bgtu	a4,a3,.L8
	addiw	a0,a5,-71
	ret
.L3:
	addiw	a0,a0,-65
	ret
.L6:
	li	a0,-1
	ret
.L8:
	li	a0,-1
.L4:
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
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	lbu	a0,0(a0)
	beq	a0,zero,.L9
	sd	s1,8(sp)
	.cfi_offset 9, -24
	mv	s1,a1
	addi	s0,s0,1
.L11:
	call	base64_url_char_value
	sb	a0,0(s1)
	lbu	a0,0(s0)
	addi	s1,s1,1
	addi	s0,s0,1
	bne	a0,zero,.L11
	ld	s1,8(sp)
	.cfi_restore 9
.L9:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
