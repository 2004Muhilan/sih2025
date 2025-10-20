	.file	"base64_encode_standard.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_encode_standard
	.type	base64_encode_standard, @function
base64_encode_standard:
.LFB0:
	.cfi_startproc
	beq	a1,zero,.L1
	li	a3,0
	li	t1,0
	lla	a6,.LANCHOR0
	j	.L4
.L5:
	mv	a3,a4
	mv	a4,t1
	mv	a7,t1
.L3:
	slliw	a5,a5,16
	addw	a5,a5,a7
	slliw	a4,a4,8
	addw	a5,a5,a4
	srliw	a4,a5,18
	slli	a4,a4,32
	srli	a4,a4,32
	add	a4,a6,a4
	lbu	a4,0(a4)
	sb	a4,0(a2)
	srliw	a4,a5,12
	andi	a4,a4,63
	add	a4,a6,a4
	lbu	a4,0(a4)
	sb	a4,1(a2)
	srliw	a4,a5,6
	andi	a4,a4,63
	add	a4,a6,a4
	lbu	a4,0(a4)
	sb	a4,2(a2)
	andi	a5,a5,63
	add	a5,a6,a5
	lbu	a5,0(a5)
	sb	a5,3(a2)
	addi	a2,a2,4
	bgeu	a3,a1,.L1
.L4:
	addi	a4,a3,1
	add	a5,a0,a3
	lbu	a5,0(a5)
	bleu	a1,a4,.L5
	addi	a7,a3,2
	add	a4,a0,a4
	lbu	a4,0(a4)
	bleu	a1,a7,.L6
	addi	a3,a3,3
	add	a7,a0,a7
	lbu	a7,0(a7)
	j	.L3
.L6:
	mv	a3,a7
	li	a7,0
	j	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_standard, .-base64_encode_standard
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
