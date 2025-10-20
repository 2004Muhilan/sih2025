	.file	"aes_shift_rows.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	lbu	t3,1(a0)
	lbu	t6,5(a0)
	lbu	t5,9(a0)
	lbu	t4,13(a0)
	lbu	a7,2(a0)
	lbu	t1,10(a0)
	lbu	a1,6(a0)
	lbu	a6,14(a0)
	lbu	a5,15(a0)
	lbu	a2,11(a0)
	lbu	a3,7(a0)
	lbu	a4,3(a0)
	sb	t6,1(a0)
	sb	t5,5(a0)
	sb	t4,9(a0)
	sb	t3,13(a0)
	sb	t1,2(a0)
	sb	a7,10(a0)
	sb	a6,6(a0)
	sb	a1,14(a0)
	sb	a2,15(a0)
	sb	a3,11(a0)
	sb	a4,7(a0)
	sb	a5,3(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
