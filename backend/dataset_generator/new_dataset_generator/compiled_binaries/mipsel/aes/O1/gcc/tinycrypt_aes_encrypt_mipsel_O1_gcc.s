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
	.frame	$sp,80,$31		# vars= 48, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($sp)
	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
	addiu	$3,$sp,24
	addiu	$10,$2,32
$L2:
	lw	$9,0($2)
	lw	$8,4($2)
	lw	$7,8($2)
	lw	$6,12($2)
	sw	$9,0($3)
	sw	$8,4($3)
	sw	$7,8($3)
	sw	$6,12($3)
	addiu	$2,$2,16
	bne	$2,$10,$L2
	addiu	$3,$3,16

	lw	$7,0($2)
	lw	$6,4($2)
	lw	$2,8($2)
	sw	$7,0($3)
	sw	$6,4($3)
	beq	$4,$0,$L8
	sw	$2,8($3)

	beq	$5,$0,$L9
	move	$3,$5

	move	$6,$4
	addiu	$5,$5,16
$L4:
	lbu	$2,0($3)
	sll	$2,$2,24
	lbu	$7,1($3)
	sll	$7,$7,16
	or	$2,$2,$7
	lbu	$7,3($3)
	or	$2,$2,$7
	lbu	$7,2($3)
	sll	$7,$7,8
	or	$2,$2,$7
	sw	$2,0($4)
	addiu	$3,$3,4
	bne	$3,$5,$L4
	addiu	$4,$4,4

	li	$4,4			# 0x4
	lui	$7,%hi(sbox)
	addiu	$7,$7,%lo(sbox)
	.option	pic0
	b	$L6
	.option	pic2
	li	$9,44			# 0x2c

$L5:
	lw	$3,0($5)
	xor	$2,$3,$2
	sw	$2,16($5)
	addiu	$4,$4,1
	beq	$4,$9,$L14
	addiu	$6,$6,4

$L6:
	move	$5,$6
	andi	$3,$4,0x3
	bne	$3,$0,$L5
	lw	$2,12($6)

	ror	$2,$2,24
	srl	$3,$2,24
	addu	$3,$3,$7
	lbu	$3,0($3)
	sll	$3,$3,24
	andi	$8,$2,0xff
	addu	$8,$8,$7
	lbu	$8,0($8)
	or	$3,$3,$8
	ext	$8,$2,16,8
	addu	$8,$8,$7
	lbu	$8,0($8)
	sll	$8,$8,16
	or	$3,$3,$8
	ext	$2,$2,8,8
	addu	$2,$2,$7
	lbu	$2,0($2)
	sll	$2,$2,8
	or	$3,$3,$2
	srl	$2,$4,2
	sll	$2,$2,2
	addiu	$2,$2,72
	addu	$2,$2,$sp
	lw	$2,-48($2)
	.option	pic0
	b	$L5
	.option	pic2
	xor	$2,$3,$2

$L14:
	li	$2,1			# 0x1
$L1:
	lw	$4,68($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L15
	lw	$31,76($sp)

	jr	$31
	addiu	$sp,$sp,80

$L8:
	.option	pic0
	b	$L1
	.option	pic2
	move	$2,$0

$L9:
	.option	pic0
	b	$L1
	.option	pic2
	move	$2,$0

$L15:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

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
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	sw	$23,100($sp)
	sw	$22,96($sp)
	sw	$21,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($sp)
	beq	$4,$0,$L22
	nop

	beq	$5,$0,$L23
	move	$22,$6

	beq	$6,$0,$L24
	addiu	$4,$sp,36

	li	$7,16			# 0x10
	move	$6,$5
	li	$5,16			# 0x10
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$2,0($22)
	srl	$3,$2,24
	lbu	$4,36($sp)
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,4($22)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,8($22)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,12($22)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	sb	$2,51($sp)
	addiu	$20,$22,16
	addiu	$23,$22,160
	addiu	$16,$sp,52
	lui	$17,%hi(sbox)
	addiu	$17,$17,%lo(sbox)
	addiu	$21,$sp,36
$L18:
	addiu	$18,$sp,36
	move	$2,$18
$L19:
	lbu	$3,0($2)
	addu	$3,$3,$17
	lbu	$3,0($3)
	sb	$3,0($2)
	addiu	$2,$2,1
	bne	$2,$16,$L19
	li	$7,16			# 0x10

	lbu	$2,36($sp)
	sb	$2,52($sp)
	lbu	$2,41($sp)
	sb	$2,53($sp)
	lbu	$2,46($sp)
	sb	$2,54($sp)
	lbu	$2,51($sp)
	sb	$2,55($sp)
	lbu	$2,40($sp)
	sb	$2,56($sp)
	lbu	$2,45($sp)
	sb	$2,57($sp)
	lbu	$2,50($sp)
	sb	$2,58($sp)
	lbu	$2,39($sp)
	sb	$2,59($sp)
	lbu	$2,44($sp)
	sb	$2,60($sp)
	lbu	$2,49($sp)
	sb	$2,61($sp)
	lbu	$2,38($sp)
	sb	$2,62($sp)
	lbu	$2,43($sp)
	sb	$2,63($sp)
	lbu	$2,48($sp)
	sb	$2,64($sp)
	lbu	$2,37($sp)
	sb	$2,65($sp)
	lbu	$2,42($sp)
	sb	$2,66($sp)
	lbu	$2,47($sp)
	sb	$2,67($sp)
	move	$6,$16
	li	$5,16			# 0x10
	move	$4,$21
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,36($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,37($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,37($sp)
	lbu	$3,38($sp)
	xor	$3,$4,$3
	lbu	$5,39($sp)
	xor	$3,$3,$5
	xor	$19,$19,$3
	xor	$2,$2,$19
	sb	$2,52($sp)
	lbu	$fp,36($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,38($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,38($sp)
	xor	$fp,$fp,$4
	lbu	$3,39($sp)
	xor	$fp,$fp,$3
	xor	$19,$19,$fp
	xor	$2,$2,$19
	sb	$2,53($sp)
	lbu	$19,36($sp)
	lbu	$2,37($sp)
	xor	$19,$19,$2
	andi	$19,$19,0x00ff
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$fp,$2
	lbu	$4,39($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,39($sp)
	xor	$19,$19,$3
	xor	$fp,$fp,$19
	xor	$2,$2,$fp
	sb	$2,54($sp)
	lbu	$4,36($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,36($sp)
	lbu	$4,37($sp)
	xor	$3,$3,$4
	lbu	$4,38($sp)
	xor	$3,$3,$4
	xor	$19,$2,$3
	andi	$19,$19,0x00ff
	lbu	$4,39($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	xor	$19,$19,$2
	sb	$19,55($sp)
	lbu	$4,40($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,41($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,41($sp)
	lbu	$3,42($sp)
	xor	$3,$4,$3
	lbu	$5,43($sp)
	xor	$3,$3,$5
	xor	$19,$19,$3
	xor	$2,$2,$19
	sb	$2,56($sp)
	lbu	$fp,40($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,42($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,42($sp)
	xor	$fp,$fp,$4
	lbu	$3,43($sp)
	xor	$fp,$fp,$3
	xor	$19,$19,$fp
	xor	$2,$2,$19
	sb	$2,57($sp)
	lbu	$19,40($sp)
	lbu	$2,41($sp)
	xor	$19,$19,$2
	andi	$19,$19,0x00ff
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$fp,$2
	lbu	$4,43($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,43($sp)
	xor	$19,$19,$3
	xor	$fp,$fp,$19
	xor	$2,$2,$fp
	sb	$2,58($sp)
	lbu	$4,40($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,40($sp)
	lbu	$4,41($sp)
	xor	$3,$3,$4
	lbu	$4,42($sp)
	xor	$3,$3,$4
	xor	$19,$2,$3
	andi	$19,$19,0x00ff
	lbu	$4,43($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	xor	$19,$19,$2
	sb	$19,59($sp)
	lbu	$4,44($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,45($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,45($sp)
	lbu	$3,46($sp)
	xor	$3,$4,$3
	lbu	$5,47($sp)
	xor	$3,$3,$5
	xor	$19,$19,$3
	xor	$2,$2,$19
	sb	$2,60($sp)
	lbu	$fp,44($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,46($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,46($sp)
	xor	$fp,$fp,$4
	lbu	$3,47($sp)
	xor	$fp,$fp,$3
	xor	$19,$19,$fp
	xor	$2,$2,$19
	sb	$2,61($sp)
	lbu	$19,44($sp)
	lbu	$2,45($sp)
	xor	$19,$19,$2
	andi	$19,$19,0x00ff
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$fp,$2
	lbu	$4,47($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,47($sp)
	xor	$19,$19,$3
	xor	$fp,$fp,$19
	xor	$2,$2,$fp
	sb	$2,62($sp)
	lbu	$4,44($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,44($sp)
	lbu	$4,45($sp)
	xor	$3,$3,$4
	lbu	$4,46($sp)
	xor	$3,$3,$4
	xor	$19,$2,$3
	andi	$19,$19,0x00ff
	lbu	$4,47($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	xor	$19,$19,$2
	sb	$19,63($sp)
	lbu	$4,48($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,49($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,49($sp)
	lbu	$3,50($sp)
	xor	$3,$4,$3
	lbu	$5,51($sp)
	xor	$3,$3,$5
	xor	$19,$19,$3
	xor	$2,$2,$19
	sb	$2,64($sp)
	lbu	$fp,48($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$19,$2
	lbu	$4,50($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$4,50($sp)
	xor	$fp,$fp,$4
	lbu	$3,51($sp)
	xor	$fp,$fp,$3
	xor	$19,$19,$fp
	xor	$2,$2,$19
	sb	$2,65($sp)
	lbu	$19,48($sp)
	lbu	$2,49($sp)
	xor	$19,$19,$2
	andi	$19,$19,0x00ff
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$fp,$2
	lbu	$4,51($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,51($sp)
	xor	$19,$19,$3
	xor	$fp,$fp,$19
	xor	$2,$2,$fp
	sb	$2,66($sp)
	lbu	$4,48($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lbu	$3,48($sp)
	lbu	$4,49($sp)
	xor	$3,$3,$4
	lbu	$4,50($sp)
	xor	$3,$3,$4
	xor	$19,$2,$3
	andi	$19,$19,0x00ff
	lbu	$4,51($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($sp)
	xor	$19,$19,$2
	sb	$19,67($sp)
	li	$7,16			# 0x10
	move	$6,$16
	li	$5,16			# 0x10
	move	$4,$21
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$2,0($20)
	srl	$3,$2,24
	lbu	$4,36($sp)
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,4($20)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,8($20)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,12($20)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	addiu	$20,$20,16
	bne	$23,$20,$L18
	sb	$2,51($sp)

	lui	$3,%hi(sbox)
	addiu	$3,$3,%lo(sbox)
$L20:
	lbu	$2,0($18)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,0($18)
	addiu	$18,$18,1
	bne	$16,$18,$L20
	lbu	$2,36($sp)

	sb	$2,52($sp)
	lbu	$2,41($sp)
	sb	$2,53($sp)
	lbu	$2,46($sp)
	sb	$2,54($sp)
	lbu	$2,51($sp)
	sb	$2,55($sp)
	lbu	$2,40($sp)
	sb	$2,56($sp)
	lbu	$2,45($sp)
	sb	$2,57($sp)
	lbu	$2,50($sp)
	sb	$2,58($sp)
	lbu	$2,39($sp)
	sb	$2,59($sp)
	lbu	$2,44($sp)
	sb	$2,60($sp)
	lbu	$2,49($sp)
	sb	$2,61($sp)
	lbu	$2,38($sp)
	sb	$2,62($sp)
	lbu	$2,43($sp)
	sb	$2,63($sp)
	lbu	$2,48($sp)
	sb	$2,64($sp)
	lbu	$2,37($sp)
	sb	$2,65($sp)
	lbu	$2,42($sp)
	sb	$2,66($sp)
	lbu	$2,47($sp)
	sb	$2,67($sp)
	li	$7,16			# 0x10
	addiu	$6,$sp,52
	li	$5,16			# 0x10
	addiu	$16,$sp,36
	move	$4,$16
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$2,160($22)
	srl	$3,$2,24
	lbu	$4,36($sp)
	xor	$3,$3,$4
	sb	$3,36($sp)
	srl	$3,$2,16
	lbu	$4,37($sp)
	xor	$3,$3,$4
	sb	$3,37($sp)
	srl	$3,$2,8
	lbu	$4,38($sp)
	xor	$3,$3,$4
	sb	$3,38($sp)
	lbu	$3,39($sp)
	xor	$2,$2,$3
	sb	$2,39($sp)
	lw	$2,164($22)
	srl	$3,$2,24
	lbu	$4,40($sp)
	xor	$3,$3,$4
	sb	$3,40($sp)
	srl	$3,$2,16
	lbu	$4,41($sp)
	xor	$3,$3,$4
	sb	$3,41($sp)
	srl	$3,$2,8
	lbu	$4,42($sp)
	xor	$3,$3,$4
	sb	$3,42($sp)
	lbu	$3,43($sp)
	xor	$2,$2,$3
	sb	$2,43($sp)
	lw	$2,168($22)
	srl	$3,$2,24
	lbu	$4,44($sp)
	xor	$3,$3,$4
	sb	$3,44($sp)
	srl	$3,$2,16
	lbu	$4,45($sp)
	xor	$3,$3,$4
	sb	$3,45($sp)
	srl	$3,$2,8
	lbu	$4,46($sp)
	xor	$3,$3,$4
	sb	$3,46($sp)
	lbu	$3,47($sp)
	xor	$2,$2,$3
	sb	$2,47($sp)
	lw	$2,172($22)
	srl	$3,$2,24
	lbu	$4,48($sp)
	xor	$3,$3,$4
	sb	$3,48($sp)
	srl	$3,$2,16
	lbu	$4,49($sp)
	xor	$3,$3,$4
	sb	$3,49($sp)
	srl	$3,$2,8
	lbu	$4,50($sp)
	xor	$3,$3,$4
	sb	$3,50($sp)
	lbu	$3,51($sp)
	xor	$2,$2,$3
	sb	$2,51($sp)
	li	$7,16			# 0x10
	move	$6,$16
	li	$5,16			# 0x10
	lw	$4,28($sp)
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$6,16			# 0x10
	move	$5,$0
	move	$4,$16
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,16($sp)
	li	$2,1			# 0x1
$L16:
	lw	$4,68($sp)
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$3,0($3)
	bne	$4,$3,$L29
	lw	$31,108($sp)

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

$L22:
	.option	pic0
	b	$L16
	.option	pic2
	move	$2,$0

$L23:
	.option	pic0
	b	$L16
	.option	pic2
	move	$2,$0

$L24:
	.option	pic0
	b	$L16
	.option	pic2
	move	$2,$0

$L29:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

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
