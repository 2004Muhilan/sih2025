	.file	"tinycrypt_aes_decrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	add_round_key, @function
add_round_key:
.LFB18:
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
.LFE18:
	.size	add_round_key, .-add_round_key
	.align	1
	.type	inv_sub_bytes, @function
inv_sub_bytes:
.LFB19:
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
.LFE19:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	1
	.type	inv_shift_rows, @function
inv_shift_rows:
.LFB20:
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
	lbu	a4,13(a0)
	li	a1,16
	sb	a4,9(sp)
	lbu	a4,10(a0)
	sb	a4,10(sp)
	lbu	a4,7(a0)
	sb	a4,11(sp)
	lbu	a4,4(a0)
	sb	a4,12(sp)
	lbu	a4,1(a0)
	sb	a4,13(sp)
	lbu	a4,14(a0)
	sb	a4,14(sp)
	lbu	a4,11(a0)
	sb	a4,15(sp)
	lbu	a4,8(a0)
	sb	a4,16(sp)
	lbu	a4,5(a0)
	sb	a4,17(sp)
	lbu	a4,2(a0)
	sb	a4,18(sp)
	lbu	a4,15(a0)
	sb	a4,19(sp)
	lbu	a4,12(a0)
	sb	a4,20(sp)
	lbu	a4,9(a0)
	sb	a4,21(sp)
	lbu	a4,6(a0)
	lbu	a5,3(a0)
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
.LFE20:
	.size	inv_shift_rows, .-inv_shift_rows
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
	mv	s5,a0
	lbu	a0,0(s0)
	call	_double_byte@plt
	mv	s4,a0
	lbu	a0,1(s0)
	lbu	s6,0(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,1(s0)
	call	_double_byte@plt
	call	_double_byte@plt
	lbu	a5,1(s0)
	mv	s2,a0
	lbu	a0,2(s0)
	xor	s6,s6,a5
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
	lbu	a0,3(s0)
	andi	s4,s4,0xff
	call	_double_byte@plt
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s3,a0
	lbu	a0,3(s0)
	xor	s3,s3,s4
	call	_double_byte@plt
	call	_double_byte@plt
	mv	s2,a0
	lbu	a0,3(s0)
	xor	s2,s2,s3
	call	_double_byte@plt
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
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	s4,112(sp)
	.cfi_offset 20, -48
	la	s4,__stack_chk_guard
	sd	s2,128(sp)
	sd	ra,152(sp)
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s2,a0
	sd	s0,144(sp)
	sd	s1,136(sp)
	sd	s3,120(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	sd	s10,64(sp)
	sd	s11,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
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
	beq	s2,zero,.L12
	beq	a1,zero,.L12
	mv	s1,a2
	beq	a2,zero,.L12
	addi	s0,sp,8
	mv	a2,a1
	li	a3,16
	li	a1,16
	mv	a0,s0
	call	_copy@plt
	addi	a1,s1,160
	mv	a0,s0
	call	add_round_key
	addi	s3,s1,144
	addi	s5,sp,24
	addi	s11,sp,12
	addi	s10,sp,28
	addi	s9,sp,16
	addi	s8,sp,32
	addi	s7,sp,20
	addi	s6,sp,36
.L13:
	mv	a0,s0
	call	inv_shift_rows
	mv	a0,s0
	call	inv_sub_bytes
	mv	a1,s3
	mv	a0,s0
	call	add_round_key
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
	addi	s3,s3,-16
	call	_copy@plt
	bne	s1,s3,.L13
	mv	a0,s0
	call	inv_shift_rows
	mv	a0,s0
	call	inv_sub_bytes
	mv	a1,s1
	mv	a0,s0
	call	add_round_key
	li	a3,16
	mv	a2,s0
	li	a1,16
	mv	a0,s2
	call	_copy@plt
	mv	a0,s0
	li	a2,16
	li	a1,0
	call	_set@plt
	li	a0,1
.L12:
	ld	a4, 40(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
