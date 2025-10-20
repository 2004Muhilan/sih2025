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
	slli	a3,a2,2
	add	a3,a0,a3
	lw	t1,0(a3)
	mv	a5,a0
	addiw	a4,a1,-1
.L3:
	sext.w	a6,a1
	addiw	a0,a4,1
	bgt	a2,a6,.L5
	addi	a4,a4,1
	slli	a4,a4,2
	lw	a2,0(a3)
	add	a5,a5,a4
	lw	a4,0(a5)
	sw	a2,0(a5)
	sw	a4,0(a3)
	ret
.L5:
	slli	a6,a1,2
	add	a6,a5,a6
	lw	a7,0(a6)
	bge	a7,t1,.L4
	slli	a4,a0,2
	add	a4,a5,a4
	lw	t3,0(a4)
	sw	a7,0(a4)
	mv	a4,a0
	sw	t3,0(a6)
.L4:
	addi	a1,a1,1
	j	.L3
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
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s1,a0
	mv	s2,a2
.L8:
	bge	a1,s2,.L6
	mv	a2,s2
	mv	a0,s1
	sd	a1,8(sp)
	call	partition
	ld	a1,8(sp)
	mv	s0,a0
	addiw	a2,a0,-1
	mv	a0,s1
	call	quicksort
	addiw	a1,s0,1
	j	.L8
.L6:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
