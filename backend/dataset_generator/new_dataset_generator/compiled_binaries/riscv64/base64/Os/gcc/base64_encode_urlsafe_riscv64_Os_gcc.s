	.file	"base64_encode_urlsafe.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_encode_urlsafe
	.type	base64_encode_urlsafe, @function
base64_encode_urlsafe:
.LFB0:
	.cfi_startproc
	li	a3,0
	lla	a7,.LANCHOR0
.L2:
	bltu	a3,a1,.L4
	ret
.L4:
	add	a5,a0,a3
	addi	a4,a3,1
	lbu	a5,0(a5)
	bleu	a1,a4,.L5
	add	a4,a0,a4
	addi	a6,a3,2
	lbu	t1,0(a4)
	bleu	a1,a6,.L6
	add	a6,a0,a6
	addi	a4,a3,3
	lbu	a3,0(a6)
.L3:
	slliw	a5,a5,16
	addw	a5,a5,a3
	slliw	t1,t1,8
	addw	a5,a5,t1
	srliw	a3,a5,18
	slli	a3,a3,32
	srli	a3,a3,32
	add	a3,a7,a3
	lbu	a3,0(a3)
	addi	a2,a2,4
	sb	a3,-4(a2)
	srliw	a3,a5,12
	andi	a3,a3,63
	add	a3,a7,a3
	lbu	a3,0(a3)
	sb	a3,-3(a2)
	srliw	a3,a5,6
	andi	a3,a3,63
	andi	a5,a5,63
	add	a3,a7,a3
	add	a5,a7,a5
	lbu	a3,0(a3)
	lbu	a5,0(a5)
	sb	a3,-2(a2)
	sb	a5,-1(a2)
	mv	a3,a4
	j	.L2
.L5:
	li	t1,0
.L7:
	li	a3,0
	j	.L3
.L6:
	mv	a4,a6
	j	.L7
	.cfi_endproc
.LFE0:
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64url, @object
	.size	b64url, 65
b64url:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
