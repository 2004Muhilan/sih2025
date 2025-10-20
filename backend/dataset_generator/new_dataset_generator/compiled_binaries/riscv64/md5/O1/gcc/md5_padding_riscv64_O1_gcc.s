	.file	"md5_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_padding
	.type	md5_padding, @function
md5_padding:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s0,a1
	mv	s1,a2
	la	s4,__stack_chk_guard
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	mv	a2,a1
	mv	a1,a0
	mv	a0,s1
	call	memcpy@plt
	add	a5,s1,s0
	li	a4,-128
	sb	a4,0(a5)
	li	s2,55
	sub	s2,s2,s0
	andi	s2,s2,63
	addi	s3,s0,1
	mv	a2,s2
	li	a1,0
	add	a0,s1,s3
	call	memset@plt
	slli	a1,s0,3
	srliw	t1,a1,8
	srliw	a7,a1,16
	srli	a0,a1,32
	srli	a3,a1,40
	srli	a4,a1,48
	sd	a1,0(sp)
	add	s3,s3,s2
	add	a2,s1,s3
	srliw	a6,a1,24
	srli	a5,a1,56
	sb	a1,0(a2)
	sb	t1,1(a2)
	sb	a7,2(a2)
	sb	a6,3(a2)
	sb	a0,4(a2)
	sb	a3,5(a2)
	sb	a4,6(a2)
	sb	a5,7(a2)
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L4
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L4:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE14:
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
