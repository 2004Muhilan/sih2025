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
	li	a4,90
	mv	a5,a0
	bgtu	a0,a4,.L2
	li	a4,64
	bgtu	a0,a4,.L3
	li	a4,45
	li	a0,62
	beq	a5,a4,.L4
	addiw	a4,a5,-48
	andi	a4,a4,0xff
	li	a3,9
	bgtu	a4,a3,.L8
	addi	a0,a5,4
	ret
.L8:
	li	a0,-1
.L4:
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
	.cfi_endproc
.LFE0:
	.size	base64_url_char_value, .-base64_url_char_value
	.align	1
	.globl	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
.LFB1:
	.cfi_startproc
	lbu	a5,0(a0)
	addi	a0,a0,1
	beq	a5,zero,.L10
	li	a3,90
	li	a7,95
	li	t3,25
	li	a2,64
	li	a6,45
	li	t1,9
.L15:
	bgtu	a5,a3,.L12
	bgtu	a5,a2,.L13
	li	a4,62
	beq	a5,a6,.L14
	addiw	a4,a5,-48
	andi	a4,a4,0xff
	bgtu	a4,t1,.L20
	addiw	a5,a5,4
	andi	a4,a5,0xff
.L14:
	sb	a4,0(a1)
	lbu	a5,0(a0)
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a5,zero,.L15
.L10:
	ret
.L12:
	li	a4,63
	beq	a5,a7,.L14
	addiw	a4,a5,-97
	andi	a4,a4,0xff
	bgtu	a4,t3,.L20
	addiw	a5,a5,-71
	andi	a4,a5,0xff
	j	.L14
.L13:
	addiw	a5,a5,-65
	andi	a4,a5,0xff
	j	.L14
.L20:
	li	a4,255
	j	.L14
	.cfi_endproc
.LFE1:
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
