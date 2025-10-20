	.file	"rc4_prga.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
.LFB0:
	.cfi_startproc
	lbu	a5,0(a1)
	addiw	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,0(a1)
	add	a5,a0,a5
	lbu	a5,0(a5)
	lbu	a4,0(a2)
	addw	a5,a5,a4
	andi	a5,a5,0xff
	sb	a5,0(a2)
	lbu	a4,0(a1)
	add	a4,a0,a4
	lbu	a3,0(a4)
	add	a5,a0,a5
	lbu	a5,0(a5)
	sb	a5,0(a4)
	lbu	a5,0(a2)
	add	a5,a0,a5
	sb	a3,0(a5)
	lbu	a5,0(a1)
	add	a5,a0,a5
	lbu	a4,0(a2)
	add	a4,a0,a4
	lbu	a5,0(a5)
	lbu	a4,0(a4)
	addw	a5,a5,a4
	andi	a5,a5,0xff
	add	a0,a0,a5
	lbu	a0,0(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
