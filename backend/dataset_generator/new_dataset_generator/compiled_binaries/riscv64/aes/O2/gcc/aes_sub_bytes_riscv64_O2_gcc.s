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
	addi	a3,a0,16
	lla	a4,.LANCHOR0
.L2:
	lbu	a5,0(a0)
	addi	a0,a0,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-1(a0)
	bne	a0,a3,.L2
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
	addi	a3,a0,16
	lla	a4,.LANCHOR0
.L6:
	lbu	a5,0(a0)
	addi	a0,a0,1
	add	a5,a4,a5
	lbu	a5,256(a5)
	sb	a5,-1(a0)
	bne	a0,a3,.L6
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
