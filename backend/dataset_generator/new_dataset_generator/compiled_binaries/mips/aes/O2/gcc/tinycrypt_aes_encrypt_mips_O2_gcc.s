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
	lui	$28,%hi(__gnu_local_gp)
	lui	$2,%hi($LC0)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-80
	addiu	$2,$2,%lo($LC0)
	lw	$12,%got(__stack_chk_guard)($28)
	addiu	$3,$sp,24
	addiu	$10,$2,32
	sw	$31,76($sp)
	.cprestore	16
	lw	$6,0($12)
	sw	$6,68($sp)
$L2:
	lw	$9,0($2)
	addiu	$2,$2,16
	addiu	$3,$3,16
	sw	$9,-16($3)
	lw	$8,-12($2)
	lw	$7,-8($2)
	lw	$6,-4($2)
	sw	$8,-12($3)
	sw	$7,-8($3)
	bne	$2,$10,$L2
	sw	$6,-4($3)

	lw	$7,0($2)
	lw	$6,4($2)
	lw	$2,8($2)
	sw	$7,0($3)
	sw	$6,4($3)
	beq	$4,$0,$L9
	sw	$2,8($3)

	beq	$5,$0,$L9
	move	$7,$4

	addiu	$9,$5,16
$L4:
	lbu	$2,0($5)
	addiu	$7,$7,4
	addiu	$5,$5,4
	sll	$2,$2,24
	lbu	$6,-3($5)
	lbu	$3,-2($5)
	lbu	$8,-1($5)
	sll	$6,$6,16
	sll	$3,$3,8
	or	$2,$2,$6
	or	$2,$2,$8
	or	$2,$2,$3
	bne	$9,$5,$L4
	sw	$2,-4($7)

	lui	$9,%hi(sbox)
	lw	$13,0($4)
	lw	$11,4($4)
	addiu	$6,$4,16
	lw	$10,8($4)
	li	$3,4			# 0x4
	lw	$4,12($4)
	addiu	$9,$9,%lo(sbox)
	.option	pic0
	b	$L6
	.option	pic2
	li	$14,44			# 0x2c

$L17:
	srl	$5,$3,2
	ext	$15,$4,8,8
	addu	$2,$2,$9
	ext	$8,$4,24,8
	addu	$15,$15,$9
	sll	$5,$5,2
	lbu	$2,0($2)
	andi	$7,$4,0x00ff
	addu	$8,$8,$9
	lbu	$15,0($15)
	addu	$7,$7,$9
	addiu	$5,$5,72
	lbu	$24,0($8)
	sll	$2,$2,24
	addu	$5,$5,$sp
	lbu	$7,0($7)
	sll	$8,$15,16
	or	$2,$2,$24
	lw	$15,-48($5)
	sll	$5,$7,8
	or	$2,$2,$8
	or	$2,$2,$5
	xor	$2,$2,$15
	addiu	$3,$3,1
	xor	$2,$2,$13
	sw	$2,0($6)
	move	$13,$11
	addiu	$6,$6,4
	move	$11,$10
	beq	$3,$14,$L16
	move	$10,$4

$L11:
	move	$4,$2
$L6:
	andi	$2,$3,0x3
	beq	$2,$0,$L17
	ext	$2,$4,16,8

	move	$2,$4
	addiu	$3,$3,1
	xor	$2,$2,$13
	sw	$2,0($6)
	move	$13,$11
	addiu	$6,$6,4
	move	$11,$10
	bne	$3,$14,$L11
	move	$10,$4

$L16:
	li	$2,1			# 0x1
$L1:
	lw	$4,68($sp)
	lw	$3,0($12)
	bne	$4,$3,$L18
	lw	$31,76($sp)

	jr	$31
	addiu	$sp,$sp,80

$L9:
	.option	pic0
	b	$L1
	.option	pic2
	move	$2,$0

$L18:
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
	.frame	$sp,120,$31		# vars= 56, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-120
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,116($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$fp,112($sp)
	sw	$23,108($sp)
	sw	$22,104($sp)
	sw	$21,100($sp)
	sw	$20,96($sp)
	sw	$19,92($sp)
	sw	$18,88($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	.cprestore	16
	sw	$2,32($sp)
	sw	$4,36($sp)
	lw	$3,0($2)
	sw	$3,76($sp)
	beq	$4,$0,$L27
	nop

	beq	$5,$0,$L27
	move	$2,$5

	beq	$6,$0,$L27
	move	$17,$6

	lw	$25,%call16(_copy)($28)
	addiu	$16,$sp,44
	li	$5,16			# 0x10
	li	$7,16			# 0x10
	move	$6,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	addiu	$2,$17,160
	lw	$3,48($sp)
	lui	$22,%hi(sbox)
	lw	$6,8($17)
	addiu	$19,$17,16
	sw	$2,28($sp)
	addiu	$22,$22,%lo(sbox)
	lw	$2,4($17)
	addiu	$21,$sp,60
	lw	$5,12($17)
	lw	$4,0($17)
	xor	$3,$3,$2
	lw	$2,52($sp)
	lw	$28,16($sp)
	sw	$3,48($sp)
	xor	$2,$2,$6
	lw	$3,56($sp)
	sw	$2,52($sp)
	lw	$2,44($sp)
	xor	$3,$3,$5
	sw	$3,56($sp)
	xor	$2,$2,$4
	sw	$2,44($sp)
$L21:
	move	$23,$16
	move	$2,$16
$L22:
	lbu	$3,0($2)
	addiu	$2,$2,1
	addu	$3,$22,$3
	lbu	$3,0($3)
	bne	$21,$2,$L22
	sb	$3,-1($2)

	lbu	$6,48($sp)
	move	$5,$0
	lbu	$11,52($sp)
	move	$4,$0
	lbu	$10,56($sp)
	move	$3,$0
	lbu	$9,44($sp)
	ins	$5,$6,24,8
	lbu	$7,53($sp)
	ins	$4,$11,24,8
	lbu	$6,57($sp)
	move	$2,$0
	lbu	$11,45($sp)
	ins	$3,$10,24,8
	lbu	$10,49($sp)
	ins	$2,$9,24,8
	ins	$5,$7,16,8
	lbu	$9,58($sp)
	lbu	$7,46($sp)
	ins	$4,$6,16,8
	lbu	$6,50($sp)
	ins	$3,$11,16,8
	lbu	$11,54($sp)
	ins	$2,$10,16,8
	lbu	$10,47($sp)
	ins	$5,$9,8,8
	ins	$4,$7,8,8
	lbu	$9,51($sp)
	lbu	$7,55($sp)
	ins	$3,$6,8,8
	lbu	$6,59($sp)
	ins	$2,$11,8,8
	ins	$5,$10,0,8
	lw	$25,%call16(_copy)($28)
	ins	$4,$9,0,8
	ins	$3,$7,0,8
	sw	$5,64($sp)
	ins	$2,$6,0,8
	sw	$4,68($sp)
	li	$7,16			# 0x10
	sw	$3,72($sp)
	li	$5,16			# 0x10
	sw	$2,60($sp)
	move	$6,$21
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	addiu	$19,$19,16
	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,44($sp)

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,45($sp)

	lbu	$4,45($sp)
	lbu	$3,46($sp)
	lbu	$6,47($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$20,44($sp)
	xor	$3,$3,$6
	xor	$fp,$fp,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$fp
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,60($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,46($sp)

	lbu	$4,46($sp)
	lbu	$7,47($sp)
	lw	$28,16($sp)
	xor	$5,$20,$4
	lbu	$6,45($sp)
	xor	$5,$5,$7
	lbu	$fp,44($sp)
	xor	$3,$18,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$3
	sb	$2,61($sp)
	xor	$fp,$fp,$6
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$fp,$fp,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,47($sp)

	lw	$28,16($sp)
	lbu	$5,47($sp)
	lbu	$4,44($sp)
	xor	$fp,$fp,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$fp
	xor	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,62($sp)

	lw	$28,16($sp)
	lbu	$6,45($sp)
	lbu	$3,44($sp)
	lbu	$5,46($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,47($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$2,$3

	andi	$fp,$fp,0x00ff
	lw	$28,16($sp)
	xor	$fp,$fp,$2
	lbu	$4,48($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$fp,63($sp)

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,49($sp)

	lbu	$4,49($sp)
	lbu	$3,50($sp)
	lbu	$6,51($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$20,48($sp)
	xor	$3,$3,$6
	xor	$fp,$fp,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$fp
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,64($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,50($sp)

	lbu	$4,50($sp)
	lbu	$7,51($sp)
	lw	$28,16($sp)
	xor	$5,$20,$4
	lbu	$6,49($sp)
	xor	$5,$5,$7
	lbu	$fp,48($sp)
	xor	$3,$18,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$3
	sb	$2,65($sp)
	xor	$fp,$fp,$6
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$fp,$fp,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,51($sp)

	lw	$28,16($sp)
	lbu	$5,51($sp)
	lbu	$4,48($sp)
	xor	$fp,$fp,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$fp
	xor	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,66($sp)

	lw	$28,16($sp)
	lbu	$6,49($sp)
	lbu	$3,48($sp)
	lbu	$5,50($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,51($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$2,$3

	andi	$fp,$fp,0x00ff
	lw	$28,16($sp)
	xor	$fp,$fp,$2
	lbu	$4,52($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$fp,67($sp)

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,53($sp)

	lbu	$4,53($sp)
	lbu	$3,54($sp)
	lbu	$6,55($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$20,52($sp)
	xor	$3,$3,$6
	xor	$fp,$fp,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$fp
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,68($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,54($sp)

	lbu	$4,54($sp)
	lbu	$7,55($sp)
	lw	$28,16($sp)
	xor	$5,$20,$4
	lbu	$6,53($sp)
	xor	$5,$5,$7
	lbu	$fp,52($sp)
	xor	$3,$18,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$3
	sb	$2,69($sp)
	xor	$fp,$fp,$6
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$fp,$fp,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,55($sp)

	lw	$28,16($sp)
	lbu	$5,55($sp)
	lbu	$4,52($sp)
	xor	$fp,$fp,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$18,$fp
	xor	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,70($sp)

	lw	$28,16($sp)
	lbu	$6,53($sp)
	lbu	$3,52($sp)
	lbu	$5,54($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,55($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$2,$3

	andi	$fp,$fp,0x00ff
	lw	$28,16($sp)
	xor	$fp,$fp,$2
	lbu	$4,56($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$fp,71($sp)

	lw	$28,16($sp)
	move	$fp,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,57($sp)

	lbu	$4,57($sp)
	lbu	$3,58($sp)
	lbu	$6,59($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$18,56($sp)
	xor	$3,$3,$6
	xor	$fp,$fp,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$fp
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,72($sp)

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,58($sp)

	lbu	$4,58($sp)
	lbu	$7,59($sp)
	lw	$28,16($sp)
	xor	$5,$18,$4
	lbu	$6,57($sp)
	xor	$5,$5,$7
	lbu	$fp,56($sp)
	xor	$3,$20,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$3
	sb	$2,73($sp)
	xor	$fp,$fp,$6
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$fp,$fp,0x00ff

	lw	$28,16($sp)
	move	$20,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,59($sp)

	lw	$28,16($sp)
	lbu	$5,59($sp)
	lbu	$4,56($sp)
	xor	$fp,$fp,$5
	lw	$25,%call16(_double_byte)($28)
	xor	$3,$20,$fp
	xor	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,74($sp)

	lw	$28,16($sp)
	lbu	$6,57($sp)
	lbu	$3,56($sp)
	lbu	$5,58($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,59($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$fp,$2,$3

	andi	$fp,$fp,0x00ff
	lw	$28,16($sp)
	li	$5,16			# 0x10
	xor	$fp,$fp,$2
	li	$7,16			# 0x10
	sb	$fp,75($sp)
	move	$6,$21
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	lw	$6,48($sp)
	lw	$3,-12($19)
	lw	$2,-8($19)
	lw	$4,-16($19)
	xor	$3,$3,$6
	lw	$6,52($sp)
	lw	$5,-4($19)
	lw	$28,16($sp)
	xor	$2,$2,$6
	sw	$3,48($sp)
	sw	$2,52($sp)
	lw	$2,44($sp)
	lw	$3,56($sp)
	xor	$2,$2,$4
	sw	$2,44($sp)
	xor	$3,$3,$5
	sw	$3,56($sp)
	lw	$2,28($sp)
	bne	$19,$2,$L21
	nop

$L23:
	lbu	$2,0($23)
	addiu	$23,$23,1
	addu	$2,$22,$2
	lbu	$2,0($2)
	bne	$21,$23,$L23
	sb	$2,-1($23)

	lbu	$6,48($sp)
	move	$5,$0
	lbu	$10,52($sp)
	move	$4,$0
	lbu	$9,56($sp)
	move	$3,$0
	lbu	$8,44($sp)
	ins	$5,$6,24,8
	lbu	$7,53($sp)
	ins	$4,$10,24,8
	lbu	$6,57($sp)
	move	$2,$0
	lbu	$10,45($sp)
	ins	$3,$9,24,8
	lbu	$9,49($sp)
	ins	$2,$8,24,8
	ins	$5,$7,16,8
	lbu	$8,58($sp)
	lbu	$7,46($sp)
	ins	$4,$6,16,8
	lbu	$6,50($sp)
	ins	$3,$10,16,8
	lbu	$10,54($sp)
	ins	$2,$9,16,8
	lbu	$9,47($sp)
	ins	$5,$8,8,8
	ins	$4,$7,8,8
	lbu	$8,51($sp)
	lbu	$7,55($sp)
	ins	$3,$6,8,8
	lbu	$6,59($sp)
	ins	$2,$10,8,8
	ins	$5,$9,0,8
	lw	$25,%call16(_copy)($28)
	ins	$4,$8,0,8
	ins	$3,$7,0,8
	sw	$5,64($sp)
	ins	$2,$6,0,8
	sw	$4,68($sp)
	li	$7,16			# 0x10
	sw	$3,72($sp)
	li	$5,16			# 0x10
	sw	$2,60($sp)
	move	$6,$21
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$16

	li	$7,16			# 0x10
	lw	$10,164($17)
	li	$5,16			# 0x10
	lw	$9,48($sp)
	move	$6,$16
	lw	$8,168($17)
	lw	$28,16($sp)
	xor	$9,$9,$10
	lw	$10,52($sp)
	lw	$2,172($17)
	lw	$3,160($17)
	xor	$8,$8,$10
	lw	$10,56($sp)
	lw	$25,%call16(_copy)($28)
	lw	$4,36($sp)
	sw	$9,48($sp)
	xor	$2,$2,$10
	sw	$8,52($sp)
	sw	$2,56($sp)
	lw	$9,44($sp)
	xor	$3,$3,$9
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sw	$3,44($sp)

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$16

	li	$2,1			# 0x1
	.option	pic0
	b	$L19
	.option	pic2
	lw	$28,16($sp)

$L27:
	move	$2,$0
$L19:
	lw	$3,32($sp)
	lw	$4,76($sp)
	lw	$3,0($3)
	bne	$4,$3,$L32
	lw	$31,116($sp)

	lw	$fp,112($sp)
	lw	$23,108($sp)
	lw	$22,104($sp)
	lw	$21,100($sp)
	lw	$20,96($sp)
	lw	$19,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	jr	$31
	addiu	$sp,$sp,120

$L32:
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
