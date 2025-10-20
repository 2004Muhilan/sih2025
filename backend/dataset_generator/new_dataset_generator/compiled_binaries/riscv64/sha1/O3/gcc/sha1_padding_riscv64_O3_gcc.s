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
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s1,24(sp)
	.cfi_offset 9, -24
	mv	s1,a2
	sd	s0,32(sp)
	sd	s2,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a1
	mv	a2,a1
	li	s2,55
	mv	a1,a0
	mv	a0,s1
	sd	ra,40(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	sub	s2,s2,s0
	call	memcpy@plt
	add	a5,s1,s0
	andi	s2,s2,63
	addi	s3,s0,1
	li	a4,-128
	sb	a4,0(a5)
	mv	a2,s2
	add	a0,s1,s3
	li	a1,0
	call	memset@plt
	slli	a1,s0,3
	add	s3,s3,s2
	add	a2,s1,s3
	srli	t1,a1,56
	srli	a7,a1,48
	srli	a6,a1,40
	srli	a0,a1,32
	srli	a3,a1,24
	srli	a4,a1,16
	srli	a5,a1,8
	sb	t1,0(a2)
	sb	a7,1(a2)
	sb	a6,2(a2)
	sb	a0,3(a2)
	sb	a3,4(a2)
	sb	a4,5(a2)
	sb	a5,6(a2)
	sb	a1,7(a2)
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	sha1_padding, .-sha1_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
