	.file	"aes_sub_bytes.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
.LFB0:
	.cfi_startproc
	lbu	t6,0(a0)
	lbu	t5,1(a0)
	lbu	t4,2(a0)
	lbu	t3,3(a0)
	lbu	t1,4(a0)
	lbu	a7,5(a0)
	lbu	a6,6(a0)
	lbu	a1,7(a0)
	lbu	a2,8(a0)
	lbu	a3,9(a0)
	lbu	a4,10(a0)
	lla	a5,.LANCHOR0
	add	t6,a5,t6
	add	t5,a5,t5
	add	t4,a5,t4
	add	t3,a5,t3
	add	t1,a5,t1
	add	a7,a5,a7
	add	a6,a5,a6
	add	a1,a5,a1
	add	a2,a5,a2
	add	a3,a5,a3
	lbu	a6,0(a6)
	lbu	a1,0(a1)
	lbu	a2,0(a2)
	lbu	a3,0(a3)
	lbu	t6,0(t6)
	lbu	t5,0(t5)
	lbu	t4,0(t4)
	lbu	t3,0(t3)
	lbu	t1,0(t1)
	lbu	a7,0(a7)
	add	a4,a5,a4
	lbu	a4,0(a4)
	sb	a6,6(a0)
	sb	a1,7(a0)
	sb	a2,8(a0)
	sb	a3,9(a0)
	sb	t6,0(a0)
	sb	t5,1(a0)
	sb	t4,2(a0)
	sb	t3,3(a0)
	sb	t1,4(a0)
	sb	a7,5(a0)
	sb	a4,10(a0)
	lbu	a1,11(a0)
	lbu	a2,12(a0)
	lbu	a3,13(a0)
	lbu	a4,14(a0)
	lbu	a6,15(a0)
	add	a1,a5,a1
	add	a2,a5,a2
	add	a3,a5,a3
	add	a4,a5,a4
	add	a5,a5,a6
	lbu	a1,0(a1)
	lbu	a2,0(a2)
	lbu	a3,0(a3)
	lbu	a4,0(a4)
	lbu	a5,0(a5)
	sb	a1,11(a0)
	sb	a2,12(a0)
	sb	a3,13(a0)
	sb	a4,14(a0)
	sb	a5,15(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	aes_sub_bytes, .-aes_sub_bytes
	.align	1
	.globl	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
.LFB1:
	.cfi_startproc
	lbu	t6,0(a0)
	lbu	t5,1(a0)
	lbu	t4,2(a0)
	lbu	t3,3(a0)
	lbu	t1,4(a0)
	lbu	a7,5(a0)
	lbu	a6,6(a0)
	lbu	a1,7(a0)
	lbu	a2,8(a0)
	lbu	a3,9(a0)
	lbu	a4,10(a0)
	lla	a5,.LANCHOR0
	add	t6,a5,t6
	add	t5,a5,t5
	add	t4,a5,t4
	add	t3,a5,t3
	add	t1,a5,t1
	add	a7,a5,a7
	add	a6,a5,a6
	add	a1,a5,a1
	add	a2,a5,a2
	add	a3,a5,a3
	lbu	a6,256(a6)
	lbu	a1,256(a1)
	lbu	a2,256(a2)
	lbu	a3,256(a3)
	lbu	t6,256(t6)
	lbu	t5,256(t5)
	lbu	t4,256(t4)
	lbu	t3,256(t3)
	lbu	t1,256(t1)
	lbu	a7,256(a7)
	add	a4,a5,a4
	lbu	a4,256(a4)
	sb	a6,6(a0)
	sb	a1,7(a0)
	sb	a2,8(a0)
	sb	a3,9(a0)
	sb	t6,0(a0)
	sb	t5,1(a0)
	sb	t4,2(a0)
	sb	t3,3(a0)
	sb	t1,4(a0)
	sb	a7,5(a0)
	sb	a4,10(a0)
	lbu	a1,11(a0)
	lbu	a2,12(a0)
	lbu	a3,13(a0)
	lbu	a4,14(a0)
	lbu	a6,15(a0)
	add	a1,a5,a1
	add	a2,a5,a2
	add	a3,a5,a3
	add	a4,a5,a4
	add	a5,a5,a6
	lbu	a1,256(a1)
	lbu	a2,256(a2)
	lbu	a3,256(a3)
	lbu	a4,256(a4)
	lbu	a5,256(a5)
	sb	a1,11(a0)
	sb	a2,12(a0)
	sb	a3,13(a0)
	sb	a4,14(a0)
	sb	a5,15(a0)
	ret
	.cfi_endproc
.LFE1:
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v"
	.zero	239
	.type	inv_sbox.0, @object
	.size	inv_sbox.0, 256
inv_sbox.0:
	.string	"R\tj\32506\2458"
	.zero	247
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
