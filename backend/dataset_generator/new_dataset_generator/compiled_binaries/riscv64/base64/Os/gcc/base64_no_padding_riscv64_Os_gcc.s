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
	li	a3,2
	li	a7,0
	lla	t1,.LANCHOR0
.L2:
	addi	a5,a3,-2
	add	t3,a2,a7
	bltu	a5,a1,.L7
	sb	zero,0(t3)
	ret
.L7:
	lbu	a4,0(a0)
	addi	t4,a3,-1
	slliw	a4,a4,16
	sext.w	a5,a4
	bleu	a1,t4,.L3
	lbu	a5,1(a0)
	slliw	a5,a5,8
	or	a5,a5,a4
	sext.w	a5,a5
.L3:
	bleu	a1,a3,.L4
	lbu	a4,2(a0)
	or	a5,a5,a4
.L4:
	srliw	a6,a5,12
	srliw	a4,a5,18
	andi	a6,a6,63
	add	a4,t1,a4
	add	a6,t1,a6
	lbu	a4,0(a4)
	lbu	a6,0(a6)
	sb	a4,0(t3)
	sb	a6,1(t3)
	addi	a4,a7,2
	bleu	a1,t4,.L5
	srliw	a6,a5,6
	andi	a6,a6,63
	add	a6,t1,a6
	lbu	a6,0(a6)
	add	a4,a2,a4
	sb	a6,0(a4)
	addi	a4,a7,3
.L5:
	bleu	a1,a3,.L6
	andi	a5,a5,63
	add	a5,t1,a5
	lbu	a5,0(a5)
	add	a6,a2,a4
	addi	a4,a4,1
	sb	a5,0(a6)
.L6:
	addi	a3,a3,3
	addi	a0,a0,3
	mv	a7,a4
	j	.L2
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
