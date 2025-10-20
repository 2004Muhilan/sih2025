	.file	"des_sbox_substitution.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	S1, @object
	.size	S1, 64
S1:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.ascii	"\007"
	.string	""
	.ascii	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.string	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.text
	.align	1
	.globl	des_sbox
	.type	des_sbox, @function
des_sbox:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lbu	a5,-33(s0)
	sext.w	a5,a5
	sraiw	a5,a5,4
	sext.w	a5,a5
	andi	a5,a5,2
	sext.w	a4,a5
	lbu	a5,-33(s0)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-24(s0)
	lbu	a5,-33(s0)
	sext.w	a5,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	andi	a5,a5,15
	sw	a5,-20(s0)
	lla	a3,S1
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	slli	a4,a4,4
	add	a4,a3,a4
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	des_sbox, .-des_sbox
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
