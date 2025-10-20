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
	beq	a1,zero,.L2
	li	a7,2
	li	a3,1
	li	a6,0
	lla	t3,.LANCHOR0
.L7:
	lbu	a4,0(a0)
	slliw	a4,a4,16
	sext.w	a5,a4
	bleu	a1,a3,.L3
	lbu	a5,1(a0)
	slliw	a5,a5,8
	or	a5,a5,a4
	sext.w	a5,a5
.L3:
	bleu	a1,a7,.L4
	lbu	a4,2(a0)
	or	a5,a5,a4
.L4:
	srliw	a4,a5,12
	srliw	t1,a5,18
	andi	a4,a4,63
	add	t1,t3,t1
	add	a4,t3,a4
	lbu	t4,0(t1)
	lbu	t1,0(a4)
	add	a4,a2,a6
	sb	t4,0(a4)
	sb	t1,1(a4)
	addi	t1,a6,2
	bleu	a1,a3,.L8
	srliw	a4,a5,6
	andi	a4,a4,63
	add	a4,t3,a4
	lbu	a4,0(a4)
	add	t1,a2,t1
	addi	a6,a6,3
	sb	a4,0(t1)
.L5:
	bleu	a1,a7,.L6
	andi	a5,a5,63
	add	a5,t3,a5
	lbu	a4,0(a5)
	add	a5,a2,a6
	addi	a6,a6,1
	sb	a4,0(a5)
.L6:
	addi	a5,a3,2
	addi	a0,a0,3
	addi	a3,a3,3
	addi	a7,a7,3
	bgtu	a1,a5,.L7
	add	a2,a2,a6
.L2:
	sb	zero,0(a2)
	ret
.L8:
	mv	a6,t1
	j	.L5
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
