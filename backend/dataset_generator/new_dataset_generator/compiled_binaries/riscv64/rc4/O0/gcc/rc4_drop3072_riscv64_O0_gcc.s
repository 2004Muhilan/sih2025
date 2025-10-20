	.file	"rc4_drop3072.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
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
	sw	zero,-28(s0)
	j	.L2
.L3:
	lw	a5,-28(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L3
	sb	zero,-31(s0)
	sw	zero,-24(s0)
	j	.L4
.L5:
	lbu	a5,-31(s0)
	sext.w	a4,a5
	lw	a5,-24(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a3,-24(s0)
	ld	a5,-56(s0)
	remu	a5,a3,a5
	ld	a3,-48(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	sb	a5,-31(s0)
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	lbu	a5,-31(s0)
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lbu	a5,-31(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L5
	sw	zero,-20(s0)
	j	.L6
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,24
	addw	a4,a4,a5
	andi	a4,a4,255
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sb	a5,-30(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,4096
	addi	a5,a5,-1025
	ble	a4,a5,.L7
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
