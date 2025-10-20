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
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	sd	s4,48(sp)
	sd	s5,40(sp)
	sd	s6,32(sp)
	sd	s7,24(sp)
	sd	s8,16(sp)
	sd	s9,8(sp)
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
	mv	s1,a0
	mv	s0,a1
	lbu	a0,0(a1)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s9,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	mv	s5,a0
	lbu	s2,1(s0)
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a5,2(s0)
	xor	s2,s2,a5
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s2,s2,a5
	xor	s9,s9,s2
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	a0,a0,s3
	sb	a0,0(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	s3,0(s0)
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s9,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	mv	s5,a0
	lbu	a5,2(s0)
	xor	s3,s3,a5
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s3,s3,a5
	xor	s2,s2,s3
	xor	s9,s9,s2
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	a0,a0,s4
	sb	a0,1(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s9,a0
	lbu	s3,0(s0)
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s8,a0
	lbu	a5,1(s0)
	xor	s3,s3,a5
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s7,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s6,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s3,s3,a5
	xor	s2,s2,s3
	xor	s9,s9,s2
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	a0,a0,s4
	sb	a0,2(s1)
	lbu	a0,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s5,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	mv	s4,a0
	lbu	s6,0(s0)
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a5,1(s0)
	xor	s6,s6,a5
	lbu	a0,2(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,2(s0)
	xor	s6,s6,a5
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s2,s2,s3
	xor	s4,a0,s2
	andi	s4,s4,0xff
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	xor	s3,s3,s4
	xor	s2,s2,s3
	xor	a0,a0,s2
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	tc_aes128_set_encrypt_key@plt
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 56(sp)
	li	a4, 0
	beq	a0,zero,.L11
	sd	s6,112(sp)
	.cfi_offset 22, -64
	mv	s6,a2
	beq	a1,zero,.L12
	li	a0,0
	beq	a2,zero,.L18
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	sd	s9,88(sp)
	sd	s10,80(sp)
	sd	s11,72(sp)
	li	a3,16
	mv	a2,a1
	li	a1,16
	addi	a0,sp,24
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	call	_copy@plt
	lw	a5,160(s6)
	srliw	a3,a5,24
	lbu	a4,24(sp)
	xor	a4,a4,a3
	sb	a4,24(sp)
	srliw	a3,a5,16
	lbu	a4,25(sp)
	xor	a4,a4,a3
	sb	a4,25(sp)
	srliw	a3,a5,8
	lbu	a4,26(sp)
	xor	a4,a4,a3
	sb	a4,26(sp)
	lbu	a4,27(sp)
	xor	a5,a5,a4
	sb	a5,27(sp)
	lw	a5,164(s6)
	srliw	a3,a5,24
	lbu	a4,28(sp)
	xor	a4,a4,a3
	sb	a4,28(sp)
	srliw	a3,a5,16
	lbu	a4,29(sp)
	xor	a4,a4,a3
	sb	a4,29(sp)
	srliw	a3,a5,8
	lbu	a4,30(sp)
	xor	a4,a4,a3
	sb	a4,30(sp)
	lbu	a4,31(sp)
	xor	a5,a5,a4
	sb	a5,31(sp)
	lw	a5,168(s6)
	srliw	a3,a5,24
	lbu	a4,32(sp)
	xor	a4,a4,a3
	sb	a4,32(sp)
	srliw	a3,a5,16
	lbu	a4,33(sp)
	xor	a4,a4,a3
	sb	a4,33(sp)
	srliw	a3,a5,8
	lbu	a4,34(sp)
	xor	a4,a4,a3
	sb	a4,34(sp)
	lbu	a4,35(sp)
	xor	a5,a5,a4
	sb	a5,35(sp)
	lw	a5,172(s6)
	srliw	a3,a5,24
	lbu	a4,36(sp)
	xor	a4,a4,a3
	sb	a4,36(sp)
	srliw	a3,a5,16
	lbu	a4,37(sp)
	xor	a4,a4,a3
	sb	a4,37(sp)
	srliw	a3,a5,8
	lbu	a4,38(sp)
	xor	a4,a4,a3
	sb	a4,38(sp)
	lbu	a4,39(sp)
	xor	a5,a5,a4
	sb	a5,39(sp)
	addi	s3,s6,144
	sd	s6,0(sp)
	addi	s0,sp,40
	addi	s4,sp,24
	lla	s1,.LANCHOR0
	addi	s11,sp,28
	addi	s10,sp,44
	addi	s9,sp,32
	addi	s8,sp,48
	addi	s7,sp,36
.L8:
	lbu	a5,24(sp)
	sb	a5,40(sp)
	lbu	a5,37(sp)
	sb	a5,41(sp)
	lbu	a5,34(sp)
	sb	a5,42(sp)
	lbu	a5,31(sp)
	sb	a5,43(sp)
	lbu	a5,28(sp)
	sb	a5,44(sp)
	lbu	a5,25(sp)
	sb	a5,45(sp)
	lbu	a5,38(sp)
	sb	a5,46(sp)
	lbu	a5,35(sp)
	sb	a5,47(sp)
	lbu	a5,32(sp)
	sb	a5,48(sp)
	lbu	a5,29(sp)
	sb	a5,49(sp)
	lbu	a5,26(sp)
	sb	a5,50(sp)
	lbu	a5,39(sp)
	sb	a5,51(sp)
	lbu	a5,36(sp)
	sb	a5,52(sp)
	lbu	a5,33(sp)
	sb	a5,53(sp)
	lbu	a5,30(sp)
	sb	a5,54(sp)
	lbu	a5,27(sp)
	sb	a5,55(sp)
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s4
	call	_copy@plt
	mv	s2,s4
	mv	s5,s0
	mv	a5,s4
.L7:
	lbu	a4,0(a5)
	add	a4,s1,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	addi	a5,a5,1
	bne	a5,s0,.L7
	lw	a5,0(s3)
	srliw	a3,a5,24
	lbu	a4,24(sp)
	xor	a4,a4,a3
	sb	a4,24(sp)
	srliw	a3,a5,16
	lbu	a4,25(sp)
	xor	a4,a4,a3
	sb	a4,25(sp)
	srliw	a3,a5,8
	lbu	a4,26(sp)
	xor	a4,a4,a3
	sb	a4,26(sp)
	lbu	a4,27(sp)
	xor	a5,a5,a4
	sb	a5,27(sp)
	lw	a5,4(s3)
	srliw	a3,a5,24
	lbu	a4,28(sp)
	xor	a4,a4,a3
	sb	a4,28(sp)
	srliw	a3,a5,16
	lbu	a4,29(sp)
	xor	a4,a4,a3
	sb	a4,29(sp)
	srliw	a3,a5,8
	lbu	a4,30(sp)
	xor	a4,a4,a3
	sb	a4,30(sp)
	lbu	a4,31(sp)
	xor	a5,a5,a4
	sb	a5,31(sp)
	lw	a5,8(s3)
	srliw	a3,a5,24
	lbu	a4,32(sp)
	xor	a4,a4,a3
	sb	a4,32(sp)
	srliw	a3,a5,16
	lbu	a4,33(sp)
	xor	a4,a4,a3
	sb	a4,33(sp)
	srliw	a3,a5,8
	lbu	a4,34(sp)
	xor	a4,a4,a3
	sb	a4,34(sp)
	lbu	a4,35(sp)
	xor	a5,a5,a4
	sb	a5,35(sp)
	lw	a5,12(s3)
	srliw	a3,a5,24
	lbu	a4,36(sp)
	xor	a4,a4,a3
	sb	a4,36(sp)
	srliw	a3,a5,16
	lbu	a4,37(sp)
	xor	a4,a4,a3
	sb	a4,37(sp)
	srliw	a3,a5,8
	lbu	a4,38(sp)
	xor	a4,a4,a3
	sb	a4,38(sp)
	lbu	a4,39(sp)
	xor	a5,a5,a4
	sb	a5,39(sp)
	mv	a1,s4
	mv	a0,s0
	call	mult_row_column
	mv	a1,s11
	mv	a0,s10
	call	mult_row_column
	mv	a1,s9
	mv	a0,s8
	call	mult_row_column
	mv	a1,s7
	addi	a0,sp,52
	call	mult_row_column
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s4
	call	_copy@plt
	addi	s3,s3,-16
	ld	a5,0(sp)
	bne	s3,a5,.L8
	lbu	a5,24(sp)
	sb	a5,40(sp)
	lbu	a5,37(sp)
	sb	a5,41(sp)
	lbu	a5,34(sp)
	sb	a5,42(sp)
	lbu	a5,31(sp)
	sb	a5,43(sp)
	lbu	a5,28(sp)
	sb	a5,44(sp)
	lbu	a5,25(sp)
	sb	a5,45(sp)
	lbu	a5,38(sp)
	sb	a5,46(sp)
	lbu	a5,35(sp)
	sb	a5,47(sp)
	lbu	a5,32(sp)
	sb	a5,48(sp)
	lbu	a5,29(sp)
	sb	a5,49(sp)
	lbu	a5,26(sp)
	sb	a5,50(sp)
	lbu	a5,39(sp)
	sb	a5,51(sp)
	lbu	a5,36(sp)
	sb	a5,52(sp)
	lbu	a5,33(sp)
	sb	a5,53(sp)
	lbu	a5,30(sp)
	sb	a5,54(sp)
	lbu	a5,27(sp)
	sb	a5,55(sp)
	li	a3,16
	addi	a2,sp,40
	li	a1,16
	addi	a0,sp,24
	call	_copy@plt
	lla	a4,.LANCHOR0
.L9:
	lbu	a5,0(s2)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,0(s2)
	addi	s2,s2,1
	bne	s2,s5,.L9
	lw	a5,0(s6)
	srliw	a3,a5,24
	lbu	a4,24(sp)
	xor	a4,a4,a3
	sb	a4,24(sp)
	srliw	a3,a5,16
	lbu	a4,25(sp)
	xor	a4,a4,a3
	sb	a4,25(sp)
	srliw	a3,a5,8
	lbu	a4,26(sp)
	xor	a4,a4,a3
	sb	a4,26(sp)
	lbu	a4,27(sp)
	xor	a5,a5,a4
	sb	a5,27(sp)
	lw	a5,4(s6)
	srliw	a3,a5,24
	lbu	a4,28(sp)
	xor	a4,a4,a3
	sb	a4,28(sp)
	srliw	a3,a5,16
	lbu	a4,29(sp)
	xor	a4,a4,a3
	sb	a4,29(sp)
	srliw	a3,a5,8
	lbu	a4,30(sp)
	xor	a4,a4,a3
	sb	a4,30(sp)
	lbu	a4,31(sp)
	xor	a5,a5,a4
	sb	a5,31(sp)
	lw	a5,8(s6)
	srliw	a3,a5,24
	lbu	a4,32(sp)
	xor	a4,a4,a3
	sb	a4,32(sp)
	srliw	a3,a5,16
	lbu	a4,33(sp)
	xor	a4,a4,a3
	sb	a4,33(sp)
	srliw	a3,a5,8
	lbu	a4,34(sp)
	xor	a4,a4,a3
	sb	a4,34(sp)
	lbu	a4,35(sp)
	xor	a5,a5,a4
	sb	a5,35(sp)
	lw	a5,12(s6)
	srliw	a3,a5,24
	lbu	a4,36(sp)
	xor	a4,a4,a3
	sb	a4,36(sp)
	srliw	a3,a5,16
	lbu	a4,37(sp)
	xor	a4,a4,a3
	sb	a4,37(sp)
	srliw	a3,a5,8
	lbu	a4,38(sp)
	xor	a4,a4,a3
	sb	a4,38(sp)
	lbu	a4,39(sp)
	xor	a5,a5,a4
	sb	a5,39(sp)
	li	a3,16
	addi	s0,sp,24
	mv	a2,s0
	li	a1,16
	ld	a0,8(sp)
	call	_copy@plt
	li	a2,16
	li	a1,0
	mv	a0,s0
	call	_set@plt
	li	a0,1
	ld	s0,160(sp)
	.cfi_restore 8
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s5,120(sp)
	.cfi_restore 21
	ld	s6,112(sp)
	.cfi_restore 22
	ld	s7,104(sp)
	.cfi_restore 23
	ld	s8,96(sp)
	.cfi_restore 24
	ld	s9,88(sp)
	.cfi_restore 25
	ld	s10,80(sp)
	.cfi_restore 26
	ld	s11,72(sp)
	.cfi_restore 27
.L6:
	la	a5,__stack_chk_guard
	ld	a4, 56(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L19
	ld	ra,168(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.L11:
	.cfi_restore_state
	li	a0,0
	j	.L6
.L12:
	.cfi_offset 22, -64
	li	a0,0
	ld	s6,112(sp)
	.cfi_remember_state
	.cfi_restore 22
	j	.L6
.L18:
	.cfi_restore_state
	ld	s6,112(sp)
	.cfi_restore 22
	j	.L6
.L19:
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	sd	s9,88(sp)
	sd	s10,80(sp)
	sd	s11,72(sp)
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
