	.file	"quicksort.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	lw	a5,0(a0)
	lw	a4,0(a1)
	sw	a4,0(a0)
	sw	a5,0(a1)
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.align	1
	.globl	partition
	.type	partition, @function
partition:
.LFB1:
	.cfi_startproc
	slli	t1,a2,2
	add	t1,a0,t1
	lw	a7,0(t1)
	addiw	a6,a1,-1
	ble	a2,a1,.L3
	slli	a5,a1,2
	add	a5,a0,a5
	subw	a4,a2,a1
	slli	a4,a4,32
	srli	a4,a4,32
	add	a4,a4,a1
	slli	a4,a4,2
	add	a4,a0,a4
	j	.L5
.L4:
	addi	a5,a5,4
	beq	a5,a4,.L3
.L5:
	lw	a3,0(a5)
	bge	a3,a7,.L4
	addiw	a6,a6,1
	slli	a2,a6,2
	add	a2,a0,a2
	lw	a1,0(a2)
	sw	a3,0(a2)
	sw	a1,0(a5)
	j	.L4
.L3:
	addi	a5,a6,1
	slli	a5,a5,2
	add	a0,a0,a5
	lw	a5,0(a0)
	lw	a4,0(t1)
	sw	a4,0(a0)
	sw	a5,0(t1)
	addiw	a0,a6,1
	ret
	.cfi_endproc
.LFE1:
	.size	partition, .-partition
	.align	1
	.globl	quicksort
	.type	quicksort, @function
quicksort:
.LFB2:
	.cfi_startproc
	blt	a1,a2,.L13
	ret
.L13:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	mv	s1,a1
	mv	s0,a2
	call	partition
	mv	s3,a0
	addiw	a2,a0,-1
	mv	a1,s1
	mv	a0,s2
	call	quicksort
	mv	a2,s0
	addiw	a1,s3,1
	mv	a0,s2
	call	quicksort
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
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
