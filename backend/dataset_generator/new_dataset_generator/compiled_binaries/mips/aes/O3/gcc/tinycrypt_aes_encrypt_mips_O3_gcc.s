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
	lw	$9,%got(__stack_chk_guard)($28)
	addiu	$3,$sp,24
	addiu	$11,$2,32
	sw	$31,76($sp)
	.cprestore	16
	lw	$6,0($9)
	sw	$6,68($sp)
$L2:
	lw	$10,0($2)
	addiu	$2,$2,16
	addiu	$3,$3,16
	sw	$10,-16($3)
	lw	$8,-12($2)
	lw	$7,-8($2)
	lw	$6,-4($2)
	sw	$8,-12($3)
	sw	$7,-8($3)
	bne	$2,$11,$L2
	sw	$6,-4($3)

	lw	$7,0($2)
	lw	$6,4($2)
	lw	$2,8($2)
	sw	$7,0($3)
	sw	$6,4($3)
	beq	$4,$0,$L12
	sw	$2,8($3)

	beq	$5,$0,$L12
	addiu	$12,$4,16

	lbu	$11,0($5)
	lbu	$3,1($5)
	li	$6,4			# 0x4
	lbu	$7,3($5)
	li	$13,40			# 0x28
	lbu	$2,2($5)
	sll	$11,$11,24
	sll	$3,$3,16
	or	$11,$11,$7
	sll	$2,$2,8
	or	$11,$11,$3
	or	$11,$11,$2
	sw	$11,0($4)
	lui	$7,%hi(sbox)
	lbu	$10,4($5)
	lbu	$3,5($5)
	addiu	$7,$7,%lo(sbox)
	lbu	$2,6($5)
	lbu	$8,7($5)
	sll	$10,$10,24
	sll	$3,$3,16
	sll	$2,$2,8
	or	$10,$10,$3
	or	$10,$10,$8
	or	$10,$10,$2
	sw	$10,4($4)
	lbu	$8,8($5)
	lbu	$3,9($5)
	lbu	$2,10($5)
	lbu	$14,11($5)
	sll	$8,$8,24
	sll	$3,$3,16
	sll	$2,$2,8
	or	$8,$8,$3
	or	$8,$8,$14
	or	$8,$8,$2
	sw	$8,8($4)
	lbu	$2,12($5)
	lbu	$14,13($5)
	lbu	$3,14($5)
	lbu	$15,15($5)
	sll	$2,$2,24
	sll	$5,$14,16
	sll	$3,$3,8
	or	$2,$2,$5
	or	$2,$2,$15
	or	$2,$2,$3
	sw	$2,12($4)
$L4:
	ext	$3,$2,16,8
	ext	$15,$2,8,8
	srl	$5,$6,2
	ext	$24,$2,24,8
	addu	$3,$7,$3
	andi	$14,$2,0x00ff
	addu	$15,$7,$15
	sll	$5,$5,2
	lbu	$3,0($3)
	addu	$24,$7,$24
	addu	$14,$7,$14
	lbu	$15,0($15)
	addiu	$5,$5,72
	lbu	$24,0($24)
	sll	$3,$3,24
	addu	$5,$5,$sp
	lbu	$14,0($14)
	sll	$15,$15,16
	or	$3,$3,$24
	lw	$24,-48($5)
	sll	$5,$14,8
	or	$3,$3,$15
	or	$3,$3,$5
	xor	$3,$3,$24
	xor	$11,$11,$3
	xor	$10,$10,$11
	sw	$11,0($12)
	xor	$8,$8,$10
	sw	$10,4($12)
	addiu	$6,$6,4
	sw	$8,8($12)
	xor	$2,$2,$8
	sw	$2,12($12)
	bne	$6,$13,$L4
	addiu	$12,$12,16

	addiu	$4,$4,160
	li	$10,44			# 0x2c
$L9:
	andi	$3,$6,0x3
	bne	$3,$0,$L6
	lw	$2,-4($4)

	ext	$11,$2,16,8
	lw	$12,-16($4)
	ext	$5,$2,8,8
	ext	$8,$2,24,8
	addu	$11,$7,$11
	andi	$3,$2,0x00ff
	addu	$5,$7,$5
	addu	$8,$7,$8
	lbu	$2,0($11)
	addu	$3,$7,$3
	lbu	$5,0($5)
	addiu	$4,$4,4
	lbu	$8,0($8)
	sll	$2,$2,24
	lbu	$3,0($3)
	addiu	$6,$6,1
	sll	$5,$5,16
	or	$2,$2,$8
	sll	$3,$3,8
	or	$2,$2,$5
	or	$2,$2,$3
	lw	$3,64($sp)
	xor	$2,$2,$3
	xor	$2,$2,$12
	bne	$6,$10,$L9
	sw	$2,-4($4)

	.option	pic0
	b	$L1
	.option	pic2
	li	$2,1			# 0x1

$L12:
	move	$2,$0
$L1:
	lw	$4,68($sp)
	lw	$3,0($9)
	bne	$4,$3,$L18
	lw	$31,76($sp)

	jr	$31
	addiu	$sp,$sp,80

$L6:
	lw	$3,-16($4)
	addiu	$4,$4,4
	addiu	$6,$6,1
	xor	$2,$3,$2
	bne	$6,$10,$L9
	sw	$2,-4($4)

	.option	pic0
	b	$L1
	.option	pic2
	li	$2,1			# 0x1

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
	.frame	$sp,144,$31		# vars= 80, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-144
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$31,140($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	sw	$fp,136($sp)
	sw	$23,132($sp)
	sw	$22,128($sp)
	sw	$21,124($sp)
	sw	$20,120($sp)
	sw	$19,116($sp)
	sw	$18,112($sp)
	sw	$17,108($sp)
	sw	$16,104($sp)
	.cprestore	16
	sw	$2,48($sp)
	sw	$4,52($sp)
	lw	$3,0($2)
	sw	$3,100($sp)
	beq	$4,$0,$L25
	nop

	beq	$5,$0,$L25
	move	$2,$5

	beq	$6,$0,$L25
	move	$16,$6

	lw	$25,%call16(_copy)($28)
	addiu	$3,$sp,68
	li	$7,16			# 0x10
	li	$5,16			# 0x10
	sw	$3,36($sp)
	move	$4,$3
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$6,$2

	addiu	$4,$16,160
	lw	$6,8($16)
	addiu	$21,$16,16
	lw	$8,12($16)
	lw	$2,4($16)
	srl	$23,$6,24
	lbu	$7,74($sp)
	lw	$3,0($16)
	srl	$24,$6,8
	lbu	$10,71($sp)
	srl	$22,$2,24
	lbu	$14,78($sp)
	srl	$9,$8,16
	lbu	$25,75($sp)
	srl	$18,$2,8
	lbu	$12,79($sp)
	srl	$20,$3,16
	sw	$23,56($sp)
	srl	$23,$8,24
	sb	$7,35($sp)
	xor	$25,$2,$25
	sw	$23,60($sp)
	srl	$13,$3,8
	sw	$4,44($sp)
	lui	$4,%hi(sbox)
	sw	$22,28($sp)
	srl	$5,$2,16
	lbu	$23,83($sp)
	xor	$2,$24,$14
	lbu	$7,81($sp)
	srl	$fp,$3,24
	lbu	$19,69($sp)
	xor	$3,$3,$10
	xor	$24,$8,$23
	lbu	$11,70($sp)
	lbu	$15,73($sp)
	xor	$12,$6,$12
	lbu	$31,77($sp)
	addiu	$17,$4,%lo(sbox)
	lbu	$22,82($sp)
	srl	$4,$6,16
	lbu	$10,76($sp)
	xor	$6,$9,$7
	lw	$23,56($sp)
	srl	$7,$8,8
	addiu	$8,$sp,84
	lw	$28,16($sp)
	sw	$3,24($sp)
	xor	$13,$13,$11
	sw	$8,40($sp)
	xor	$20,$20,$19
	lbu	$11,72($sp)
	xor	$5,$5,$15
	lbu	$19,68($sp)
	xor	$4,$4,$31
	lbu	$15,80($sp)
	xor	$7,$7,$22
	lw	$3,32($sp)
	xor	$10,$23,$10
	lbu	$31,27($sp)
	andi	$8,$13,0x00ff
	lw	$22,28($sp)
	xor	$14,$fp,$19
	lw	$23,60($sp)
	xor	$3,$18,$3
	andi	$18,$24,0x00ff
	sw	$16,56($sp)
	andi	$13,$25,0x00ff
	xor	$15,$23,$15
	move	$24,$14
	move	$25,$15
	andi	$9,$20,0x00ff
	move	$15,$8
	xor	$11,$22,$11
	andi	$5,$5,0x00ff
	andi	$3,$3,0x00ff
	andi	$4,$4,0x00ff
	andi	$2,$2,0x00ff
	andi	$12,$12,0x00ff
	andi	$6,$6,0x00ff
	andi	$7,$7,0x00ff
	move	$14,$31
	move	$8,$18
$L21:
	addu	$10,$17,$10
	lw	$31,%call16(_copy)($28)
	addu	$24,$17,$24
	addu	$11,$17,$11
	addu	$25,$17,$25
	lbu	$22,0($10)
	addu	$5,$17,$5
	lbu	$fp,0($24)
	addu	$9,$17,$9
	lbu	$23,0($11)
	addu	$4,$17,$4
	lbu	$20,0($25)
	addu	$6,$17,$6
	lbu	$18,0($5)
	addu	$15,$17,$15
	lbu	$19,0($9)
	addu	$3,$17,$3
	lbu	$16,0($4)
	addu	$2,$17,$2
	sw	$31,24($sp)
	move	$5,$0
	lbu	$31,0($6)
	lbu	$24,0($3)
	move	$11,$0
	lbu	$25,0($15)
	move	$10,$0
	lbu	$15,0($2)
	move	$9,$0
	addu	$7,$17,$7
	move	$6,$0
	move	$4,$0
	move	$3,$0
	lbu	$7,0($7)
	move	$2,$0
	ins	$5,$22,24,8
	addu	$13,$17,$13
	ins	$11,$fp,24,8
	ins	$10,$23,24,8
	ins	$9,$20,24,8
	lbu	$13,0($13)
	ins	$6,$fp,24,8
	ins	$4,$23,24,8
	ins	$3,$22,24,8
	lw	$22,36($sp)
	ins	$2,$20,24,8
	lw	$20,40($sp)
	addu	$14,$17,$14
	addu	$12,$17,$12
	addu	$8,$17,$8
	ins	$5,$31,16,8
	lbu	$14,0($14)
	ins	$2,$31,16,8
	lbu	$12,0($12)
	ins	$11,$18,16,8
	lbu	$8,0($8)
	ins	$10,$16,16,8
	ins	$9,$19,16,8
	ins	$6,$19,16,8
	ins	$4,$18,16,8
	ins	$3,$16,16,8
	ins	$5,$25,8,8
	ins	$11,$15,8,8
	ins	$9,$24,8,8
	ins	$4,$24,8,8
	ins	$3,$15,8,8
	ins	$10,$7,8,8
	ins	$6,$25,8,8
	lw	$25,24($sp)
	ins	$2,$7,8,8
	ins	$5,$13,0,8
	ins	$6,$14,0,8
	ins	$4,$13,0,8
	sw	$5,92($sp)
	ins	$3,$12,0,8
	sw	$6,68($sp)
	ins	$11,$8,0,8
	sw	$4,72($sp)
	ins	$10,$14,0,8
	sw	$3,76($sp)
	ins	$9,$12,0,8
	sw	$11,84($sp)
	ins	$2,$8,0,8
	sw	$10,88($sp)
	li	$7,16			# 0x10
	sw	$9,96($sp)
	li	$5,16			# 0x10
	sw	$2,80($sp)
	move	$6,$20
	jalr	$25
	move	$4,$22

	addiu	$21,$21,16
	lw	$28,16($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,68($sp)

	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,69($sp)

	lbu	$4,69($sp)
	lbu	$3,70($sp)
	lbu	$5,71($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$19,68($sp)
	xor	$3,$3,$5
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$16
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,84($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,70($sp)

	lbu	$4,70($sp)
	lbu	$5,71($sp)
	lw	$28,16($sp)
	xor	$19,$19,$4
	lbu	$3,69($sp)
	xor	$19,$19,$5
	lbu	$16,68($sp)
	xor	$18,$18,$19
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$18
	sb	$2,85($sp)
	xor	$16,$16,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$16,$16,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,71($sp)

	lw	$28,16($sp)
	lbu	$3,71($sp)
	lbu	$4,68($sp)
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$18,$18,$16
	xor	$2,$2,$18
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,86($sp)

	lw	$28,16($sp)
	lbu	$6,69($sp)
	lbu	$3,68($sp)
	lbu	$5,70($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,71($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$2,$3

	andi	$16,$16,0x00ff
	lw	$28,16($sp)
	xor	$16,$16,$2
	lbu	$4,72($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$16,87($sp)

	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,73($sp)

	lbu	$4,73($sp)
	lbu	$3,74($sp)
	lbu	$5,75($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$19,72($sp)
	xor	$3,$3,$5
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$16
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,88($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,74($sp)

	lbu	$4,74($sp)
	lbu	$5,75($sp)
	lw	$28,16($sp)
	xor	$19,$19,$4
	lbu	$3,73($sp)
	xor	$19,$19,$5
	lbu	$16,72($sp)
	xor	$18,$18,$19
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$18
	sb	$2,89($sp)
	xor	$16,$16,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$16,$16,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,75($sp)

	lw	$28,16($sp)
	lbu	$3,75($sp)
	lbu	$4,72($sp)
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$18,$18,$16
	xor	$2,$2,$18
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,90($sp)

	lw	$28,16($sp)
	lbu	$6,73($sp)
	lbu	$3,72($sp)
	lbu	$5,74($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,75($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$2,$3

	andi	$16,$16,0x00ff
	lw	$28,16($sp)
	xor	$16,$16,$2
	lbu	$4,76($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$16,91($sp)

	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,77($sp)

	lbu	$4,77($sp)
	lbu	$3,78($sp)
	lbu	$5,79($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$19,76($sp)
	xor	$3,$3,$5
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$16
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,92($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,78($sp)

	lbu	$4,78($sp)
	lbu	$5,79($sp)
	lw	$28,16($sp)
	xor	$19,$19,$4
	lbu	$3,77($sp)
	xor	$19,$19,$5
	lbu	$16,76($sp)
	xor	$18,$18,$19
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$18
	sb	$2,93($sp)
	xor	$16,$16,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$16,$16,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,79($sp)

	lw	$28,16($sp)
	lbu	$3,79($sp)
	lbu	$4,76($sp)
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$18,$18,$16
	xor	$2,$2,$18
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,94($sp)

	lw	$28,16($sp)
	lbu	$6,77($sp)
	lbu	$3,76($sp)
	lbu	$5,78($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,79($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$2,$3

	andi	$16,$16,0x00ff
	lw	$28,16($sp)
	xor	$16,$16,$2
	lbu	$4,80($sp)
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$16,95($sp)

	lw	$28,16($sp)
	move	$16,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,81($sp)

	lbu	$4,81($sp)
	lbu	$3,82($sp)
	lbu	$5,83($sp)
	lw	$28,16($sp)
	xor	$3,$4,$3
	lbu	$19,80($sp)
	xor	$3,$3,$5
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$16
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,96($sp)

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,82($sp)

	lbu	$4,82($sp)
	lbu	$5,83($sp)
	lw	$28,16($sp)
	xor	$19,$19,$4
	lbu	$3,81($sp)
	xor	$19,$19,$5
	lbu	$16,80($sp)
	xor	$18,$18,$19
	lw	$25,%call16(_double_byte)($28)
	xor	$2,$2,$18
	sb	$2,97($sp)
	xor	$16,$16,$3
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	andi	$16,$16,0x00ff

	lw	$28,16($sp)
	move	$18,$2
	lw	$25,%call16(_double_byte)($28)
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	lbu	$4,83($sp)

	lw	$28,16($sp)
	lbu	$3,83($sp)
	lbu	$4,80($sp)
	xor	$16,$16,$3
	lw	$25,%call16(_double_byte)($28)
	xor	$18,$18,$16
	xor	$2,$2,$18
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	sb	$2,98($sp)

	lw	$28,16($sp)
	lbu	$6,81($sp)
	lbu	$3,80($sp)
	lbu	$5,82($sp)
	lw	$25,%call16(_double_byte)($28)
	lbu	$4,83($sp)
	xor	$3,$3,$6
	xor	$3,$3,$5
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	xor	$16,$2,$3

	andi	$16,$16,0x00ff
	lw	$28,16($sp)
	xor	$16,$16,$2
	li	$7,16			# 0x10
	sb	$16,99($sp)
	li	$5,16			# 0x10
	move	$6,$20
	lw	$25,%call16(_copy)($28)
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$4,$22

	lw	$14,-16($21)
	lw	$31,-4($21)
	lw	$13,-12($21)
	lw	$12,-8($21)
	srl	$9,$14,24
	lbu	$4,72($sp)
	srl	$7,$14,16
	lbu	$19,71($sp)
	srl	$5,$13,16
	lbu	$6,73($sp)
	srl	$3,$13,8
	lbu	$8,74($sp)
	srl	$2,$12,16
	lbu	$25,77($sp)
	srl	$16,$12,8
	lbu	$fp,78($sp)
	srl	$15,$14,8
	lbu	$24,75($sp)
	xor	$14,$14,$19
	lbu	$10,76($sp)
	xor	$2,$2,$25
	lbu	$23,79($sp)
	srl	$11,$13,24
	lbu	$22,69($sp)
	xor	$5,$5,$6
	lbu	$6,82($sp)
	xor	$3,$3,$8
	lbu	$8,83($sp)
	xor	$16,$16,$fp
	lbu	$20,70($sp)
	srl	$18,$31,8
	sw	$4,28($sp)
	srl	$4,$12,24
	sw	$9,24($sp)
	srl	$9,$31,24
	lw	$19,28($sp)
	xor	$13,$13,$24
	lbu	$25,80($sp)
	xor	$10,$4,$10
	lbu	$24,68($sp)
	andi	$4,$2,0x00ff
	lw	$28,16($sp)
	andi	$2,$16,0x00ff
	sw	$9,32($sp)
	srl	$16,$31,16
	sb	$10,76($sp)
	xor	$12,$12,$23
	sb	$4,77($sp)
	xor	$11,$11,$19
	sb	$11,72($sp)
	andi	$5,$5,0x00ff
	sb	$5,73($sp)
	andi	$3,$3,0x00ff
	sb	$3,74($sp)
	andi	$13,$13,0x00ff
	sb	$13,75($sp)
	andi	$12,$12,0x00ff
	sb	$2,78($sp)
	xor	$18,$18,$6
	lbu	$9,81($sp)
	xor	$8,$31,$8
	sb	$12,79($sp)
	xor	$7,$7,$22
	lw	$6,32($sp)
	xor	$15,$15,$20
	xor	$16,$16,$9
	lw	$31,44($sp)
	lw	$9,24($sp)
	andi	$15,$15,0x00ff
	xor	$25,$6,$25
	andi	$14,$14,0x00ff
	xor	$24,$9,$24
	andi	$6,$16,0x00ff
	andi	$9,$7,0x00ff
	andi	$8,$8,0x00ff
	bne	$31,$21,$L21
	andi	$7,$18,0x00ff

	addu	$9,$17,$9
	lw	$16,56($sp)
	addu	$10,$17,$10
	move	$20,$14
	move	$22,$8
	lbu	$9,0($9)
	addu	$14,$17,$24
	move	$8,$15
	move	$15,$25
	lw	$25,%call16(_copy)($28)
	addu	$11,$17,$11
	sw	$9,24($sp)
	addu	$31,$17,$15
	lbu	$15,0($14)
	addu	$5,$17,$5
	sw	$25,28($sp)
	addu	$8,$17,$8
	lbu	$25,0($10)
	addu	$4,$17,$4
	lbu	$24,0($11)
	addu	$3,$17,$3
	lbu	$14,0($5)
	addu	$2,$17,$2
	lbu	$31,0($31)
	addu	$6,$17,$6
	lbu	$21,0($8)
	move	$10,$0
	lbu	$11,0($4)
	move	$5,$0
	lbu	$23,0($3)
	move	$8,$0
	lbu	$6,0($6)
	lbu	$19,0($2)
	addu	$7,$17,$7
	move	$9,$0
	move	$4,$0
	move	$18,$0
	lbu	$7,0($7)
	move	$3,$0
	move	$2,$0
	addu	$fp,$17,$20
	ins	$10,$15,24,8
	addu	$20,$17,$13
	ins	$5,$25,24,8
	lbu	$13,0($fp)
	ins	$8,$15,24,8
	lw	$15,24($sp)
	ins	$9,$24,24,8
	lbu	$20,0($20)
	ins	$4,$31,24,8
	ins	$18,$24,24,8
	ins	$2,$31,24,8
	addu	$12,$17,$12
	addu	$22,$17,$22
	lw	$17,36($sp)
	ins	$3,$25,24,8
	lw	$25,28($sp)
	ins	$5,$6,16,8
	lbu	$12,0($12)
	ins	$10,$14,16,8
	lbu	$22,0($22)
	ins	$9,$11,16,8
	ins	$4,$15,16,8
	ins	$8,$15,16,8
	ins	$18,$14,16,8
	ins	$3,$11,16,8
	ins	$2,$6,16,8
	lw	$6,40($sp)
	ins	$5,$21,8,8
	ins	$9,$7,8,8
	ins	$2,$7,8,8
	ins	$10,$19,8,8
	ins	$4,$23,8,8
	ins	$8,$21,8,8
	ins	$18,$23,8,8
	ins	$3,$19,8,8
	ins	$5,$20,0,8
	ins	$9,$13,0,8
	ins	$4,$12,0,8
	sw	$5,92($sp)
	ins	$8,$13,0,8
	sw	$9,88($sp)
	ins	$3,$12,0,8
	sw	$4,96($sp)
	ins	$10,$22,0,8
	sw	$8,68($sp)
	ins	$2,$22,0,8
	sw	$3,76($sp)
	ins	$18,$20,0,8
	sw	$10,84($sp)
	li	$7,16			# 0x10
	sw	$2,80($sp)
	li	$5,16			# 0x10
	sw	$18,72($sp)
	jalr	$25
	move	$4,$17

	li	$7,16			# 0x10
	lw	$10,164($16)
	li	$5,16			# 0x10
	lw	$9,72($sp)
	move	$6,$17
	lw	$8,168($16)
	lw	$28,16($sp)
	xor	$9,$9,$10
	lw	$10,76($sp)
	lw	$2,172($16)
	lw	$3,160($16)
	xor	$8,$8,$10
	lw	$10,80($sp)
	lw	$25,%call16(_copy)($28)
	lw	$4,52($sp)
	sw	$9,72($sp)
	xor	$2,$2,$10
	sw	$8,76($sp)
	sw	$2,80($sp)
	lw	$9,68($sp)
	xor	$3,$3,$9
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	sw	$3,68($sp)

	li	$6,16			# 0x10
	lw	$28,16($sp)
	move	$5,$0
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	move	$4,$17

	li	$2,1			# 0x1
	.option	pic0
	b	$L19
	.option	pic2
	lw	$28,16($sp)

$L25:
	move	$2,$0
$L19:
	lw	$3,48($sp)
	lw	$4,100($sp)
	lw	$3,0($3)
	bne	$4,$3,$L28
	lw	$31,140($sp)

	lw	$fp,136($sp)
	lw	$23,132($sp)
	lw	$22,128($sp)
	lw	$21,124($sp)
	lw	$20,120($sp)
	lw	$19,116($sp)
	lw	$18,112($sp)
	lw	$17,108($sp)
	lw	$16,104($sp)
	jr	$31
	addiu	$sp,$sp,144

$L28:
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
