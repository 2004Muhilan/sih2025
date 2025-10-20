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
	ble	a2,a1,.L38
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	s0,160(sp)
	sd	s6,112(sp)
	sd	s8,96(sp)
	sd	ra,168(sp)
	sd	s9,88(sp)
	.cfi_offset 8, -16
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 25, -88
	mv	s8,a1
	mv	s6,a2
	mv	s0,a0
.L27:
	mv	a2,s6
	mv	a1,s8
	mv	a0,s0
	call	partition
	sd	a0,0(sp)
	addiw	s9,a0,-1
	ble	s9,s8,.L11
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s10,80(sp)
	sd	s11,72(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 26, -96
	.cfi_offset 27, -104
.L26:
	mv	a2,s9
	mv	a1,s8
	mv	a0,s0
	call	partition
	sd	a0,8(sp)
	addiw	s10,a0,-1
	ble	s10,s8,.L12
.L25:
	mv	a2,s10
	mv	a1,s8
	mv	a0,s0
	call	partition
	sd	a0,16(sp)
	addiw	s11,a0,-1
	ble	s11,s8,.L13
.L24:
	mv	a2,s11
	mv	a1,s8
	mv	a0,s0
	call	partition
	sd	a0,24(sp)
	addiw	s3,a0,-1
	ble	s3,s8,.L14
.L23:
	mv	a2,s3
	mv	a1,s8
	mv	a0,s0
	call	partition
	addiw	s2,a0,-1
	mv	s1,a0
	ble	s2,s8,.L15
	sd	s4,128(sp)
	sd	s7,104(sp)
	.cfi_offset 20, -48
	.cfi_offset 23, -72
.L22:
	mv	a2,s2
	mv	a1,s8
	mv	a0,s0
	call	partition
	addiw	s7,a0,-1
	mv	s4,a0
	ble	s7,s8,.L16
	sd	s5,120(sp)
	.cfi_offset 21, -56
.L21:
	mv	a2,s7
	mv	a1,s8
	mv	a0,s0
	call	partition
	sd	a0,32(sp)
	addiw	s5,a0,-1
	ble	s5,s8,.L17
.L20:
	mv	a2,s5
	mv	a1,s8
	mv	a0,s0
	call	partition
	addiw	a4,a0,-1
	mv	a5,a0
	ble	a4,s8,.L18
.L19:
	mv	a2,a4
	mv	a1,s8
	mv	a0,s0
	sd	a5,56(sp)
	sd	a4,48(sp)
	call	partition
	addiw	a2,a0,-1
	sd	a0,40(sp)
	mv	a1,s8
	mv	a0,s0
	call	quicksort
	ld	a3,40(sp)
	ld	a4,48(sp)
	ld	a5,56(sp)
	addiw	s8,a3,1
	bgt	a4,s8,.L19
.L18:
	addiw	s8,a5,1
	bgt	s5,s8,.L20
.L17:
	ld	a5,32(sp)
	addiw	s8,a5,1
	bgt	s7,s8,.L21
	ld	s5,120(sp)
	.cfi_restore 21
.L16:
	addiw	s8,s4,1
	bgt	s2,s8,.L22
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s7,104(sp)
	.cfi_restore 23
.L15:
	addiw	s8,s1,1
	bgt	s3,s8,.L23
.L14:
	ld	a5,24(sp)
	addiw	s8,a5,1
	bgt	s11,s8,.L24
.L13:
	ld	a5,16(sp)
	addiw	s8,a5,1
	bgt	s10,s8,.L25
.L12:
	ld	a5,8(sp)
	addiw	s8,a5,1
	bgt	s9,s8,.L26
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s10,80(sp)
	.cfi_restore 26
	ld	s11,72(sp)
	.cfi_restore 27
.L11:
	ld	a5,0(sp)
	addiw	s8,a5,1
	blt	s8,s6,.L27
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	ld	s6,112(sp)
	.cfi_restore 22
	ld	s8,96(sp)
	.cfi_restore 24
	ld	s9,88(sp)
	.cfi_restore 25
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.L38:
	ret
	.cfi_endproc
.LFE2:
	.size	quicksort, .-quicksort
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
