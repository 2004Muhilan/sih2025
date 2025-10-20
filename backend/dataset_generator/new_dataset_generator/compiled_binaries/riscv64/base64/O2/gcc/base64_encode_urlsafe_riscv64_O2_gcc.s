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
	li	a7,0
	lla	t1,.LANCHOR0
	bne	a1,zero,.L4
	ret
.L11:
	lbu	a3,0(a3)
	addi	a7,a7,3
	slli	a3,a3,8
	bleu	a1,a6,.L7
	lbu	a4,0(t3)
.L3:
	addw	a4,a4,a3
	slliw	a5,a5,16
	addw	a5,a5,a4
	srliw	a6,a5,18
	srliw	a3,a5,12
	srliw	a4,a5,6
	slli	a6,a6,32
	srli	a6,a6,32
	andi	a3,a3,63
	andi	a4,a4,63
	andi	a5,a5,63
	add	a6,t1,a6
	add	a3,t1,a3
	add	a4,t1,a4
	add	a5,t1,a5
	lbu	a6,0(a6)
	lbu	a3,0(a3)
	lbu	a4,0(a4)
	lbu	a5,0(a5)
	sb	a6,0(a2)
	sb	a3,1(a2)
	sb	a4,2(a2)
	sb	a5,3(a2)
	addi	a2,a2,4
	bgeu	a7,a1,.L1
.L4:
	addi	a4,a7,1
	add	a5,a0,a7
	addi	a6,a7,2
	lbu	a5,0(a5)
	add	a3,a0,a4
	add	t3,a0,a6
	bgtu	a1,a4,.L11
	mv	a7,a4
	li	a3,0
	li	a4,0
	j	.L3
.L1:
	ret
.L7:
	mv	a7,a6
	li	a4,0
	j	.L3
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
