	.file	1 "tinycrypt_aes_encrypt.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	add_round_key
	.type	add_round_key, @function
add_round_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($5)
	lbu	$3,0($4)
	xor	$2,$2,$3
	lbu	$3,1($4)
	sb	$2,0($4)
	lhu	$2,0($5)
	xor	$2,$2,$3
	lbu	$3,2($4)
	sb	$2,1($4)
	lw	$2,0($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,3($4)
	sb	$2,2($4)
	lw	$2,0($5)
	xor	$2,$2,$3
	lbu	$3,4($4)
	sb	$2,3($4)
	lbu	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,5($4)
	sb	$2,4($4)
	lhu	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,6($4)
	sb	$2,5($4)
	lw	$2,4($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,7($4)
	sb	$2,6($4)
	lw	$2,4($5)
	xor	$2,$2,$3
	lbu	$3,8($4)
	sb	$2,7($4)
	lbu	$2,8($5)
	xor	$2,$2,$3
	lbu	$3,9($4)
	sb	$2,8($4)
	lhu	$2,8($5)
	xor	$2,$2,$3
	lbu	$3,10($4)
	sb	$2,9($4)
	lw	$2,8($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	sb	$2,10($4)
	lw	$2,8($5)
	lbu	$3,11($4)
	xor	$2,$2,$3
	lbu	$3,12($4)
	sb	$2,11($4)
	lbu	$2,12($5)
	xor	$2,$2,$3
	lbu	$3,13($4)
	sb	$2,12($4)
	lhu	$2,12($5)
	xor	$2,$2,$3
	lbu	$3,14($4)
	sb	$2,13($4)
	lw	$2,12($5)
	srl	$2,$2,8
	xor	$2,$2,$3
	lbu	$3,15($4)
	sb	$2,14($4)
	lw	$2,12($5)
	xor	$2,$2,$3
	jr	$31
	sb	$2,15($4)

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(sbox)
	addiu	$5,$4,16
	addiu	$3,$3,%lo(sbox)
$L3:
	lbu	$2,0($4)
	addiu	$4,$4,1
	addu	$2,$2,$3
	lbu	$2,0($2)
	bne	$4,$5,$L3
	sb	$2,-1($4)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sub_bytes
	.size	sub_bytes, .-sub_bytes
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	shift_rows
	.type	shift_rows, @function
shift_rows:
	.frame	$sp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$7,16			# 0x10
	sw	$16,48($sp)
	addiu	$6,$sp,28
	lw	$16,%got(__stack_chk_guard)($28)
	li	$5,16			# 0x10
	lw	$25,%call16(_copy)($28)
	.cprestore	16
	sw	$31,52($sp)
	lw	$3,0($16)
	sw	$3,44($sp)
	lbu	$3,0($4)
	sb	$3,28($sp)
	lbu	$3,5($4)
	sb	$3,29($sp)
	lbu	$3,10($4)
	sb	$3,30($sp)
	lbu	$3,15($4)
	sb	$3,31($sp)
	lbu	$3,4($4)
	sb	$3,32($sp)
	lbu	$3,9($4)
	sb	$3,33($sp)
	lbu	$3,14($4)
	sb	$3,34($sp)
	lbu	$3,3($4)
	sb	$3,35($sp)
	lbu	$3,8($4)
	sb	$3,36($sp)
	lbu	$3,13($4)
	sb	$3,37($sp)
	lbu	$3,2($4)
	sb	$3,38($sp)
	lbu	$3,7($4)
	sb	$3,39($sp)
	lbu	$3,12($4)
	sb	$3,40($sp)
	lbu	$3,1($4)
	lbu	$2,11($4)
	sb	$3,41($sp)
	sb	$2,43($sp)
	lbu	$3,6($4)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sb	$3,42($sp)

	lw	$3,44($sp)
	lw	$2,0($16)
	beq	$3,$2,$L6
	lw	$28,16($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	lw	$31,52($sp)
	lw	$16,48($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	shift_rows
	.size	shift_rows, .-shift_rows
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	mult_row_column
	.type	mult_row_column, @function
mult_row_column:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,36($sp)
	move	$18,$4
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$16,$5
	.cprestore	16
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($5)

	lw	$28,16($sp)
	move	$17,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,1($16)

	lbu	$4,2($16)
	lbu	$3,1($16)
	lw	$28,16($sp)
	xor	$3,$3,$4
	lbu	$4,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$3,$4
	xor	$17,$17,$3
	xor	$2,$2,$17
	sb	$2,0($18)
	lbu	$4,1($16)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$19,0($16)

	lw	$28,16($sp)
	move	$17,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,2($16)

	lbu	$3,2($16)
	lw	$28,16($sp)
	xor	$19,$19,$3
	lbu	$3,3($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$19,$19,$3
	xor	$17,$17,$19
	xor	$2,$2,$17
	sb	$2,1($18)
	lbu	$17,0($16)
	lbu	$2,1($16)
	lbu	$4,2($16)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$17,$17,$2

	andi	$17,$17,0x00ff
	lw	$28,16($sp)
	move	$19,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,3($16)

	lbu	$3,3($16)
	lw	$28,16($sp)
	xor	$17,$17,$3
	xor	$19,$19,$17
	xor	$2,$2,$19
	lw	$25,%call16(_double_byte)($28)
	sb	$2,2($18)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,0($16)

	lbu	$4,1($16)
	lbu	$3,0($16)
	lw	$28,16($sp)
	xor	$3,$3,$4
	lbu	$4,2($16)
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$3,$4
	lbu	$4,3($16)
	xor	$17,$2,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$17,$17,0x00ff

	xor	$17,$17,$2
	sb	$17,3($18)
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	mult_row_column
	.size	mult_row_column, .-mult_row_column
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
	.frame	$sp,88,$31		# vars= 48, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-88
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$6,44			# 0x2c
	sw	$17,76($sp)
	sw	$16,72($sp)
	move	$16,$5
	lw	$17,%got(__stack_chk_guard)($28)
	lui	$5,%hi($LC0)
	lw	$25,%call16(memcpy)($28)
	sw	$18,80($sp)
	addiu	$5,$5,%lo($LC0)
	move	$18,$4
	.cprestore	16
	sw	$31,84($sp)
	addiu	$4,$sp,24
	lw	$2,0($17)
	sw	$2,68($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	move	$2,$0
	beq	$18,$0,$L10
	lw	$28,16($sp)

	beq	$16,$0,$L10
	addiu	$7,$16,16

	move	$5,$16
	move	$4,$18
	move	$3,$18
$L12:
	lbu	$2,0($5)
	addiu	$5,$5,4
	lbu	$6,-3($5)
	addiu	$3,$3,4
	sll	$2,$2,24
	sll	$6,$6,16
	or	$2,$2,$6
	lbu	$6,-1($5)
	or	$2,$2,$6
	lbu	$6,-2($5)
	sll	$6,$6,8
	or	$2,$2,$6
	bne	$7,$5,$L12
	sw	$2,-4($3)

	lui	$5,%hi(sbox)
	li	$6,4			# 0x4
	addiu	$5,$5,%lo(sbox)
	li	$8,44			# 0x2c
$L14:
	andi	$3,$6,0x3
	bne	$3,$0,$L13
	lw	$2,12($4)

	ext	$3,$2,16,8
	ext	$7,$2,24,8
	addu	$3,$3,$5
	addu	$7,$7,$5
	lbu	$3,0($3)
	lbu	$7,0($7)
	sll	$3,$3,24
	or	$3,$3,$7
	ext	$7,$2,8,8
	andi	$2,$2,0x00ff
	addu	$7,$7,$5
	addu	$2,$2,$5
	lbu	$7,0($7)
	lbu	$2,0($2)
	sll	$7,$7,16
	sll	$2,$2,8
	or	$3,$3,$7
	or	$3,$3,$2
	srl	$2,$6,2
	sll	$2,$2,2
	addiu	$2,$2,72
	addu	$2,$2,$sp
	lw	$2,-48($2)
	xor	$2,$3,$2
$L13:
	lw	$3,0($4)
	addiu	$6,$6,1
	addiu	$4,$4,4
	xor	$2,$3,$2
	bne	$6,$8,$L14
	sw	$2,12($4)

	li	$2,1			# 0x1
$L10:
	lw	$4,68($sp)
	lw	$3,0($17)
	beq	$4,$3,$L15
	lw	$31,84($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L15:
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	jr	$31
	addiu	$sp,$sp,88

	.set	macro
	.set	reorder
	.end	tc_aes128_set_encrypt_key
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	2
	.globl	tc_aes_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
	.frame	$sp,112,$31		# vars= 48, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-112
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,84($sp)
	lw	$19,%got(__stack_chk_guard)($28)
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	.cprestore	16
	lw	$2,0($19)
	sw	$2,68($sp)
	beq	$4,$0,$L21
	move	$2,$0

	beq	$5,$0,$L21
	nop

	beq	$6,$0,$L21
	move	$17,$6

	lw	$25,%call16(_copy)($28)
	addiu	$16,$sp,36
	move	$6,$5
	li	$7,16			# 0x10
	li	$5,16			# 0x10
	move	$18,$4
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	move	$5,$17
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	addiu	$2,$sp,60
	addiu	$17,$17,16
	addiu	$21,$5,160
	sw	$2,28($sp)
	addiu	$20,$sp,52
	addiu	$fp,$sp,40
	addiu	$23,$sp,56
	addiu	$22,$sp,44
$L23:
	.option	pic0
	jal	sub_bytes
	.option	pic2
	move	$4,$16

	.option	pic0
	jal	shift_rows
	.option	pic2
	move	$4,$16

	move	$5,$16
	.option	pic0
	jal	mult_row_column
	.option	pic2
	move	$4,$20

	move	$5,$fp
	.option	pic0
	jal	mult_row_column
	.option	pic2
	move	$4,$23

	move	$5,$22
	.option	pic0
	jal	mult_row_column
	.option	pic2
	lw	$4,28($sp)

	addiu	$5,$sp,48
	.option	pic0
	jal	mult_row_column
	.option	pic2
	addiu	$4,$sp,64

	li	$5,16			# 0x10
	lw	$28,16($sp)
	li	$7,16			# 0x10
	move	$4,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$6,$20

	move	$5,$17
	addiu	$17,$17,16
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	bne	$17,$21,$L23
	nop

	.option	pic0
	jal	sub_bytes
	nop

	.option	pic2
	.option	pic0
	jal	shift_rows
	.option	pic2
	move	$4,$16

	move	$5,$17
	.option	pic0
	jal	add_round_key
	.option	pic2
	move	$4,$16

	li	$7,16			# 0x10
	lw	$28,16($sp)
	li	$5,16			# 0x10
	move	$6,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$18

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$16

	li	$2,1			# 0x1
	lw	$28,16($sp)
$L21:
	lw	$4,68($sp)
	lw	$3,0($19)
	beq	$4,$3,$L24
	lw	$31,108($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L24:
	lw	$fp,104($sp)
	lw	$23,100($sp)
	lw	$22,96($sp)
	lw	$21,92($sp)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	jr	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	tc_aes_encrypt
	.size	tc_aes_encrypt, .-tc_aes_encrypt
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
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
