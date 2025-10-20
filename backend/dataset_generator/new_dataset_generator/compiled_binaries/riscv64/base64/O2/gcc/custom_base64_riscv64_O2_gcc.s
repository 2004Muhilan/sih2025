	.file	"custom_base64.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_encode
	.type	base64_encode, @function
base64_encode:
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
	.size	base64_encode, .-base64_encode
	.align	1
	.globl	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.cfi_startproc
	li	a5,0
	li	a2,4
.L13:
	add	a4,a0,a5
	lbu	a3,0(a4)
	add	a4,a1,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	bne	a5,a2,.L13
	ret
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
