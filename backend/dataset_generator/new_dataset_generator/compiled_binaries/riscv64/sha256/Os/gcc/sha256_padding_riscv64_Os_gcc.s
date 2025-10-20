	.file	"sha256_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_padding
	.type	sha256_padding, @function
sha256_padding:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	.cfi_offset 8, -16
	mv	s0,a2
	sd	s1,8(sp)
	mv	a2,a1
	.cfi_offset 9, -24
	mv	s1,a1
	sd	s2,0(sp)
	mv	a1,a0
	.cfi_offset 18, -32
	li	s2,55
	mv	a0,s0
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sub	s2,s2,s1
	call	memcpy@plt
	add	a5,s0,s1
	li	a4,-128
	andi	s2,s2,63
	addi	a0,s1,1
	sb	a4,0(a5)
	mv	a2,s2
	add	a0,s0,a0
	li	a1,0
	call	memset@plt
	slli	a2,s1,3
	add	s1,s1,s2
	add	s0,s0,s1
	li	a5,56
	li	a4,-8
.L2:
	srl	a3,a2,a5
	sb	a3,1(s0)
	addiw	a5,a5,-8
	addi	s0,s0,1
	bne	a5,a4,.L2
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
