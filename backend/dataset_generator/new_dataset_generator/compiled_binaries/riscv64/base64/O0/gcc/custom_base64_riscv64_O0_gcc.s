	.file	"custom_base64.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
	.align	1
	.globl	base64_encode
	.type	base64_encode, @function
base64_encode:
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
	sd	zero,-32(s0)
	sd	zero,-24(s0)
	j	.L2
.L9:
	ld	a4,-32(s0)
	ld	a5,-64(s0)
	bgeu	a4,a5,.L3
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	j	.L4
.L3:
	li	a5,0
.L4:
	sw	a5,-48(s0)
	ld	a4,-32(s0)
	ld	a5,-64(s0)
	bgeu	a4,a5,.L5
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	j	.L6
.L5:
	li	a5,0
.L6:
	sw	a5,-44(s0)
	ld	a4,-32(s0)
	ld	a5,-64(s0)
	bgeu	a4,a5,.L7
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	j	.L8
.L7:
	li	a5,0
.L8:
	sw	a5,-40(s0)
	lw	a5,-48(s0)
	slliw	a5,a5,16
	sext.w	a4,a5
	lw	a5,-44(s0)
	slliw	a5,a5,8
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	srliw	a5,a5,18
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	srliw	a5,a5,12
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	srliw	a5,a5,6
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L2:
	ld	a4,-32(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L9
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
	.size	base64_encode, .-base64_encode
	.align	1
	.globl	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sw	zero,-20(s0)
	j	.L11
.L12:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	ld	a3,-48(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L12
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
