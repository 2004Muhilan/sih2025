	.file	"tinycrypt_aes_encrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
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
	.text
	.align	1
	.type	rotword, @function
rotword:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slliw	a4,a5,8
	srliw	a5,a5,24
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	rotword, .-rotword
	.section	.rodata
	.align	3
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
	.text
	.align	1
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-88(s0)
	sd	a1,-80(s0)
	sd	a2,-72(s0)
	sd	a3,-64(s0)
	sd	a4,-56(s0)
	lw	a5,40(a5)
	sw	a5,-48(s0)
	ld	a5,-104(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L12
.L4:
	ld	a5,-112(s0)
	bne	a5,zero,.L6
	li	a5,0
	j	.L12
.L6:
	sw	zero,-96(s0)
	j	.L7
.L8:
	lw	a5,-96(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,-112(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	a4,a5
	lw	a5,-96(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,-112(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-96(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addiw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,-112(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-96(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addiw	a5,a5,3
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,-112(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sext.w	a4,a5
	ld	a3,-104(s0)
	lwu	a5,-96(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-96(s0)
	addiw	a5,a5,1
	sw	a5,-96(s0)
.L7:
	lw	a5,-96(s0)
	sext.w	a4,a5
	li	a5,3
	bleu	a4,a5,.L8
	j	.L9
.L11:
	lw	a5,-96(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	ld	a4,-104(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	bne	a5,zero,.L10
	lw	a5,-92(s0)
	mv	a0,a5
	call	rotword
	mv	a5,a0
	sext.w	a5,a5
	srliw	a5,a5,24
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	lla	a4,sbox
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	s1,a5
	lw	a5,-92(s0)
	mv	a0,a5
	call	rotword
	mv	a5,a0
	sext.w	a5,a5
	srliw	a5,a5,16
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	lla	a4,sbox
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sext.w	a5,a5
	or	a5,s1,a5
	sext.w	s1,a5
	lw	a5,-92(s0)
	mv	a0,a5
	call	rotword
	mv	a5,a0
	sext.w	a5,a5
	srliw	a5,a5,8
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	lla	a4,sbox
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,s1,a5
	sext.w	s1,a5
	lw	a5,-92(s0)
	mv	a0,a5
	call	rotword
	mv	a5,a0
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	lla	a4,sbox
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	or	a5,s1,a5
	sext.w	a5,a5
	sext.w	a4,a5
	lw	a5,-96(s0)
	srliw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-56(a5)
	xor	a5,a4,a5
	sw	a5,-92(s0)
.L10:
	lw	a5,-96(s0)
	addiw	a5,a5,-4
	sext.w	a5,a5
	ld	a4,-104(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-92(s0)
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a3,-104(s0)
	lwu	a5,-96(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-96(s0)
	addiw	a5,a5,1
	sw	a5,-96(s0)
.L9:
	lw	a5,-96(s0)
	sext.w	a4,a5
	li	a5,43
	bleu	a4,a5,.L11
	li	a5,1
.L12:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L13
	call	__stack_chk_fail@plt
.L13:
	mv	a0,a4
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	1
	.type	add_round_key, @function
add_round_key:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	srliw	a5,a5,24
	sext.w	a5,a5
	andi	a5,a5,0xff
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	srliw	a5,a5,16
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,1
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,2
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	srliw	a5,a5,8
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,2
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,3
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,3
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,4
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srliw	a5,a5,24
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,4
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,5
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srliw	a5,a5,16
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,5
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,6
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	srliw	a5,a5,8
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,6
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,7
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,7
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	srliw	a5,a5,24
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,8
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,9
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	srliw	a5,a5,16
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,9
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,10
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	srliw	a5,a5,8
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,10
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,11
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,11
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,12
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	srliw	a5,a5,24
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,12
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,13
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	srliw	a5,a5,16
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,13
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,14
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	srliw	a5,a5,8
	sext.w	a5,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,14
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,15
	lbu	a3,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a5,a5,15
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	add_round_key, .-add_round_key
	.align	1
	.type	sub_bytes, @function
sub_bytes:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-20(s0)
	j	.L16
.L17:
	lwu	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	lwu	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lla	a3,sbox
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	bleu	a4,a5,.L17
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	sub_bytes, .-sub_bytes
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s1,a5
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	s1,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	a3,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	addi	a5,a5,2
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,3
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	mult_row_column, .-mult_row_column
	.align	1
	.type	mix_columns, @function
mix_columns:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-40
	ld	a1,-56(s0)
	mv	a0,a5
	call	mult_row_column
	ld	a5,-56(s0)
	addi	a4,a5,4
	addi	a5,s0,-40
	addi	a5,a5,4
	mv	a1,a4
	mv	a0,a5
	call	mult_row_column
	ld	a5,-56(s0)
	addi	a4,a5,8
	addi	a5,s0,-40
	addi	a5,a5,8
	mv	a1,a4
	mv	a0,a5
	call	mult_row_column
	ld	a5,-56(s0)
	addi	a4,a5,12
	addi	a5,s0,-40
	addi	a5,a5,12
	mv	a1,a4
	mv	a0,a5
	call	mult_row_column
	addi	a5,s0,-40
	li	a3,16
	mv	a2,a5
	li	a1,16
	ld	a0,-56(s0)
	call	_copy@plt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L20
	call	__stack_chk_fail@plt
.L20:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mix_columns, .-mix_columns
	.align	1
	.type	shift_rows, @function
shift_rows:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-40(s0)
	ld	a5,-56(s0)
	lbu	a5,5(a5)
	sb	a5,-39(s0)
	ld	a5,-56(s0)
	lbu	a5,10(a5)
	sb	a5,-38(s0)
	ld	a5,-56(s0)
	lbu	a5,15(a5)
	sb	a5,-37(s0)
	ld	a5,-56(s0)
	lbu	a5,4(a5)
	sb	a5,-36(s0)
	ld	a5,-56(s0)
	lbu	a5,9(a5)
	sb	a5,-35(s0)
	ld	a5,-56(s0)
	lbu	a5,14(a5)
	sb	a5,-34(s0)
	ld	a5,-56(s0)
	lbu	a5,3(a5)
	sb	a5,-33(s0)
	ld	a5,-56(s0)
	lbu	a5,8(a5)
	sb	a5,-32(s0)
	ld	a5,-56(s0)
	lbu	a5,13(a5)
	sb	a5,-31(s0)
	ld	a5,-56(s0)
	lbu	a5,2(a5)
	sb	a5,-30(s0)
	ld	a5,-56(s0)
	lbu	a5,7(a5)
	sb	a5,-29(s0)
	ld	a5,-56(s0)
	lbu	a5,12(a5)
	sb	a5,-28(s0)
	ld	a5,-56(s0)
	lbu	a5,1(a5)
	sb	a5,-27(s0)
	ld	a5,-56(s0)
	lbu	a5,6(a5)
	sb	a5,-26(s0)
	ld	a5,-56(s0)
	lbu	a5,11(a5)
	sb	a5,-25(s0)
	addi	a5,s0,-40
	li	a3,16
	mv	a2,a5
	li	a1,16
	ld	a0,-56(s0)
	call	_copy@plt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L22
	call	__stack_chk_fail@plt
.L22:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	shift_rows, .-shift_rows
	.align	1
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-56(s0)
	bne	a5,zero,.L24
	li	a5,0
	j	.L30
.L24:
	ld	a5,-64(s0)
	bne	a5,zero,.L26
	li	a5,0
	j	.L30
.L26:
	ld	a5,-72(s0)
	bne	a5,zero,.L27
	li	a5,0
	j	.L30
.L27:
	addi	a5,s0,-40
	li	a3,16
	ld	a2,-64(s0)
	li	a1,16
	mv	a0,a5
	call	_copy@plt
	ld	a4,-72(s0)
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	add_round_key
	sw	zero,-44(s0)
	j	.L28
.L29:
	addi	a5,s0,-40
	mv	a0,a5
	call	sub_bytes
	addi	a5,s0,-40
	mv	a0,a5
	call	shift_rows
	addi	a5,s0,-40
	mv	a0,a5
	call	mix_columns
	ld	a4,-72(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slliw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a4,a4,a5
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	add_round_key
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L28:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,8
	bleu	a4,a5,.L29
	addi	a5,s0,-40
	mv	a0,a5
	call	sub_bytes
	addi	a5,s0,-40
	mv	a0,a5
	call	shift_rows
	ld	a4,-72(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slliw	a5,a5,2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a4,a4,a5
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	add_round_key
	addi	a5,s0,-40
	li	a3,16
	mv	a2,a5
	li	a1,16
	ld	a0,-56(s0)
	call	_copy@plt
	addi	a5,s0,-40
	li	a2,16
	li	a1,0
	mv	a0,a5
	call	_set@plt
	li	a5,1
.L30:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L31
	call	__stack_chk_fail@plt
.L31:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
