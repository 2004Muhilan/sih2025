	.file	"tinycrypt_aes_decrypt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
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
	.text
	.align	1
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	tc_aes128_set_encrypt_key@plt
	mv	a5,a0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s1,a5
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	s2,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-40(s0)
	addi	a5,a5,1
	xor	a4,s1,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s1,a5
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
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
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	s2,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
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
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s1,a5
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s1,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a5,a5,0xff
	xor	a5,s1,a5
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
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
	andi	s1,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	s2,a5
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	s2,a5,0xff
	ld	a5,-48(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	mv	a0,a5
	call	_double_byte@plt
	mv	a5,a0
	xor	a5,s2,a5
	andi	a4,a5,0xff
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
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	mult_row_column, .-mult_row_column
	.align	1
	.type	inv_mix_columns, @function
inv_mix_columns:
.LFB3:
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
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	inv_mix_columns, .-inv_mix_columns
	.align	1
	.type	add_round_key, @function
add_round_key:
.LFB4:
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
.LFE4:
	.size	add_round_key, .-add_round_key
	.align	1
	.type	inv_sub_bytes, @function
inv_sub_bytes:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-20(s0)
	j	.L8
.L9:
	lwu	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	lwu	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lla	a3,inv_sbox
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,15
	bleu	a4,a5,.L9
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	1
	.type	inv_shift_rows, @function
inv_shift_rows:
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
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-40(s0)
	ld	a5,-56(s0)
	lbu	a5,13(a5)
	sb	a5,-39(s0)
	ld	a5,-56(s0)
	lbu	a5,10(a5)
	sb	a5,-38(s0)
	ld	a5,-56(s0)
	lbu	a5,7(a5)
	sb	a5,-37(s0)
	ld	a5,-56(s0)
	lbu	a5,4(a5)
	sb	a5,-36(s0)
	ld	a5,-56(s0)
	lbu	a5,1(a5)
	sb	a5,-35(s0)
	ld	a5,-56(s0)
	lbu	a5,14(a5)
	sb	a5,-34(s0)
	ld	a5,-56(s0)
	lbu	a5,11(a5)
	sb	a5,-33(s0)
	ld	a5,-56(s0)
	lbu	a5,8(a5)
	sb	a5,-32(s0)
	ld	a5,-56(s0)
	lbu	a5,5(a5)
	sb	a5,-31(s0)
	ld	a5,-56(s0)
	lbu	a5,2(a5)
	sb	a5,-30(s0)
	ld	a5,-56(s0)
	lbu	a5,15(a5)
	sb	a5,-29(s0)
	ld	a5,-56(s0)
	lbu	a5,12(a5)
	sb	a5,-28(s0)
	ld	a5,-56(s0)
	lbu	a5,9(a5)
	sb	a5,-27(s0)
	ld	a5,-56(s0)
	lbu	a5,6(a5)
	sb	a5,-26(s0)
	ld	a5,-56(s0)
	lbu	a5,3(a5)
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
	beq	a5,zero,.L11
	call	__stack_chk_fail@plt
.L11:
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
	.size	inv_shift_rows, .-inv_shift_rows
	.align	1
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB7:
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
	bne	a5,zero,.L13
	li	a5,0
	j	.L19
.L13:
	ld	a5,-64(s0)
	bne	a5,zero,.L15
	li	a5,0
	j	.L19
.L15:
	ld	a5,-72(s0)
	bne	a5,zero,.L16
	li	a5,0
	j	.L19
.L16:
	addi	a5,s0,-40
	li	a3,16
	ld	a2,-64(s0)
	li	a1,16
	mv	a0,a5
	call	_copy@plt
	ld	a5,-72(s0)
	addi	a4,a5,160
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	add_round_key
	li	a5,9
	sw	a5,-44(s0)
	j	.L17
.L18:
	addi	a5,s0,-40
	mv	a0,a5
	call	inv_shift_rows
	addi	a5,s0,-40
	mv	a0,a5
	call	inv_sub_bytes
	ld	a4,-72(s0)
	lw	a5,-44(s0)
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
	mv	a0,a5
	call	inv_mix_columns
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
.L17:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L18
	addi	a5,s0,-40
	mv	a0,a5
	call	inv_shift_rows
	addi	a5,s0,-40
	mv	a0,a5
	call	inv_sub_bytes
	ld	a4,-72(s0)
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
.L19:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L20
	call	__stack_chk_fail@plt
.L20:
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
.LFE7:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
