	.file	"tinycrypt_aes_decrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s1,72(sp)
	.cfi_offset 9, -24
	mv	s1,a0
	lbu	a0,0(a1)
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s2,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a1
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,2(s0)
	lbu	s9,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,2(s0)
	mv	s2,a0
	lbu	a0,3(s0)
	xor	s9,s9,a5
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s2,s2,s3
	xor	a0,a0,s2
	sb	a0,0(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,1(s0)
	lbu	s9,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	lbu	a5,2(s0)
	mv	s3,a0
	lbu	a0,3(s0)
	xor	s9,s9,a5
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s2,s2,s3
	xor	a0,a0,s2
	sb	a0,1(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,1(s0)
	lbu	s9,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,1(s0)
	mv	s6,a0
	lbu	a0,2(s0)
	xor	s9,s9,a5
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s2,s2,s3
	xor	a0,a0,s2
	sb	a0,2(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,1(s0)
	lbu	s7,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,1(s0)
	mv	s2,a0
	lbu	a0,2(s0)
	xor	s7,s7,a5
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,2(s0)
	mv	s3,a0
	lbu	a0,3(s0)
	xor	s7,s7,a5
	xor	s6,s6,s7
	call	_double_byte@plt
	xor	s5,s5,s6
	call	_double_byte@plt
	xor	s4,s4,s5
	call	_double_byte@plt
	xor	s2,s2,s4
	xor	s3,s3,s2
	mv	s2,a0
	lbu	a0,3(s0)
	andi	s3,s3,0xff
	xor	s2,s2,s3
	call	_double_byte@plt
	call	_double_byte@plt
	mv	a5,a0
	lbu	a0,3(s0)
	mv	s0,a5
	xor	s0,s0,s2
	call	_double_byte@plt
	xor	a0,a0,s0
	sb	a0,3(s1)
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	ld	s3,56(sp)
	.cfi_restore 19
	ld	s4,48(sp)
	.cfi_restore 20
	ld	s5,40(sp)
	.cfi_restore 21
	ld	s6,32(sp)
	.cfi_restore 22
	ld	s7,24(sp)
	.cfi_restore 23
	ld	s8,16(sp)
	.cfi_restore 24
	ld	s9,8(sp)
	.cfi_restore 25
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	mult_row_column, .-mult_row_column
	.align	1
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB15:
	.cfi_startproc
	tail	tc_aes128_set_encrypt_key@plt
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	la	a4,__stack_chk_guard
	sd	ra,200(sp)
	sd	a0,40(sp)
	ld	a5, 0(a4)
	sd	a5, 88(sp)
	li	a5, 0
	.cfi_offset 1, -8
	beq	a0,zero,.L13
	beq	a1,zero,.L13
	sd	s11,104(sp)
	li	a0,0
	.cfi_offset 27, -104
	mv	s11,a2
	beq	a2,zero,.L19
	sd	s3,168(sp)
	.cfi_offset 19, -40
	addi	s3,sp,56
	mv	a2,a1
	li	a3,16
	li	a1,16
	mv	a0,s3
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s10,112(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	call	_copy@plt
	lw	a2,160(s11)
	lw	a3,164(s11)
	lw	a4,168(s11)
	lw	a5,172(s11)
	lbu	ra,67(sp)
	lbu	t2,57(sp)
	lbu	t0,58(sp)
	lbu	a7,59(sp)
	lbu	t6,61(sp)
	lbu	t5,62(sp)
	lbu	a6,63(sp)
	lbu	t4,65(sp)
	lbu	t3,66(sp)
	lbu	t1,69(sp)
	lbu	s2,56(sp)
	lbu	s1,60(sp)
	lbu	s0,64(sp)
	lbu	a0,68(sp)
	srliw	s10,a2,16
	srliw	s9,a2,8
	srliw	s8,a3,16
	srliw	s7,a3,8
	srliw	s6,a4,16
	srliw	s5,a4,8
	srliw	s4,a5,16
	srliw	a1,a2,24
	xor	t2,t2,s10
	xor	t0,t0,s9
	xor	a7,a2,a7
	xor	t6,t6,s8
	srliw	a2,a3,24
	xor	t5,t5,s7
	xor	a6,a3,a6
	xor	t4,t4,s6
	srliw	a3,a4,24
	xor	t3,t3,s5
	xor	a4,a4,ra
	xor	t1,t1,s4
	srliw	ra,a5,24
	xor	s7,a2,s1
	andi	a7,a7,0xff
	xor	s6,a3,s0
	xor	s8,a1,s2
	xor	ra,ra,a0
	andi	t2,t2,0xff
	andi	t0,t0,0xff
	andi	t6,t6,0xff
	andi	t5,t5,0xff
	andi	a6,a6,0xff
	andi	t4,t4,0xff
	andi	t3,t3,0xff
	andi	a4,a4,0xff
	andi	t1,t1,0xff
	sb	a7,59(sp)
	sb	s7,60(sp)
	addi	a3,sp,64
	sb	s8,56(sp)
	sb	t2,57(sp)
	sb	t0,58(sp)
	sb	t6,61(sp)
	sb	t5,62(sp)
	sb	a6,63(sp)
	sb	s6,64(sp)
	sb	t4,65(sp)
	sb	t3,66(sp)
	sb	a4,67(sp)
	sb	ra,68(sp)
	sb	t1,69(sp)
	lbu	a0,70(sp)
	lbu	s0,71(sp)
	sd	a3,8(sp)
	addi	a3,sp,80
	srliw	s1,a5,8
	sd	a3,24(sp)
	addi	a3,sp,68
	xor	a0,a0,s1
	xor	a5,a5,s0
	sd	a3,16(sp)
	addi	s0,sp,72
	addi	a3,sp,84
	andi	a5,a5,0xff
	andi	s5,a0,0xff
	sd	a3,32(sp)
	li	s4,-1
	mv	a3,s0
	sb	a5,71(sp)
	mv	s0,a7
	sb	s5,70(sp)
	mv	a7,a5
	addi	s2,s11,144
	mv	a5,s7
	lla	s1,.LANCHOR0
	addi	s10,sp,60
	addi	s9,sp,76
	srli	s4,s4,8
	mv	s7,a3
.L9:
	li	a3,16
	mv	a2,s7
	li	a1,16
	mv	a0,s3
	sb	a5,76(sp)
	sb	s5,78(sp)
	sb	s8,72(sp)
	sb	t1,73(sp)
	sb	t3,74(sp)
	sb	a6,75(sp)
	sb	t2,77(sp)
	sb	a4,79(sp)
	sb	s6,80(sp)
	sb	t6,81(sp)
	sb	t0,82(sp)
	sb	a7,83(sp)
	sb	ra,84(sp)
	sb	t4,85(sp)
	sb	t5,86(sp)
	sb	s0,87(sp)
	call	_copy@plt
	mv	s5,s3
	mv	a5,s3
.L7:
	lbu	a4,0(a5)
	addi	a5,a5,1
	add	a4,s1,a4
	lbu	a4,0(a4)
	sb	a4,-1(a5)
	bne	s7,a5,.L7
	lw	a3,0(s2)
	lw	a6,8(s2)
	lw	a1,4(s2)
	srliw	t3,a3,16
	srliw	t4,a6,16
	lw	a0,12(s2)
	srliw	t1,a6,8
	srliw	a7,a3,8
	andi	t4,t4,0xff
	andi	t3,t3,0xff
	srliw	a4,a6,24
	slli	t4,t4,8
	srliw	a5,a3,24
	slli	t3,t3,8
	andi	t1,t1,0xff
	andi	a7,a7,0xff
	or	a4,a4,t4
	slli	t1,t1,16
	or	a5,a5,t3
	slli	a7,a7,16
	andi	a6,a6,0xff
	andi	a3,a3,0xff
	or	a4,a4,t1
	slli	a6,a6,24
	srliw	t4,a0,24
	srliw	t1,a0,16
	or	a5,a5,a7
	slli	a3,a3,24
	srliw	t3,a1,24
	srliw	a7,a1,16
	slli	t4,t4,32
	slli	t3,t3,32
	or	a4,a4,a6
	or	a5,a5,a3
	srliw	a6,a0,8
	srliw	a3,a1,8
	andi	t1,t1,0xff
	andi	a7,a7,0xff
	or	a4,a4,t4
	slli	t1,t1,40
	or	a5,a5,t3
	slli	a7,a7,40
	andi	a6,a6,0xff
	andi	a3,a3,0xff
	or	a4,a4,t1
	slli	a6,a6,48
	or	a5,a5,a7
	slli	a3,a3,48
	or	a4,a4,a6
	or	a5,a5,a3
	ld	a3,64(sp)
	slli	a0,a0,56
	and	a4,a4,s4
	or	a4,a4,a0
	xor	a4,a4,a3
	ld	a3,56(sp)
	slli	a1,a1,56
	and	a5,a5,s4
	or	a5,a5,a1
	xor	a5,a5,a3
	mv	a1,s3
	mv	a0,s7
	sd	a5,56(sp)
	sd	a4,64(sp)
	call	mult_row_column
	mv	a1,s10
	mv	a0,s9
	call	mult_row_column
	ld	a1,8(sp)
	ld	a0,24(sp)
	addi	s2,s2,-16
	call	mult_row_column
	ld	a1,16(sp)
	ld	a0,32(sp)
	call	mult_row_column
	li	a3,16
	mv	a2,s7
	li	a1,16
	mv	a0,s3
	call	_copy@plt
	beq	s11,s2,.L8
	lbu	s8,56(sp)
	lbu	t1,69(sp)
	lbu	t3,66(sp)
	lbu	a6,63(sp)
	lbu	a5,60(sp)
	lbu	t2,57(sp)
	lbu	s5,70(sp)
	lbu	a4,67(sp)
	lbu	s6,64(sp)
	lbu	t6,61(sp)
	lbu	t0,58(sp)
	lbu	a7,71(sp)
	lbu	ra,68(sp)
	lbu	t4,65(sp)
	lbu	t5,62(sp)
	lbu	s0,59(sp)
	j	.L9
.L19:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	ld	s11,104(sp)
	.cfi_restore 27
.L6:
	la	a5,__stack_chk_guard
	ld	a4, 88(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L20
	ld	ra,200(sp)
	.cfi_restore 1
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.L8:
	.cfi_def_cfa_offset 208
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	lbu	a0,61(sp)
	lbu	a1,69(sp)
	lbu	a5,64(sp)
	lbu	t6,58(sp)
	lbu	a4,56(sp)
	lbu	t5,66(sp)
	lbu	a2,71(sp)
	lbu	a3,63(sp)
	slli	a0,a0,8
	slli	a1,a1,8
	lbu	t4,68(sp)
	lbu	t3,60(sp)
	or	a5,a5,a0
	or	a4,a4,a1
	lbu	t1,65(sp)
	lbu	a7,57(sp)
	slli	t6,t6,16
	slli	t5,t5,16
	slli	a2,a2,24
	slli	a3,a3,24
	lbu	a0,62(sp)
	lbu	a1,70(sp)
	or	a5,a5,t6
	or	a4,a4,t5
	or	a5,a5,a2
	or	a4,a4,a3
	slli	t4,t4,32
	slli	t3,t3,32
	lbu	a2,59(sp)
	lbu	a3,67(sp)
	or	a5,a5,t4
	slli	t1,t1,40
	or	a4,a4,t3
	slli	a7,a7,40
	slli	a0,a0,48
	slli	a1,a1,48
	or	a5,a5,t1
	or	a4,a4,a7
	or	a5,a5,a0
	or	a4,a4,a1
	slli	a2,a2,56
	slli	a3,a3,56
	and	a5,a5,s4
	and	a4,a4,s4
	or	a5,a5,a2
	or	a4,a4,a3
	mv	a2,s7
	li	a3,16
	li	a1,16
	mv	a0,s3
	mv	s0,s7
	sd	a4,72(sp)
	sd	a5,80(sp)
	call	_copy@plt
.L10:
	lbu	a5,0(s5)
	addi	s5,s5,1
	add	a5,s1,a5
	lbu	a5,0(a5)
	sb	a5,-1(s5)
	bne	s0,s5,.L10
	lw	a2,0(s11)
	lw	a0,8(s11)
	li	t3,-16711680
	srliw	a3,a2,16
	srliw	a1,a0,16
	andi	a1,a1,0xff
	andi	a3,a3,0xff
	slli	a1,a1,8
	srliw	a5,a0,24
	srliw	t1,a0,8
	slli	a3,a3,8
	srliw	a4,a2,24
	srliw	a6,a2,8
	addi	t3,t3,-1
	or	a5,a5,a1
	or	a4,a4,a3
	andi	t1,t1,0xff
	andi	a6,a6,0xff
	li	a7,-255
	lw	a3,4(s11)
	lw	a1,12(s11)
	slli	t1,t1,16
	and	a5,a5,t3
	slli	a6,a6,16
	and	a4,a4,t3
	slli	a7,a7,24
	addi	a7,a7,-1
	or	a5,a5,t1
	or	a4,a4,a6
	andi	a0,a0,0xff
	andi	a2,a2,0xff
	li	a6,-255
	slli	a0,a0,24
	and	a5,a5,a7
	slli	a2,a2,24
	and	a4,a4,a7
	slli	a6,a6,32
	addi	a6,a6,-1
	or	a5,a5,a0
	srliw	t3,a1,24
	or	a4,a4,a2
	li	a0,-255
	srliw	a2,a3,24
	slli	t3,t3,32
	and	a5,a5,a6
	srliw	t1,a1,16
	slli	a2,a2,32
	and	a4,a4,a6
	srliw	a7,a3,16
	slli	a0,a0,40
	addi	a0,a0,-1
	or	a5,a5,t3
	or	a4,a4,a2
	andi	t1,t1,0xff
	andi	a7,a7,0xff
	li	a2,-255
	slli	t1,t1,40
	slli	a7,a7,40
	and	a5,a5,a0
	and	a4,a4,a0
	slli	a2,a2,48
	srliw	a0,a3,8
	addi	a2,a2,-1
	or	a5,a5,t1
	or	a4,a4,a7
	andi	a0,a0,0xff
	srliw	a6,a1,8
	and	a5,a5,a2
	slli	a0,a0,48
	and	a4,a4,a2
	li	a2,-1
	srli	a2,a2,8
	or	a4,a4,a0
	andi	a6,a6,0xff
	slli	a6,a6,48
	slli	a3,a3,56
	and	a4,a4,a2
	or	a5,a5,a6
	or	a4,a4,a3
	ld	a3,64(sp)
	slli	a1,a1,56
	and	a5,a5,a2
	or	a5,a5,a1
	xor	a5,a5,a3
	ld	a3,56(sp)
	ld	a0,40(sp)
	mv	a2,s3
	xor	a4,a4,a3
	li	a1,16
	li	a3,16
	sd	a4,56(sp)
	sd	a5,64(sp)
	call	_copy@plt
	mv	a0,s3
	li	a2,16
	li	a1,0
	call	_set@plt
	li	a0,1
	ld	s0,192(sp)
	.cfi_restore 8
	ld	s1,184(sp)
	.cfi_restore 9
	ld	s2,176(sp)
	.cfi_restore 18
	ld	s3,168(sp)
	.cfi_restore 19
	ld	s4,160(sp)
	.cfi_restore 20
	ld	s5,152(sp)
	.cfi_restore 21
	ld	s6,144(sp)
	.cfi_restore 22
	ld	s7,136(sp)
	.cfi_restore 23
	ld	s8,128(sp)
	.cfi_restore 24
	ld	s9,120(sp)
	.cfi_restore 25
	ld	s10,112(sp)
	.cfi_restore 26
	ld	s11,104(sp)
	.cfi_restore 27
	j	.L6
.L13:
	li	a0,0
	j	.L6
.L20:
	sd	s0,192(sp)
	sd	s1,184(sp)
	sd	s2,176(sp)
	sd	s3,168(sp)
	sd	s4,160(sp)
	sd	s5,152(sp)
	sd	s6,144(sp)
	sd	s7,136(sp)
	sd	s8,128(sp)
	sd	s9,120(sp)
	sd	s10,112(sp)
	sd	s11,104(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE21:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.string	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253"
	.ascii	"\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017"
	.ascii	"\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034"
	.ascii	"u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V"
	.ascii	">K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\307"
	.ascii	"1\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311"
	.ascii	"\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004"
	.ascii	"~\272w\326&\341i\024cU!\f}"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
