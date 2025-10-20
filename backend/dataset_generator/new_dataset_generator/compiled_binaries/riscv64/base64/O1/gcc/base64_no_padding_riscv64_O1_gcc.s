	.file	"base64_no_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
.LFB0:
	.cfi_startproc
	beq	a1,zero,.L8
	li	t3,2
	li	a3,1
	li	t1,0
	lla	t4,.LANCHOR0
	j	.L7
.L3:
	bleu	a1,t3,.L4
	lbu	a4,2(a6)
	or	a5,a5,a4
	sext.w	a5,a5
.L4:
	add	a7,a2,t1
	srliw	a4,a5,18
	add	a4,t4,a4
	lbu	a4,0(a4)
	sb	a4,0(a7)
	addi	a4,t1,2
	srliw	a6,a5,12
	andi	a6,a6,63
	add	a6,t4,a6
	lbu	a6,0(a6)
	sb	a6,1(a7)
	bgeu	a3,a1,.L5
	add	a4,a2,a4
	srliw	a6,a5,6
	andi	a6,a6,63
	add	a6,t4,a6
	lbu	a6,0(a6)
	sb	a6,0(a4)
	addi	a4,t1,3
.L5:
	mv	t1,a4
	bleu	a1,t3,.L6
	addi	t1,a4,1
	add	a4,a2,a4
	andi	a5,a5,63
	add	a5,t4,a5
	lbu	a5,0(a5)
	sb	a5,0(a4)
.L6:
	addi	a0,a0,3
	addi	a5,a3,3
	addi	t3,t3,3
	addi	a3,a3,2
	bleu	a1,a3,.L2
	mv	a3,a5
.L7:
	mv	a6,a0
	lbu	a4,0(a0)
	slliw	a4,a4,16
	sext.w	a5,a4
	bgeu	a3,a1,.L3
	lbu	a5,1(a0)
	slliw	a5,a5,8
	or	a5,a5,a4
	sext.w	a5,a5
	j	.L3
.L8:
	mv	t1,a1
.L2:
	add	a2,a2,t1
	sb	zero,0(a2)
	ret
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
