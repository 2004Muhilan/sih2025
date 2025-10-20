	.file	1 "tinycrypt_aes_encrypt.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360"
	.ascii	"\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245"
	.ascii	"\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200"
	.ascii	"\342\353'\262u\011\203,\032\033nZ\240R;\326\263)\343/\204"
	.ascii	"S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373"
	.ascii	"CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274"
	.ascii	"\266\332!\020\377\363\322\315\014\023\354_\227D\027\304\247"
	.ascii	"~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333"
	.ascii	"\3402:\012I\006$\\\302\323\254b\221\225\344y\347\3107m\215"
	.ascii	"\325N\251lV\364\352ez\256\010\272x%.\034\246\264\306\350"
	.ascii	"\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301"
	.ascii	"\035\236\341\370\230\021i\331\216\224\233\036\207\351\316"
	.ascii	"U(\337\214\241\211\015\277\346BhA\231-\017\260T\273\026"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	rotword
	.type	rotword, @function
rotword:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	ror	$2,$2,24
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotword
	.size	rotword, .-rotword
	.rdata
	.align	2
$LC0:
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
	.align	2
	.globl	tc_aes128_set_encrypt_key
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
	.frame	$fp,104,$31		# vars= 64, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	sw	$16,92($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,84($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$fp,40
	addiu	$2,$2,%lo($LC0)
	li	$3,44			# 0x2c
	move	$6,$3
	move	$5,$2
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L4
	nop

	move	$2,$0
	.option	pic0
	b	$L12
	nop

	.option	pic2
$L4:
	lw	$2,24($fp)
	bne	$2,$0,$L6
	nop

	move	$2,$0
	.option	pic0
	b	$L12
	nop

	.option	pic2
$L6:
	sw	$0,32($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$3,$2,24
	lw	$2,32($fp)
	sll	$2,$2,2
	addiu	$2,$2,1
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,16
	or	$3,$3,$2
	lw	$2,32($fp)
	sll	$2,$2,2
	addiu	$2,$2,2
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	or	$2,$3,$2
	lw	$3,32($fp)
	sll	$3,$3,2
	addiu	$3,$3,3
	lw	$4,24($fp)
	addu	$3,$4,$3
	lbu	$3,0($3)
	or	$2,$2,$3
	move	$4,$2
	lw	$3,28($fp)
	lw	$2,32($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$4,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L7:
	lw	$2,32($fp)
	sltu	$2,$2,4
	bne	$2,$0,$L8
	nop

	.option	pic0
	b	$L9
	nop

	.option	pic2
$L11:
	lw	$2,32($fp)
	addiu	$2,$2,-1
	lw	$3,28($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,36($fp)
	lw	$2,32($fp)
	andi	$2,$2,0x3
	bne	$2,$0,$L10
	nop

	lw	$4,36($fp)
	.option	pic0
	jal	rotword
	nop

	.option	pic2
	lw	$28,16($fp)
	srl	$2,$2,24
	andi	$3,$2,0xff
	lui	$2,%hi(sbox)
	addiu	$2,$2,%lo(sbox)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$16,$2,24
	lw	$4,36($fp)
	.option	pic0
	jal	rotword
	nop

	.option	pic2
	lw	$28,16($fp)
	srl	$2,$2,16
	andi	$3,$2,0xff
	lui	$2,%hi(sbox)
	addiu	$2,$2,%lo(sbox)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$2,$2,16
	or	$16,$16,$2
	lw	$4,36($fp)
	.option	pic0
	jal	rotword
	nop

	.option	pic2
	lw	$28,16($fp)
	srl	$2,$2,8
	andi	$3,$2,0xff
	lui	$2,%hi(sbox)
	addiu	$2,$2,%lo(sbox)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	or	$16,$16,$2
	lw	$4,36($fp)
	.option	pic0
	jal	rotword
	nop

	.option	pic2
	lw	$28,16($fp)
	andi	$3,$2,0xff
	lui	$2,%hi(sbox)
	addiu	$2,$2,%lo(sbox)
	addu	$2,$3,$2
	lbu	$2,0($2)
	or	$2,$16,$2
	move	$3,$2
	lw	$2,32($fp)
	srl	$2,$2,2
	sll	$2,$2,2
	addiu	$2,$2,88
	addu	$2,$2,$fp
	lw	$2,-48($2)
	xor	$2,$3,$2
	sw	$2,36($fp)
$L10:
	lw	$2,32($fp)
	addiu	$2,$2,-4
	lw	$3,28($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	xor	$3,$3,$2
	lw	$4,28($fp)
	lw	$2,32($fp)
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L9:
	lw	$2,32($fp)
	sltu	$2,$2,44
	bne	$2,$0,$L11
	nop

	li	$2,1			# 0x1
$L12:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,84($fp)
	lw	$2,0($2)
	beq	$3,$2,$L13
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L13:
	move	$2,$4
	move	$sp,$fp
	lw	$31,100($sp)
	lw	$fp,96($sp)
	lw	$16,92($sp)
	addiu	$sp,$sp,104
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_aes128_set_encrypt_key
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	add_round_key
	.type	add_round_key, @function
add_round_key:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,8($fp)
	lbu	$3,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$2,$2,0x00ff
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,1
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,3
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,4
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,5
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,6
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,7
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,8
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,9
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,10
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,11
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,12
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,13
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,14
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,15
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	add_round_key
	.size	add_round_key, .-add_round_key
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	sub_bytes
	.type	sub_bytes, @function
sub_bytes:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L16
	nop

	.option	pic2
$L17:
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$4,$2
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lui	$3,%hi(sbox)
	addiu	$3,$3,%lo(sbox)
	addu	$3,$4,$3
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L16:
	lw	$2,4($fp)
	sltu	$2,$2,16
	bne	$2,$0,$L17
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sub_bytes
	.size	sub_bytes, .-sub_bytes
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	mult_row_column
	.type	mult_row_column, @function
mult_row_column:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$16,0($2)
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$4,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$3,0($2)
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	addiu	$2,$2,2
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,40($fp)
	addiu	$2,$2,3
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mult_row_column
	.size	mult_row_column, .-mult_row_column
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	mix_columns
	.type	mix_columns, @function
mix_columns:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	addiu	$2,$fp,36
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,4
	addiu	$2,$fp,36
	addiu	$2,$2,4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,8
	addiu	$2,$fp,36
	addiu	$2,$2,8
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,12
	addiu	$2,$fp,36
	addiu	$2,$2,12
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,36
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,28($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,52($fp)
	lw	$2,0($2)
	beq	$3,$2,$L20
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L20:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mix_columns
	.size	mix_columns, .-mix_columns
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	shift_rows
	.type	shift_rows, @function
shift_rows:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$2,28($fp)
	lbu	$2,0($2)
	sb	$2,36($fp)
	lw	$2,28($fp)
	lbu	$2,5($2)
	sb	$2,37($fp)
	lw	$2,28($fp)
	lbu	$2,10($2)
	sb	$2,38($fp)
	lw	$2,28($fp)
	lbu	$2,15($2)
	sb	$2,39($fp)
	lw	$2,28($fp)
	lbu	$2,4($2)
	sb	$2,40($fp)
	lw	$2,28($fp)
	lbu	$2,9($2)
	sb	$2,41($fp)
	lw	$2,28($fp)
	lbu	$2,14($2)
	sb	$2,42($fp)
	lw	$2,28($fp)
	lbu	$2,3($2)
	sb	$2,43($fp)
	lw	$2,28($fp)
	lbu	$2,8($2)
	sb	$2,44($fp)
	lw	$2,28($fp)
	lbu	$2,13($2)
	sb	$2,45($fp)
	lw	$2,28($fp)
	lbu	$2,2($2)
	sb	$2,46($fp)
	lw	$2,28($fp)
	lbu	$2,7($2)
	sb	$2,47($fp)
	lw	$2,28($fp)
	lbu	$2,12($2)
	sb	$2,48($fp)
	lw	$2,28($fp)
	lbu	$2,1($2)
	sb	$2,49($fp)
	lw	$2,28($fp)
	lbu	$2,6($2)
	sb	$2,50($fp)
	lw	$2,28($fp)
	lbu	$2,11($2)
	sb	$2,51($fp)
	addiu	$2,$fp,36
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,28($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,52($fp)
	lw	$2,0($2)
	beq	$3,$2,$L22
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L22:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	shift_rows
	.size	shift_rows, .-shift_rows
	.align	2
	.globl	tc_aes_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($fp)
	lw	$2,36($fp)
	bne	$2,$0,$L24
	nop

	move	$2,$0
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L24:
	lw	$2,32($fp)
	bne	$2,$0,$L26
	nop

	move	$2,$0
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L26:
	lw	$2,28($fp)
	bne	$2,$0,$L27
	nop

	move	$2,$0
	.option	pic0
	b	$L30
	nop

	.option	pic2
$L27:
	addiu	$2,$fp,44
	li	$7,16			# 0x10
	lw	$6,32($fp)
	li	$5,16			# 0x10
	move	$4,$2
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L28
	nop

	.option	pic2
$L29:
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	sub_bytes
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	shift_rows
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	mix_columns
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$3,28($fp)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sll	$2,$2,4
	addu	$2,$3,$2
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L28:
	lw	$2,40($fp)
	sltu	$2,$2,9
	bne	$2,$0,$L29
	nop

	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	sub_bytes
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	shift_rows
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$3,28($fp)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sll	$2,$2,4
	addu	$2,$3,$2
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,36($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,44
	li	$6,16			# 0x10
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
$L30:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,60($fp)
	lw	$2,0($2)
	beq	$3,$2,$L31
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L31:
	move	$2,$4
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_aes_encrypt
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
