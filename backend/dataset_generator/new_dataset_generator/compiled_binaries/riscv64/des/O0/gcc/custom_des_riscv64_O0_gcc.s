	.file	"custom_des.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	sbox, @object
	.size	sbox, 512
sbox:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.string	"\007"
	.string	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.zero	448
	.text
	.align	1
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	zero,-24(s0)
	sw	zero,-48(s0)
	j	.L2
.L3:
	lw	a5,-48(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,7
	lw	a3,-48(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	slliw	a5,a5,3
	sext.w	a5,a5
	sll	a5,a4,a5
	ld	a4,-24(s0)
	or	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L3
	sw	zero,-44(s0)
	j	.L4
.L5:
	ld	a5,-24(s0)
	sw	a5,-36(s0)
	ld	a5,-24(s0)
	srli	a5,a5,32
	sw	a5,-32(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,29
	addw	a4,a4,a5
	andi	a4,a4,7
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-36(s0)
	xor	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	xor	a5,a4,a5
	sw	a5,-32(s0)
	lwu	a5,-36(s0)
	slli	a4,a5,32
	lwu	a5,-32(s0)
	or	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L4:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L5
	sw	zero,-40(s0)
	j	.L6
.L7:
	li	a5,7
	lw	a4,-40(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	slliw	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	srl	a3,a5,a4
	lw	a5,-40(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L6:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L7
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
