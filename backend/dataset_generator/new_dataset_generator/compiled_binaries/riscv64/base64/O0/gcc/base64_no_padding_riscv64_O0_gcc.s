	.file	"base64_no_padding.c"
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
	.globl	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
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
.L7:
	ld	a4,-56(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sw	a5,-36(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	ld	a4,-64(s0)
	bleu	a4,a5,.L3
	ld	a5,-24(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-36(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
.L3:
	ld	a5,-24(s0)
	addi	a5,a5,2
	ld	a4,-64(s0)
	bleu	a4,a5,.L4
	ld	a5,-24(s0)
	addi	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-36(s0)
	or	a5,a4,a5
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	srliw	a5,a5,18
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
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
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	ld	a4,-64(s0)
	bleu	a4,a5,.L5
	lw	a5,-36(s0)
	srliw	a5,a5,6
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L5:
	ld	a5,-24(s0)
	addi	a5,a5,2
	ld	a4,-64(s0)
	bleu	a4,a5,.L6
	lw	a5,-36(s0)
	andi	a5,a5,63
	sext.w	a2,a5
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lla	a3,b64
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L6:
	ld	a5,-24(s0)
	addi	a5,a5,3
	sd	a5,-24(s0)
.L2:
	ld	a4,-24(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L7
	ld	a4,-72(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
