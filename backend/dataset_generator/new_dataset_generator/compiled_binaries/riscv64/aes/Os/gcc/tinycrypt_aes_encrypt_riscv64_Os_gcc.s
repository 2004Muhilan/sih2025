	.file	"tinycrypt_aes_encrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	add_round_key, @function
add_round_key:
.LFB17:
	.cfi_startproc
	lbu	a4,3(a1)
	lbu	a5,0(a0)
	xor	a5,a5,a4
	sb	a5,0(a0)
	lhu	a4,2(a1)
	lbu	a5,1(a0)
	xor	a5,a5,a4
	sb	a5,1(a0)
	lw	a4,0(a1)
	lbu	a5,2(a0)
	srliw	a4,a4,8
	xor	a5,a5,a4
	sb	a5,2(a0)
	lw	a4,0(a1)
	lbu	a5,3(a0)
	xor	a5,a5,a4
	sb	a5,3(a0)
	lbu	a4,7(a1)
	lbu	a5,4(a0)
	xor	a5,a5,a4
	sb	a5,4(a0)
	lhu	a4,6(a1)
	lbu	a5,5(a0)
	xor	a5,a5,a4
	sb	a5,5(a0)
	lw	a4,4(a1)
	lbu	a5,6(a0)
	srliw	a4,a4,8
	xor	a5,a5,a4
	sb	a5,6(a0)
	lw	a4,4(a1)
	lbu	a5,7(a0)
	xor	a5,a5,a4
	sb	a5,7(a0)
	lbu	a4,11(a1)
	lbu	a5,8(a0)
	xor	a5,a5,a4
	sb	a5,8(a0)
	lhu	a4,10(a1)
	lbu	a5,9(a0)
	xor	a5,a5,a4
	sb	a5,9(a0)
	lw	a4,8(a1)
	lbu	a5,10(a0)
	srliw	a4,a4,8
	xor	a5,a5,a4
	sb	a5,10(a0)
	lw	a4,8(a1)
	lbu	a5,11(a0)
	xor	a5,a5,a4
	sb	a5,11(a0)
	lbu	a4,15(a1)
	lbu	a5,12(a0)
	xor	a5,a5,a4
	sb	a5,12(a0)
	lhu	a4,14(a1)
	lbu	a5,13(a0)
	xor	a5,a5,a4
	sb	a5,13(a0)
	lw	a4,12(a1)
	lbu	a5,14(a0)
	srliw	a4,a4,8
	xor	a5,a5,a4
	sb	a5,14(a0)
	lw	a4,12(a1)
	lbu	a5,15(a0)
	xor	a5,a5,a4
	sb	a5,15(a0)
	ret
	.cfi_endproc
.LFE17:
	.size	add_round_key, .-add_round_key
	.align	1
	.type	sub_bytes, @function
sub_bytes:
.LFB18:
	.cfi_startproc
	addi	a4,a0,16
	lla	a3,.LANCHOR0
.L3:
	lbu	a5,0(a0)
	addi	a0,a0,1
	add	a5,a3,a5
	lbu	a5,0(a5)
	sb	a5,-1(a0)
	bne	a0,a4,.L3
	ret
	.cfi_endproc
.LFE18:
	.size	sub_bytes, .-sub_bytes
	.align	1
	.type	shift_rows, @function
shift_rows:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,32(sp)
	.cfi_offset 8, -16
	la	s0,__stack_chk_guard
	sd	ra,40(sp)
	.cfi_offset 1, -8
	ld	a4, 0(s0)
	sd	a4, 24(sp)
	li	a4, 0
	lbu	a4,0(a0)
	li	a3,16
	addi	a2,sp,8
	sb	a4,8(sp)
	lbu	a4,5(a0)
	li	a1,16
	sb	a4,9(sp)
	lbu	a4,10(a0)
	sb	a4,10(sp)
	lbu	a4,15(a0)
	sb	a4,11(sp)
	lbu	a4,4(a0)
	sb	a4,12(sp)
	lbu	a4,9(a0)
	sb	a4,13(sp)
	lbu	a4,14(a0)
	sb	a4,14(sp)
	lbu	a4,3(a0)
	sb	a4,15(sp)
	lbu	a4,8(a0)
	sb	a4,16(sp)
	lbu	a4,13(a0)
	sb	a4,17(sp)
	lbu	a4,2(a0)
	sb	a4,18(sp)
	lbu	a4,7(a0)
	sb	a4,19(sp)
	lbu	a4,12(a0)
	sb	a4,20(sp)
	lbu	a4,1(a0)
	sb	a4,21(sp)
	lbu	a4,6(a0)
	lbu	a5,11(a0)
	sb	a4,22(sp)
	sb	a5,23(sp)
	call	_copy@plt
	ld	a4, 24(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	shift_rows, .-shift_rows
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s2,16(sp)
	.cfi_offset 18, -32
	mv	s2,a0
	lbu	a0,0(a1)
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a1
	sd	s3,8(sp)
	.cfi_offset 19, -40
	call	_double_byte@plt
	mv	s1,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	lbu	a4,2(s0)
	lbu	a5,1(s0)
	xor	a5,a5,a4
	lbu	a4,3(s0)
	xor	a5,a5,a4
	xor	s1,s1,a5
	xor	a0,a0,s1
	sb	a0,0(s2)
	lbu	a0,1(s0)
	lbu	s3,0(s0)
	call	_double_byte@plt
	mv	s1,a0
	lbu	a0,2(s0)
	call	_double_byte@plt
	lbu	a5,2(s0)
	xor	s3,s3,a5
	lbu	a5,3(s0)
	xor	s3,s3,a5
	xor	s1,s1,s3
	xor	a0,a0,s1
	sb	a0,1(s2)
	lbu	a5,1(s0)
	lbu	s3,0(s0)
	lbu	a0,2(s0)
	xor	s3,s3,a5
	call	_double_byte@plt
	mv	s1,a0
	lbu	a0,3(s0)
	call	_double_byte@plt
	lbu	a5,3(s0)
	xor	s3,s3,a5
	xor	s1,s1,s3
	xor	a0,a0,s1
	sb	a0,2(s2)
	lbu	a0,0(s0)
	call	_double_byte@plt
	lbu	a4,1(s0)
	lbu	a5,0(s0)
	xor	a5,a5,a4
	lbu	a4,2(s0)
	xor	a5,a5,a4
	xor	s1,a0,a5
	lbu	a0,3(s0)
	andi	s1,s1,0xff
	call	_double_byte@plt
	xor	s1,s1,a0
	sb	s1,3(s2)
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
.LFE19:
	.size	mult_row_column, .-mult_row_column
	.align	1
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s1,72(sp)
	.cfi_offset 9, -24
	la	s1,__stack_chk_guard
	sd	s0,80(sp)
	sd	s2,64(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a1
	mv	s2,a0
	ld	a5, 0(s1)
	sd	a5, 56(sp)
	li	a5, 0
	li	a2,44
	lla	a1,.LANCHOR0+256
	addi	a0,sp,8
	sd	ra,88(sp)
	.cfi_offset 1, -8
	call	memcpy@plt
	li	a0,0
	beq	s2,zero,.L11
	beq	s0,zero,.L11
	mv	a1,s0
	mv	a0,s2
	addi	a2,s0,16
	mv	a4,s2
.L12:
	lbu	a5,0(a1)
	lbu	a3,1(a1)
	addi	a1,a1,4
	slliw	a5,a5,24
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,-1(a1)
	or	a5,a5,a3
	lbu	a3,-2(a1)
	slliw	a3,a3,8
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	bne	a2,a1,.L12
	li	a2,4
	lla	a1,.LANCHOR0
	li	a6,44
.L14:
	andi	a5,a2,3
	lw	a3,12(a0)
	bne	a5,zero,.L13
	slliw	a4,a3,8
	srliw	a5,a4,24
	add	a5,a1,a5
	srliw	a3,a3,24
	lbu	a5,0(a5)
	add	a3,a1,a3
	lbu	a3,0(a3)
	slliw	a5,a5,24
	or	a5,a5,a3
	srliw	a3,a4,16
	andi	a3,a3,0xff
	srliw	a4,a4,8
	add	a3,a1,a3
	andi	a4,a4,0xff
	lbu	a3,0(a3)
	add	a4,a1,a4
	lbu	a4,0(a4)
	slliw	a3,a3,16
	or	a5,a5,a3
	slliw	a4,a4,8
	or	a5,a5,a4
	srliw	a4,a2,2
	slli	a4,a4,2
	addi	a4,a4,64
	add	a4,a4,sp
	lw	a4,-56(a4)
	xor	a5,a5,a4
	sext.w	a3,a5
.L13:
	lw	a5,0(a0)
	addiw	a2,a2,1
	addi	a0,a0,4
	xor	a5,a5,a3
	sw	a5,12(a0)
	bne	a2,a6,.L14
	li	a0,1
.L11:
	ld	a4, 56(sp)
	ld	a5, 0(s1)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	1
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	s4,112(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	sd	s3,120(sp)
	sd	ra,152(sp)
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	mv	s3,a0
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s2,128(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	ld	a5, 0(s4)
	sd	a5, 40(sp)
	li	a5, 0
	li	a0,0
	beq	s3,zero,.L22
	beq	a1,zero,.L22
	mv	s1,a2
	beq	a2,zero,.L22
	addi	s0,sp,8
	mv	a2,a1
	li	a3,16
	li	a1,16
	mv	a0,s0
	call	_copy@plt
	mv	a1,s1
	mv	a0,s0
	addi	s2,s1,16
	call	add_round_key
	addi	s1,s1,160
	addi	s5,sp,24
	addi	s11,sp,12
	addi	s10,sp,28
	addi	s9,sp,16
	addi	s8,sp,32
	addi	s7,sp,20
	addi	s6,sp,36
.L23:
	mv	a0,s0
	call	sub_bytes
	mv	a0,s0
	call	shift_rows
	mv	a1,s0
	mv	a0,s5
	call	mult_row_column
	mv	a1,s11
	mv	a0,s10
	call	mult_row_column
	mv	a1,s9
	mv	a0,s8
	call	mult_row_column
	mv	a1,s7
	mv	a0,s6
	call	mult_row_column
	li	a3,16
	mv	a2,s5
	li	a1,16
	mv	a0,s0
	call	_copy@plt
	mv	a1,s2
	mv	a0,s0
	addi	s2,s2,16
	call	add_round_key
	bne	s2,s1,.L23
	mv	a0,s0
	call	sub_bytes
	mv	a0,s0
	call	shift_rows
	mv	a1,s2
	mv	a0,s0
	call	add_round_key
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s3
	call	_copy@plt
	mv	a0,s0
	li	a2,16
	li	a1,0
	call	_set@plt
	li	a0,1
.L22:
	ld	a4, 40(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L24
	call	__stack_chk_fail@plt
.L24:
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	ld	s1,136(sp)
	.cfi_restore 9
	ld	s2,128(sp)
	.cfi_restore 18
	ld	s3,120(sp)
	.cfi_restore 19
	ld	s4,112(sp)
	.cfi_restore 20
	ld	s5,104(sp)
	.cfi_restore 21
	ld	s6,96(sp)
	.cfi_restore 22
	ld	s7,88(sp)
	.cfi_restore 23
	ld	s8,80(sp)
	.cfi_restore 24
	ld	s9,72(sp)
	.cfi_restore 25
	ld	s10,64(sp)
	.cfi_restore 26
	ld	s11,56(sp)
	.cfi_restore 27
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
