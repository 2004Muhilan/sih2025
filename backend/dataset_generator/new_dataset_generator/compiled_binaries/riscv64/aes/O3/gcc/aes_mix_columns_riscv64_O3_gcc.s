	.file	"aes_mix_columns.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	lbu	a1,0(a0)
	lbu	t1,1(a0)
	lbu	a3,2(a0)
	slliw	a5,a1,24
	slliw	a7,a1,1
	sraiw	a5,a5,24
	lbu	a2,3(a0)
	andi	a7,a7,0xff
	bge	a5,zero,.L2
	xori	a7,a7,27
.L2:
	slliw	a5,t1,24
	slliw	a4,t1,1
	sraiw	a5,a5,24
	andi	a4,a4,0xff
	bge	a5,zero,.L3
	xori	a4,a4,27
.L3:
	xor	a6,t1,a3
	xor	a6,a2,a6
	xor	a6,a7,a6
	xor	a6,a4,a6
	slliw	t3,a3,24
	slliw	a5,a3,1
	sb	a6,0(a0)
	sraiw	t3,t3,24
	xor	a6,a1,a3
	andi	a5,a5,0xff
	bge	t3,zero,.L4
	xori	a5,a5,27
.L4:
	xor	a6,a2,a6
	xor	a4,a4,a6
	xor	a4,a5,a4
	xor	a1,a1,t1
	slliw	t1,a2,24
	slliw	a6,a2,1
	sb	a4,1(a0)
	sraiw	t1,t1,24
	xor	a4,a2,a1
	andi	a6,a6,0xff
	bge	t1,zero,.L5
	xori	a6,a6,27
.L5:
	lbu	a2,4(a0)
	xor	a3,a3,a1
	xor	a7,a7,a3
	xor	a5,a5,a4
	xor	a4,a6,a7
	xor	a5,a6,a5
	sb	a4,3(a0)
	slliw	a4,a2,24
	slliw	a6,a2,1
	sb	a5,2(a0)
	sraiw	a4,a4,24
	lbu	t1,5(a0)
	lbu	a3,6(a0)
	lbu	a5,7(a0)
	andi	a6,a6,0xff
	bge	a4,zero,.L6
	xori	a6,a6,27
.L6:
	slliw	a1,t1,24
	slliw	a4,t1,1
	sraiw	a1,a1,24
	andi	a4,a4,0xff
	bge	a1,zero,.L7
	xori	a4,a4,27
.L7:
	xor	a1,a3,t1
	xor	a1,a5,a1
	xor	a1,a6,a1
	xor	a1,a4,a1
	slliw	t3,a3,24
	slliw	a7,a3,1
	sb	a1,4(a0)
	sraiw	t3,t3,24
	xor	a1,a2,a3
	andi	a7,a7,0xff
	bge	t3,zero,.L8
	xori	a7,a7,27
.L8:
	xor	a1,a5,a1
	xor	a4,a4,a1
	xor	a4,a7,a4
	xor	a2,a2,t1
	slliw	t1,a5,24
	slliw	a1,a5,1
	sb	a4,5(a0)
	sraiw	t1,t1,24
	xor	a5,a5,a2
	andi	a4,a1,0xff
	bge	t1,zero,.L9
	xori	a4,a4,27
.L9:
	lbu	t1,8(a0)
	xor	a3,a3,a2
	xor	a5,a5,a7
	xor	a6,a6,a3
	xor	a5,a4,a5
	xor	a4,a4,a6
	sb	a4,7(a0)
	slliw	a4,t1,24
	slliw	a1,t1,1
	sb	a5,6(a0)
	sraiw	a4,a4,24
	lbu	a3,9(a0)
	lbu	a7,10(a0)
	lbu	a5,11(a0)
	andi	a1,a1,0xff
	bge	a4,zero,.L10
	xori	a1,a1,27
.L10:
	slliw	a2,a3,24
	slliw	a4,a3,1
	sraiw	a2,a2,24
	andi	a4,a4,0xff
	bge	a2,zero,.L11
	xori	a4,a4,27
.L11:
	xor	a2,a7,a3
	xor	a2,a5,a2
	xor	a2,a1,a2
	xor	a2,a4,a2
	slliw	t3,a7,24
	slliw	a6,a7,1
	sb	a2,8(a0)
	sraiw	t3,t3,24
	xor	a2,a7,t1
	andi	a6,a6,0xff
	bge	t3,zero,.L12
	xori	a6,a6,27
.L12:
	xor	a2,a2,a5
	xor	a4,a4,a2
	xor	a4,a6,a4
	xor	a3,a3,t1
	slliw	t1,a5,24
	slliw	a2,a5,1
	sb	a4,9(a0)
	sraiw	t1,t1,24
	xor	a5,a3,a5
	andi	a4,a2,0xff
	bge	t1,zero,.L13
	xori	a4,a4,27
.L13:
	lbu	t1,12(a0)
	xor	a3,a3,a7
	xor	a5,a5,a6
	xor	a1,a1,a3
	xor	a5,a4,a5
	sb	a5,10(a0)
	xor	a4,a4,a1
	slliw	a5,t1,24
	slliw	a7,t1,1
	sb	a4,11(a0)
	sraiw	a5,a5,24
	lbu	a1,13(a0)
	lbu	a3,14(a0)
	lbu	a2,15(a0)
	andi	a7,a7,0xff
	bge	a5,zero,.L14
	xori	a7,a7,27
.L14:
	slliw	a5,a1,24
	slliw	a4,a1,1
	sraiw	a5,a5,24
	andi	a4,a4,0xff
	bge	a5,zero,.L15
	xori	a4,a4,27
.L15:
	xor	a6,a1,a3
	xor	a6,a2,a6
	xor	a6,a7,a6
	xor	a6,a4,a6
	slliw	t3,a3,24
	slliw	a5,a3,1
	sb	a6,12(a0)
	sraiw	t3,t3,24
	xor	a6,t1,a3
	andi	a5,a5,0xff
	bge	t3,zero,.L16
	xori	a5,a5,27
.L16:
	xor	a6,a6,a2
	xor	a4,a4,a6
	xor	a4,a5,a4
	xor	a1,a1,t1
	slliw	t1,a2,24
	slliw	a6,a2,1
	sb	a4,13(a0)
	sraiw	t1,t1,24
	xor	a2,a1,a2
	andi	a4,a6,0xff
	bge	t1,zero,.L17
	xori	a4,a4,27
.L17:
	xor	a3,a3,a1
	xor	a5,a5,a2
	xor	a7,a7,a3
	xor	a5,a4,a5
	xor	a4,a4,a7
	sb	a5,14(a0)
	sb	a4,15(a0)
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
