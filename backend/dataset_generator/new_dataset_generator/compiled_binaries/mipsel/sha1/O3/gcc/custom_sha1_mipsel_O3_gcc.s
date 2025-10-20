	.file	1 "custom_sha1.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_transform
	.set	nomips16
	.set	nomicromips
	.ent	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
	.frame	$sp,448,$31		# vars= 384, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-448
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$2,$sp,84
	sw	$fp,440($sp)
	sw	$23,436($sp)
	sw	$22,432($sp)
	sw	$31,444($sp)
	sw	$21,428($sp)
	sw	$20,424($sp)
	sw	$19,420($sp)
	sw	$18,416($sp)
	sw	$17,412($sp)
	sw	$16,408($sp)
	.cprestore	16
	lbu	$6,0($5)
	lbu	$12,3($5)
	lbu	$3,4($5)
	lbu	$19,5($5)
	sll	$6,$6,24
	lbu	$14,12($5)
	lbu	$9,13($5)
	or	$6,$6,$12
	lw	$22,%got(__stack_chk_guard)($28)
	sll	$19,$19,16
	lbu	$10,8($5)
	sll	$3,$3,24
	lbu	$13,9($5)
	sll	$9,$9,16
	lbu	$11,16($5)
	sll	$14,$14,24
	lbu	$8,17($5)
	or	$3,$3,$19
	lbu	$7,1($5)
	sll	$13,$13,16
	lbu	$16,6($5)
	sll	$10,$10,24
	lbu	$17,2($5)
	sll	$8,$8,16
	lbu	$24,14($5)
	sll	$7,$7,16
	lbu	$12,7($5)
	sll	$16,$16,8
	lbu	$20,15($5)
	sll	$11,$11,24
	lbu	$21,11($5)
	sll	$17,$17,8
	lbu	$25,10($5)
	sll	$24,$24,8
	lbu	$15,18($5)
	or	$14,$14,$9
	sw	$22,76($sp)
	or	$12,$3,$12
	lbu	$18,19($5)
	or	$14,$14,$20
	or	$12,$12,$16
	lw	$19,0($22)
	or	$10,$10,$13
	lbu	$16,37($5)
	or	$13,$6,$7
	sw	$12,88($sp)
	or	$11,$11,$8
	sw	$19,404($sp)
	or	$12,$14,$24
	lbu	$14,33($5)
	or	$13,$13,$17
	lbu	$17,36($5)
	or	$11,$11,$18
	lbu	$18,32($5)
	sll	$25,$25,8
	lbu	$24,25($5)
	sll	$15,$15,8
	lw	$9,0($4)
	sll	$19,$18,24
	lw	$8,4($4)
	sll	$20,$14,16
	lbu	$18,40($5)
	sll	$17,$17,24
	lbu	$14,41($5)
	sll	$16,$16,16
	lw	$7,8($4)
	or	$10,$10,$21
	lw	$6,12($4)
	or	$10,$10,$25
	lw	$3,16($4)
	or	$11,$11,$15
	lbu	$25,21($5)
	lbu	$15,29($5)
	sll	$24,$24,16
	sw	$13,84($sp)
	sll	$21,$18,24
	sw	$10,32($sp)
	sll	$25,$25,16
	sw	$10,92($sp)
	sll	$15,$15,16
	sw	$12,28($sp)
	sll	$14,$14,16
	sw	$12,96($sp)
	sw	$11,24($sp)
	sw	$11,100($sp)
	sw	$19,40($sp)
	sw	$20,44($sp)
	sw	$2,36($sp)
	sw	$17,52($sp)
	lbu	$12,20($5)
	lbu	$11,24($5)
	lbu	$10,28($5)
	lbu	$17,22($5)
	sll	$12,$12,24
	sw	$16,56($sp)
	sll	$11,$11,24
	lbu	$16,26($5)
	or	$12,$12,$25
	or	$11,$11,$24
	lbu	$25,39($5)
	lbu	$24,43($5)
	sll	$10,$10,24
	sll	$20,$16,8
	lbu	$16,42($5)
	lbu	$23,27($5)
	or	$10,$10,$15
	lbu	$19,30($5)
	sll	$13,$16,8
	lbu	$16,35($5)
	lbu	$18,34($5)
	or	$11,$11,$23
	lbu	$fp,23($5)
	sll	$19,$19,8
	lbu	$22,31($5)
	or	$20,$11,$20
	sw	$16,48($sp)
	sll	$18,$18,8
	sw	$25,60($sp)
	or	$12,$12,$fp
	sw	$24,68($sp)
	or	$10,$10,$22
	sw	$21,64($sp)
	sll	$21,$17,8
	lw	$24,40($sp)
	or	$19,$10,$19
	lw	$25,44($sp)
	or	$21,$12,$21
	lw	$23,48($sp)
	lw	$16,56($sp)
	or	$25,$24,$25
	lw	$24,52($sp)
	or	$25,$25,$23
	lw	$23,60($sp)
	lbu	$17,38($5)
	or	$25,$25,$18
	lbu	$15,44($5)
	or	$24,$24,$16
	lbu	$16,45($5)
	or	$24,$24,$23
	lw	$23,68($sp)
	sll	$17,$17,8
	sw	$13,72($sp)
	sll	$10,$15,24
	sw	$25,116($sp)
	or	$24,$24,$17
	sw	$21,104($sp)
	sll	$16,$16,16
	sw	$20,108($sp)
	sw	$19,112($sp)
	or	$10,$10,$16
	lw	$13,64($sp)
	or	$14,$13,$14
	lw	$13,72($sp)
	or	$14,$14,$23
	lbu	$11,52($5)
	lbu	$17,53($5)
	or	$14,$14,$13
	lbu	$15,60($5)
	sw	$24,120($sp)
	sll	$11,$11,24
	sw	$14,124($sp)
	sll	$17,$17,16
	lbu	$14,47($5)
	sll	$23,$15,24
	lbu	$24,57($5)
	or	$11,$11,$17
	lbu	$12,48($5)
	or	$13,$10,$14
	lbu	$14,46($5)
	sll	$24,$24,16
	lbu	$10,56($5)
	lbu	$18,49($5)
	sll	$12,$12,24
	lbu	$16,61($5)
	sll	$fp,$14,8
	lbu	$25,50($5)
	sll	$10,$10,24
	lbu	$15,58($5)
	sll	$18,$18,16
	lbu	$14,62($5)
	sll	$16,$16,16
	sw	$24,44($sp)
	or	$12,$12,$18
	sw	$23,48($sp)
	sll	$15,$15,8
	sw	$fp,40($sp)
	sll	$14,$14,8
	lw	$17,44($sp)
	sll	$25,$25,8
	lbu	$fp,51($5)
	lbu	$24,54($5)
	or	$10,$10,$17
	lw	$17,48($sp)
	lbu	$23,55($5)
	or	$12,$12,$fp
	lbu	$22,59($5)
	sll	$24,$24,8
	lbu	$5,63($5)
	or	$16,$17,$16
	lw	$fp,40($sp)
	or	$11,$11,$23
	or	$10,$10,$22
	or	$16,$16,$5
	or	$10,$10,$15
	or	$5,$13,$fp
	sw	$10,140($sp)
	or	$16,$16,$14
	sw	$5,128($sp)
	or	$12,$12,$25
	sw	$16,144($sp)
	or	$11,$11,$24
	sw	$12,132($sp)
	sw	$11,136($sp)
	li	$15,16			# 0x10
	lw	$22,24($sp)
	move	$13,$2
	lw	$18,28($sp)
	.option	pic0
	b	$L2
	.option	pic2
	lw	$14,32($sp)

$L11:
	move	$19,$24
	move	$20,$25
	move	$21,$17
$L2:
	lw	$17,32($13)
	addiu	$13,$13,12
	lw	$23,-12($13)
	addiu	$15,$15,3
	xor	$23,$17,$23
	lw	$25,24($13)
	xor	$14,$23,$14
	lw	$12,-8($13)
	xor	$14,$14,$11
	lw	$24,28($13)
	ror	$11,$14,31
	lw	$5,-4($13)
	move	$14,$21
	xor	$12,$25,$12
	sw	$11,52($13)
	xor	$10,$12,$10
	xor	$5,$24,$5
	xor	$5,$5,$22
	xor	$10,$10,$18
	xor	$5,$5,$16
	ror	$16,$5,31
	ror	$10,$10,31
	li	$5,79			# 0x4f
	sw	$16,60($13)
	sw	$10,56($13)
	move	$18,$20
	bne	$15,$5,$L11
	move	$22,$19

	lw	$14,388($sp)
	move	$10,$0
	lw	$5,368($sp)
	move	$13,$3
	move	$11,$6
	move	$12,$7
	xor	$5,$5,$14
	lw	$14,344($sp)
	move	$24,$8
	move	$15,$9
	xor	$5,$5,$14
	lw	$14,336($sp)
	xor	$5,$5,$14
	ror	$5,$5,31
	.option	pic0
	b	$L8
	.option	pic2
	sw	$5,400($sp)

$L16:
	xor	$14,$11,$12
	xor	$14,$14,$24
	ori	$25,$25,0xeba1
$L4:
	lw	$17,0($2)
	ror	$5,$15,27
	ror	$16,$24,2
	addiu	$10,$10,1
	addu	$5,$5,$17
	addiu	$2,$2,4
	addu	$5,$5,$25
	addu	$5,$5,$14
	addu	$5,$5,$13
$L9:
	move	$13,$11
	move	$24,$15
	move	$11,$12
	move	$15,$5
	move	$12,$16
$L8:
	slt	$5,$10,20
	bne	$5,$0,$L15
	slt	$5,$10,40

	bne	$5,$0,$L16
	li	$25,1859715072			# 0x6ed90000

	slt	$5,$10,60
	beq	$5,$0,$L6
	li	$25,-1894055936			# 0xffffffff8f1b0000

	or	$14,$11,$12
	and	$14,$14,$24
	and	$5,$11,$12
	or	$14,$14,$5
	.option	pic0
	b	$L4
	.option	pic2
	ori	$25,$25,0xbcdc

$L15:
	li	$25,1518469120			# 0x5a820000
	xor	$14,$11,$12
	and	$14,$14,$24
	addiu	$25,$25,31129
	.option	pic0
	b	$L4
	.option	pic2
	xor	$14,$14,$11

$L6:
	lw	$25,0($2)
	ror	$5,$15,27
	xor	$14,$11,$12
	xor	$14,$14,$24
	addu	$5,$5,$25
	li	$25,-899547136			# 0xffffffffca620000
	addiu	$10,$10,1
	ori	$25,$25,0xc1d6
	addu	$5,$5,$25
	ror	$16,$24,2
	addu	$5,$5,$14
	li	$14,80			# 0x50
	addu	$5,$5,$13
	bne	$10,$14,$L9
	addiu	$2,$2,4

	lw	$2,76($sp)
	addu	$9,$9,$5
	lw	$10,404($sp)
	addu	$8,$8,$15
	addu	$7,$7,$16
	addu	$6,$6,$12
	sw	$8,4($4)
	sw	$7,8($4)
	addu	$3,$3,$11
	sw	$6,12($4)
	sw	$3,16($4)
	lw	$2,0($2)
	bne	$10,$2,$L17
	sw	$9,0($4)

	lw	$31,444($sp)
	lw	$fp,440($sp)
	lw	$23,436($sp)
	lw	$22,432($sp)
	lw	$21,428($sp)
	lw	$20,424($sp)
	lw	$19,420($sp)
	lw	$18,416($sp)
	lw	$17,412($sp)
	lw	$16,408($sp)
	jr	$31
	addiu	$sp,$sp,448

$L17:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	sha1_transform
	.size	sha1_transform, .-sha1_transform
	.align	2
	.globl	sha1_init
	.set	nomips16
	.set	nomicromips
	.ent	sha1_init
	.type	sha1_init, @function
sha1_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1732575232			# 0x67450000
	addiu	$2,$2,8961
	sw	$2,0($4)
	li	$2,-271777792			# 0xffffffffefcd0000
	ori	$2,$2,0xab89
	sw	$2,4($4)
	li	$2,-1732640768			# 0xffffffff98ba0000
	ori	$2,$2,0xdcfe
	sw	$2,8($4)
	li	$2,271712256			# 0x10320000
	addiu	$2,$2,21622
	sw	$2,12($4)
	li	$2,-1009647616			# 0xffffffffc3d20000
	ori	$2,$2,0xe1f0
	jr	$31
	sw	$2,16($4)

	.set	macro
	.set	reorder
	.end	sha1_init
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
