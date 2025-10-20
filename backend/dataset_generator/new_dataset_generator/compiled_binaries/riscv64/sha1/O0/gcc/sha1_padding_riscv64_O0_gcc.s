	.file	"sha1_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_padding
	.type	sha1_padding, @function
sha1_padding:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a2,-64(s0)
	ld	a1,-56(s0)
	ld	a0,-72(s0)
	call	memcpy@plt
	ld	a4,-72(s0)
	ld	a5,-64(s0)
	add	a5,a4,a5
	li	a4,-128
	sb	a4,0(a5)
	li	a4,55
	ld	a5,-64(s0)
	sub	a5,a4,a5
	andi	a5,a5,63
	sd	a5,-32(s0)
	ld	a5,-64(s0)
	addi	a5,a5,1
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a2,-32(s0)
	li	a1,0
	mv	a0,a5
	call	memset@plt
	ld	a5,-64(s0)
	slli	a5,a5,3
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	j	.L2
.L3:
	li	a5,7
	lw	a4,-36(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	slliw	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	srl	a3,a5,a4
	ld	a4,-64(s0)
	ld	a5,-32(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	ld	a4,-72(s0)
	add	a5,a4,a5
	andi	a4,a3,0xff
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L3
	nop
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
