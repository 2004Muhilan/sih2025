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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	lbu	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	addw	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-56(s0)
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
