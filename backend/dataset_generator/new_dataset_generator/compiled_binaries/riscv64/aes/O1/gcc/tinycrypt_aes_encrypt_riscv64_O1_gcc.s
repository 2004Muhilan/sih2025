	.file	"tinycrypt_aes_encrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 56(sp)
	li	a4, 0
	lla	a5,.LANCHOR0
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a7,8(sp)
	sd	a6,16(sp)
	sd	a2,24(sp)
	sd	a3,32(sp)
	sd	a4,40(sp)
	lw	a5,40(a5)
	sw	a5,48(sp)
	beq	a0,zero,.L7
	beq	a1,zero,.L8
	mv	a4,a1
	mv	a6,a0
	addi	a1,a1,16
.L3:
	lbu	a5,0(a4)
	slliw	a5,a5,24
	lbu	a3,1(a4)
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,3(a4)
	or	a5,a5,a3
	lbu	a3,2(a4)
	slliw	a3,a3,8
	or	a5,a5,a3
	sw	a5,0(a0)
	addi	a4,a4,4
	addi	a0,a0,4
	bne	a4,a1,.L3
	li	a2,4
	lla	a0,.LANCHOR0
	li	a7,44
	j	.L5
.L4:
	lw	a5,0(a1)
	xor	a5,a5,a4
	sw	a5,16(a1)
	addiw	a2,a2,1
	addi	a6,a6,4
	beq	a2,a7,.L12
.L5:
	mv	a1,a6
	lw	a4,12(a6)
	andi	a5,a2,3
	bne	a5,zero,.L4
	slliw	a3,a4,8
	srliw	a5,a3,24
	add	a5,a0,a5
	lbu	a5,48(a5)
	slliw	a5,a5,24
	srliw	a4,a4,24
	add	a4,a0,a4
	lbu	a4,48(a4)
	or	a5,a5,a4
	srliw	a4,a3,16
	andi	a4,a4,0xff
	add	a4,a0,a4
	lbu	a4,48(a4)
	slliw	a4,a4,16
	or	a5,a5,a4
	srliw	a3,a3,8
	andi	a3,a3,0xff
	add	a3,a0,a3
	lbu	a4,48(a3)
	slliw	a4,a4,8
	or	a5,a5,a4
	srliw	a4,a2,2
	slli	a4,a4,2
	addi	a4,a4,64
	add	a4,a4,sp
	lw	a4,-56(a4)
	xor	a5,a5,a4
	sext.w	a4,a5
	j	.L4
.L12:
	li	a0,1
.L2:
	la	a5,__stack_chk_guard
	ld	a4, 56(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L13
	ld	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L7:
	.cfi_restore_state
	li	a0,0
	j	.L2
.L8:
	li	a0,0
	j	.L2
.L13:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	1
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 40(sp)
	li	a4, 0
	beq	a0,zero,.L20
	sd	s5,88(sp)
	sd	s7,72(sp)
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	mv	s7,a0
	mv	s5,a2
	beq	a1,zero,.L21
	li	a0,0
	beq	a2,zero,.L27
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s6,80(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
	li	a3,16
	mv	a2,a1
	li	a1,16
	addi	a0,sp,8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 22, -64
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	call	_copy@plt
	lw	a5,0(s5)
	srliw	a3,a5,24
	lbu	a4,8(sp)
	xor	a4,a4,a3
	sb	a4,8(sp)
	srliw	a3,a5,16
	lbu	a4,9(sp)
	xor	a4,a4,a3
	sb	a4,9(sp)
	srliw	a3,a5,8
	lbu	a4,10(sp)
	xor	a4,a4,a3
	sb	a4,10(sp)
	lbu	a4,11(sp)
	xor	a5,a5,a4
	sb	a5,11(sp)
	lw	a5,4(s5)
	srliw	a3,a5,24
	lbu	a4,12(sp)
	xor	a4,a4,a3
	sb	a4,12(sp)
	srliw	a3,a5,16
	lbu	a4,13(sp)
	xor	a4,a4,a3
	sb	a4,13(sp)
	srliw	a3,a5,8
	lbu	a4,14(sp)
	xor	a4,a4,a3
	sb	a4,14(sp)
	lbu	a4,15(sp)
	xor	a5,a5,a4
	sb	a5,15(sp)
	lw	a5,8(s5)
	srliw	a3,a5,24
	lbu	a4,16(sp)
	xor	a4,a4,a3
	sb	a4,16(sp)
	srliw	a3,a5,16
	lbu	a4,17(sp)
	xor	a4,a4,a3
	sb	a4,17(sp)
	srliw	a3,a5,8
	lbu	a4,18(sp)
	xor	a4,a4,a3
	sb	a4,18(sp)
	lbu	a4,19(sp)
	xor	a5,a5,a4
	sb	a5,19(sp)
	lw	a5,12(s5)
	srliw	a3,a5,24
	lbu	a4,20(sp)
	xor	a4,a4,a3
	sb	a4,20(sp)
	srliw	a3,a5,16
	lbu	a4,21(sp)
	xor	a4,a4,a3
	sb	a4,21(sp)
	srliw	a3,a5,8
	lbu	a4,22(sp)
	xor	a4,a4,a3
	sb	a4,22(sp)
	lbu	a4,23(sp)
	xor	a5,a5,a4
	sb	a5,23(sp)
	addi	s3,s5,16
	addi	s6,s5,160
	addi	s0,sp,24
	lla	s1,.LANCHOR0
	addi	s4,sp,8
.L16:
	addi	s2,sp,8
	mv	a5,s2
.L17:
	lbu	a4,0(a5)
	add	a4,s1,a4
	lbu	a4,48(a4)
	sb	a4,0(a5)
	addi	a5,a5,1
	bne	a5,s0,.L17
	lbu	a5,8(sp)
	sb	a5,24(sp)
	lbu	a5,13(sp)
	sb	a5,25(sp)
	lbu	a5,18(sp)
	sb	a5,26(sp)
	lbu	a5,23(sp)
	sb	a5,27(sp)
	lbu	a5,12(sp)
	sb	a5,28(sp)
	lbu	a5,17(sp)
	sb	a5,29(sp)
	lbu	a5,22(sp)
	sb	a5,30(sp)
	lbu	a5,11(sp)
	sb	a5,31(sp)
	lbu	a5,16(sp)
	sb	a5,32(sp)
	lbu	a5,21(sp)
	sb	a5,33(sp)
	lbu	a5,10(sp)
	sb	a5,34(sp)
	lbu	a5,15(sp)
	sb	a5,35(sp)
	lbu	a5,20(sp)
	sb	a5,36(sp)
	lbu	a5,9(sp)
	sb	a5,37(sp)
	lbu	a5,14(sp)
	sb	a5,38(sp)
	lbu	a5,19(sp)
	sb	a5,39(sp)
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s4
	call	_copy@plt
	lbu	a0,8(sp)
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,9(sp)
	call	_double_byte@plt
	lbu	a4,9(sp)
	lbu	a5,10(sp)
	xor	a5,a4,a5
	lbu	a3,11(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,24(sp)
	lbu	s9,8(sp)
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,10(sp)
	call	_double_byte@plt
	mv	a5,a0
	lbu	a0,10(sp)
	xor	s9,s9,a0
	lbu	a4,11(sp)
	xor	a4,a4,s9
	xor	s8,s8,a4
	xor	a5,a5,s8
	sb	a5,25(sp)
	lbu	s9,8(sp)
	lbu	a5,9(sp)
	xor	s9,s9,a5
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,11(sp)
	call	_double_byte@plt
	lbu	a5,11(sp)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	a0,a0,s8
	sb	a0,26(sp)
	lbu	a0,8(sp)
	call	_double_byte@plt
	lbu	a5,8(sp)
	lbu	a4,9(sp)
	xor	a5,a5,a4
	lbu	a4,10(sp)
	xor	a5,a5,a4
	xor	s8,a0,a5
	andi	s8,s8,0xff
	lbu	a0,11(sp)
	call	_double_byte@plt
	xor	s8,s8,a0
	sb	s8,27(sp)
	lbu	a0,12(sp)
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,13(sp)
	call	_double_byte@plt
	lbu	a4,13(sp)
	lbu	a5,14(sp)
	xor	a5,a4,a5
	lbu	a3,15(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,28(sp)
	lbu	s9,12(sp)
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,14(sp)
	call	_double_byte@plt
	lbu	a4,14(sp)
	xor	a5,s9,a4
	lbu	a3,15(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,29(sp)
	lbu	s9,12(sp)
	lbu	a5,13(sp)
	xor	s9,s9,a5
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,15(sp)
	call	_double_byte@plt
	lbu	a5,15(sp)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	a0,a0,s8
	sb	a0,30(sp)
	lbu	a0,12(sp)
	call	_double_byte@plt
	lbu	a5,12(sp)
	lbu	a4,13(sp)
	xor	a5,a5,a4
	lbu	a4,14(sp)
	xor	a5,a5,a4
	xor	s8,a0,a5
	andi	s8,s8,0xff
	lbu	a0,15(sp)
	call	_double_byte@plt
	xor	s8,s8,a0
	sb	s8,31(sp)
	lbu	a0,16(sp)
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,17(sp)
	call	_double_byte@plt
	lbu	a4,17(sp)
	lbu	a5,18(sp)
	xor	a5,a4,a5
	lbu	a3,19(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,32(sp)
	lbu	s9,16(sp)
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,18(sp)
	call	_double_byte@plt
	lbu	a4,18(sp)
	xor	a5,s9,a4
	lbu	a3,19(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,33(sp)
	lbu	s9,16(sp)
	lbu	a5,17(sp)
	xor	s9,s9,a5
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,19(sp)
	call	_double_byte@plt
	lbu	a5,19(sp)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	a0,a0,s8
	sb	a0,34(sp)
	lbu	a0,16(sp)
	call	_double_byte@plt
	lbu	a5,16(sp)
	lbu	a4,17(sp)
	xor	a5,a5,a4
	lbu	a4,18(sp)
	xor	a5,a5,a4
	xor	s8,a0,a5
	andi	s8,s8,0xff
	lbu	a0,19(sp)
	call	_double_byte@plt
	xor	s8,s8,a0
	sb	s8,35(sp)
	lbu	a0,20(sp)
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,21(sp)
	call	_double_byte@plt
	lbu	a4,21(sp)
	lbu	a5,22(sp)
	xor	a5,a4,a5
	lbu	a3,23(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,36(sp)
	lbu	s9,20(sp)
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,22(sp)
	call	_double_byte@plt
	lbu	a4,22(sp)
	xor	a5,s9,a4
	lbu	a3,23(sp)
	xor	a5,a5,a3
	xor	s8,s8,a5
	xor	a5,a0,s8
	sb	a5,37(sp)
	lbu	s9,20(sp)
	lbu	a5,21(sp)
	xor	s9,s9,a5
	mv	a0,a4
	call	_double_byte@plt
	mv	s8,a0
	lbu	a0,23(sp)
	call	_double_byte@plt
	lbu	a5,23(sp)
	xor	s9,s9,a5
	xor	s8,s8,s9
	xor	a0,a0,s8
	sb	a0,38(sp)
	lbu	a0,20(sp)
	call	_double_byte@plt
	lbu	a5,20(sp)
	lbu	a4,21(sp)
	xor	a5,a5,a4
	lbu	a4,22(sp)
	xor	a5,a5,a4
	xor	s8,a0,a5
	andi	s8,s8,0xff
	lbu	a0,23(sp)
	call	_double_byte@plt
	xor	s8,s8,a0
	sb	s8,39(sp)
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s4
	call	_copy@plt
	lw	a5,0(s3)
	srliw	a3,a5,24
	lbu	a4,8(sp)
	xor	a4,a4,a3
	sb	a4,8(sp)
	srliw	a3,a5,16
	lbu	a4,9(sp)
	xor	a4,a4,a3
	sb	a4,9(sp)
	srliw	a3,a5,8
	lbu	a4,10(sp)
	xor	a4,a4,a3
	sb	a4,10(sp)
	lbu	a4,11(sp)
	xor	a5,a5,a4
	sb	a5,11(sp)
	lw	a5,4(s3)
	srliw	a3,a5,24
	lbu	a4,12(sp)
	xor	a4,a4,a3
	sb	a4,12(sp)
	srliw	a3,a5,16
	lbu	a4,13(sp)
	xor	a4,a4,a3
	sb	a4,13(sp)
	srliw	a3,a5,8
	lbu	a4,14(sp)
	xor	a4,a4,a3
	sb	a4,14(sp)
	lbu	a4,15(sp)
	xor	a5,a5,a4
	sb	a5,15(sp)
	lw	a5,8(s3)
	srliw	a3,a5,24
	lbu	a4,16(sp)
	xor	a4,a4,a3
	sb	a4,16(sp)
	srliw	a3,a5,16
	lbu	a4,17(sp)
	xor	a4,a4,a3
	sb	a4,17(sp)
	srliw	a3,a5,8
	lbu	a4,18(sp)
	xor	a4,a4,a3
	sb	a4,18(sp)
	lbu	a4,19(sp)
	xor	a5,a5,a4
	sb	a5,19(sp)
	lw	a5,12(s3)
	srliw	a3,a5,24
	lbu	a4,20(sp)
	xor	a4,a4,a3
	sb	a4,20(sp)
	srliw	a3,a5,16
	lbu	a4,21(sp)
	xor	a4,a4,a3
	sb	a4,21(sp)
	srliw	a3,a5,8
	lbu	a4,22(sp)
	xor	a4,a4,a3
	sb	a4,22(sp)
	lbu	a4,23(sp)
	xor	a5,a5,a4
	sb	a5,23(sp)
	addi	s3,s3,16
	bne	s6,s3,.L16
	lla	a4,.LANCHOR0
.L18:
	lbu	a5,0(s2)
	add	a5,a4,a5
	lbu	a5,48(a5)
	sb	a5,0(s2)
	addi	s2,s2,1
	bne	s2,s0,.L18
	lbu	a5,8(sp)
	sb	a5,24(sp)
	lbu	a5,13(sp)
	sb	a5,25(sp)
	lbu	a5,18(sp)
	sb	a5,26(sp)
	lbu	a5,23(sp)
	sb	a5,27(sp)
	lbu	a5,12(sp)
	sb	a5,28(sp)
	lbu	a5,17(sp)
	sb	a5,29(sp)
	lbu	a5,22(sp)
	sb	a5,30(sp)
	lbu	a5,11(sp)
	sb	a5,31(sp)
	lbu	a5,16(sp)
	sb	a5,32(sp)
	lbu	a5,21(sp)
	sb	a5,33(sp)
	lbu	a5,10(sp)
	sb	a5,34(sp)
	lbu	a5,15(sp)
	sb	a5,35(sp)
	lbu	a5,20(sp)
	sb	a5,36(sp)
	lbu	a5,9(sp)
	sb	a5,37(sp)
	lbu	a5,14(sp)
	sb	a5,38(sp)
	lbu	a5,19(sp)
	sb	a5,39(sp)
	li	a3,16
	addi	a2,sp,24
	li	a1,16
	addi	s0,sp,8
	mv	a0,s0
	call	_copy@plt
	lw	a5,160(s5)
	srliw	a3,a5,24
	lbu	a4,8(sp)
	xor	a4,a4,a3
	sb	a4,8(sp)
	srliw	a3,a5,16
	lbu	a4,9(sp)
	xor	a4,a4,a3
	sb	a4,9(sp)
	srliw	a3,a5,8
	lbu	a4,10(sp)
	xor	a4,a4,a3
	sb	a4,10(sp)
	lbu	a4,11(sp)
	xor	a5,a5,a4
	sb	a5,11(sp)
	lw	a5,164(s5)
	srliw	a3,a5,24
	lbu	a4,12(sp)
	xor	a4,a4,a3
	sb	a4,12(sp)
	srliw	a3,a5,16
	lbu	a4,13(sp)
	xor	a4,a4,a3
	sb	a4,13(sp)
	srliw	a3,a5,8
	lbu	a4,14(sp)
	xor	a4,a4,a3
	sb	a4,14(sp)
	lbu	a4,15(sp)
	xor	a5,a5,a4
	sb	a5,15(sp)
	lw	a5,168(s5)
	srliw	a3,a5,24
	lbu	a4,16(sp)
	xor	a4,a4,a3
	sb	a4,16(sp)
	srliw	a3,a5,16
	lbu	a4,17(sp)
	xor	a4,a4,a3
	sb	a4,17(sp)
	srliw	a3,a5,8
	lbu	a4,18(sp)
	xor	a4,a4,a3
	sb	a4,18(sp)
	lbu	a4,19(sp)
	xor	a5,a5,a4
	sb	a5,19(sp)
	lw	a5,172(s5)
	srliw	a3,a5,24
	lbu	a4,20(sp)
	xor	a4,a4,a3
	sb	a4,20(sp)
	srliw	a3,a5,16
	lbu	a4,21(sp)
	xor	a4,a4,a3
	sb	a4,21(sp)
	srliw	a3,a5,8
	lbu	a4,22(sp)
	xor	a4,a4,a3
	sb	a4,22(sp)
	lbu	a4,23(sp)
	xor	a5,a5,a4
	sb	a5,23(sp)
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s7
	call	_copy@plt
	li	a2,16
	li	a1,0
	mv	a0,s0
	call	_set@plt
	li	a0,1
	ld	s0,128(sp)
	.cfi_restore 8
	ld	s1,120(sp)
	.cfi_restore 9
	ld	s2,112(sp)
	.cfi_restore 18
	ld	s3,104(sp)
	.cfi_restore 19
	ld	s4,96(sp)
	.cfi_restore 20
	ld	s5,88(sp)
	.cfi_restore 21
	ld	s6,80(sp)
	.cfi_restore 22
	ld	s7,72(sp)
	.cfi_restore 23
	ld	s8,64(sp)
	.cfi_restore 24
	ld	s9,56(sp)
	.cfi_restore 25
.L15:
	la	a5,__stack_chk_guard
	ld	a4, 40(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L28
	ld	ra,136(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.L20:
	.cfi_restore_state
	li	a0,0
	j	.L15
.L21:
	.cfi_offset 21, -56
	.cfi_offset 23, -72
	li	a0,0
	ld	s5,88(sp)
	.cfi_remember_state
	.cfi_restore 21
	ld	s7,72(sp)
	.cfi_restore 23
	j	.L15
.L27:
	.cfi_restore_state
	ld	s5,88(sp)
	.cfi_restore 21
	ld	s7,72(sp)
	.cfi_restore 23
	j	.L15
.L28:
	sd	s0,128(sp)
	sd	s1,120(sp)
	sd	s2,112(sp)
	sd	s3,104(sp)
	sd	s4,96(sp)
	sd	s5,88(sp)
	sd	s6,80(sp)
	sd	s7,72(sp)
	sd	s8,64(sp)
	sd	s9,56(sp)
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
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	16777216
	.word	33554432
	.word	67108864
	.word	134217728
	.word	268435456
	.word	536870912
	.word	1073741824
	.word	-2147483648
	.word	452984832
	.word	905969664
	.zero	4
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321"
	.ascii	"\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002"
	.ascii	"\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363"
	.ascii	"\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220"
	.ascii	"\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221"
	.ascii	"\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034"
	.ascii	"\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5"
	.ascii	"W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207"
	.ascii	"\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
