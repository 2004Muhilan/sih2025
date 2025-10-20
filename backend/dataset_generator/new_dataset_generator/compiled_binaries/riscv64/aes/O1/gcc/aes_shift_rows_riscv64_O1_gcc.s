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
	lbu	a5,1(a0)
	lbu	a4,5(a0)
	sb	a4,1(a0)
	lbu	a4,9(a0)
	sb	a4,5(a0)
	lbu	a4,13(a0)
	sb	a4,9(a0)
	sb	a5,13(a0)
	lbu	a5,2(a0)
	lbu	a4,10(a0)
	sb	a4,2(a0)
	sb	a5,10(a0)
	lbu	a5,6(a0)
	lbu	a4,14(a0)
	sb	a4,6(a0)
	sb	a5,14(a0)
	lbu	a5,15(a0)
	lbu	a4,11(a0)
	sb	a4,15(a0)
	lbu	a4,7(a0)
	sb	a4,11(a0)
	lbu	a4,3(a0)
	sb	a4,7(a0)
	sb	a5,3(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
