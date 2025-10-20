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
	lw	a4,0(a1)
	lw	a5,0(a0)
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
	slli	t3,a2,2
	add	t3,a0,t3
	lw	t1,0(t3)
	mv	a7,a0
	addiw	a6,a1,-1
	ble	a2,a1,.L7
	subw	a4,a2,a1
	slli	a4,a4,32
	srli	a4,a4,32
	add	a4,a4,a1
	slli	a4,a4,2
	slli	a1,a1,2
	add	a5,a0,a1
	add	a4,a0,a4
.L6:
	lw	a2,0(a5)
	bge	a2,t1,.L5
	addiw	a6,a6,1
	slli	a3,a6,2
	add	a3,a7,a3
	lw	a1,0(a3)
	sw	a2,0(a3)
	sw	a1,0(a5)
.L5:
	addi	a5,a5,4
	bne	a4,a5,.L6
	addiw	a0,a6,1
	addi	a6,a6,1
	slli	a6,a6,2
	lw	t1,0(t3)
	add	a7,a7,a6
	lw	a5,0(a7)
	sw	t1,0(a7)
	sw	a5,0(t3)
	ret
.L7:
	addi	a6,a6,1
	slli	a6,a6,2
	add	a7,a7,a6
	lw	a5,0(a7)
	sw	t1,0(a7)
	mv	a0,a1
	sw	a5,0(t3)
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	slli	s3,a2,2
	add	s3,a0,s3
	ble	a2,a1,.L9
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s0,32(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 8, -16
	mv	s2,a2
	mv	s1,a0
.L14:
	lw	a7,0(s3)
	addiw	s0,a1,-1
	ble	s2,a1,.L11
	subw	a6,s2,a1
	slli	a6,a6,32
	srli	a6,a6,32
	add	a6,a6,a1
	slli	a5,a1,2
	slli	a6,a6,2
	add	a5,s1,a5
	add	a6,s1,a6
.L13:
	lw	a3,0(a5)
	ble	a7,a3,.L12
	addiw	s0,s0,1
	slli	a4,s0,2
	add	a4,s1,a4
	lw	a0,0(a4)
	sw	a3,0(a4)
	sw	a0,0(a5)
.L12:
	addi	a5,a5,4
	bne	a6,a5,.L13
	lw	a7,0(s3)
.L11:
	addi	a5,s0,1
	slli	a5,a5,2
	add	a5,s1,a5
	lw	a4,0(a5)
	sw	a7,0(a5)
	mv	a2,s0
	sw	a4,0(s3)
	mv	a0,s1
	call	quicksort
	addiw	a1,s0,2
	blt	a1,s2,.L14
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L9:
	ld	ra,40(sp)
	.cfi_restore 1
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
