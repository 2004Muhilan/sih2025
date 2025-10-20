	.file	"aes_add_round_key.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
.LFB0:
	.cfi_startproc
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L2
	addi	a5,a1,1
	sub	a5,a0,a5
	sltiu	a5,a5,7
	bne	a5,zero,.L2
	ld	a3,0(a1)
	ld	a4,0(a0)
	ld	a5,8(a0)
	xor	a4,a4,a3
	sd	a4,0(a0)
	ld	a4,8(a1)
	xor	a5,a5,a4
	sd	a5,8(a0)
	ret
.L2:
	lbu	a2,0(a1)
	lbu	a5,0(a0)
	lbu	a3,1(a0)
	lbu	a4,2(a0)
	xor	a5,a5,a2
	sb	a5,0(a0)
	lbu	a2,1(a1)
	lbu	a5,3(a0)
	lbu	t1,4(a0)
	xor	a3,a3,a2
	sb	a3,1(a0)
	lbu	a3,2(a1)
	lbu	a7,5(a0)
	lbu	a6,6(a0)
	xor	a4,a4,a3
	sb	a4,2(a0)
	lbu	a4,3(a1)
	lbu	a2,7(a0)
	lbu	a3,8(a0)
	xor	a5,a5,a4
	sb	a5,3(a0)
	lbu	t3,4(a1)
	lbu	a4,9(a0)
	lbu	a5,10(a0)
	xor	t1,t1,t3
	sb	t1,4(a0)
	lbu	t1,5(a1)
	xor	a7,a7,t1
	sb	a7,5(a0)
	lbu	a7,6(a1)
	xor	a6,a6,a7
	sb	a6,6(a0)
	lbu	a6,7(a1)
	xor	a2,a2,a6
	sb	a2,7(a0)
	lbu	a2,8(a1)
	xor	a3,a3,a2
	sb	a3,8(a0)
	lbu	a3,9(a1)
	xor	a4,a4,a3
	sb	a4,9(a0)
	lbu	a4,10(a1)
	xor	a5,a5,a4
	sb	a5,10(a0)
	lbu	a4,11(a1)
	lbu	a5,11(a0)
	lbu	a2,12(a0)
	lbu	a3,13(a0)
	xor	a5,a5,a4
	sb	a5,11(a0)
	lbu	a6,12(a1)
	lbu	a4,14(a0)
	lbu	a5,15(a0)
	xor	a2,a2,a6
	sb	a2,12(a0)
	lbu	a2,13(a1)
	xor	a3,a3,a2
	sb	a3,13(a0)
	lbu	a3,14(a1)
	xor	a4,a4,a3
	sb	a4,14(a0)
	lbu	a4,15(a1)
	xor	a5,a5,a4
	sb	a5,15(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
