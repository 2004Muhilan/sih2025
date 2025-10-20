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
	.frame	$sp,384,$31		# vars= 328, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	lw	$25,12($4)
	addiu	$sp,$sp,-384
	lw	$24,16($4)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$7,$sp,28
	sw	$17,356($sp)
	addiu	$10,$sp,92
	lw	$17,%got(__stack_chk_guard)($28)
	move	$3,$7
	sw	$19,364($sp)
	sw	$18,360($sp)
	sw	$16,352($sp)
	sw	$31,380($sp)
	sw	$22,376($sp)
	sw	$21,372($sp)
	sw	$20,368($sp)
	.cprestore	16
	lw	$2,0($17)
	lw	$18,0($4)
	lw	$19,4($4)
	lw	$16,8($4)
	sw	$2,348($sp)
$L2:
	lbu	$2,0($5)
	addiu	$5,$5,4
	lbu	$8,-3($5)
	addiu	$3,$3,4
	sll	$2,$2,24
	sll	$8,$8,16
	lbu	$6,-2($5)
	lbu	$9,-1($5)
	or	$2,$2,$8
	sll	$6,$6,8
	or	$2,$2,$9
	or	$2,$2,$6
	bne	$10,$3,$L2
	sw	$2,-4($3)

	lw	$13,80($sp)
	addiu	$20,$7,256
	lw	$12,84($sp)
	move	$3,$7
	lw	$2,88($sp)
	lw	$11,36($sp)
	lw	$10,40($sp)
	lw	$9,44($sp)
	lw	$8,48($sp)
	lw	$6,52($sp)
	.option	pic0
	b	$L3
	.option	pic2
	lw	$15,56($sp)

$L12:
	move	$15,$5
$L3:
	lw	$5,32($3)
	move	$14,$2
	lw	$2,0($3)
	addiu	$3,$3,4
	xor	$2,$5,$2
	xor	$2,$2,$13
	xor	$2,$2,$11
	ror	$2,$2,31
	move	$13,$12
	move	$11,$10
	sw	$2,60($3)
	move	$10,$9
	move	$12,$14
	move	$9,$8
	move	$8,$6
	bne	$20,$3,$L12
	move	$6,$15

	li	$13,1518469120			# 0x5a820000
	li	$14,-899547136			# 0xffffffffca620000
	li	$12,-1894055936			# 0xffffffff8f1b0000
	li	$11,1859715072			# 0x6ed90000
	move	$3,$0
	li	$15,80			# 0x50
	addiu	$13,$13,31129
	move	$10,$24
	move	$5,$25
	move	$6,$16
	move	$20,$19
	move	$8,$18
	ori	$14,$14,0xc1d6
	ori	$12,$12,0xbcdc
	.option	pic0
	b	$L9
	.option	pic2
	ori	$11,$11,0xeba1

$L18:
	xor	$21,$21,$20
	move	$22,$11
$L5:
	ror	$9,$20,2
	lw	$20,0($7)
	ror	$2,$8,27
	addiu	$3,$3,1
	addu	$2,$2,$20
	addiu	$7,$7,4
	addu	$2,$2,$22
	addu	$2,$2,$21
	addu	$2,$2,$10
$L10:
	move	$10,$5
	move	$20,$8
	move	$5,$6
	move	$8,$2
	move	$6,$9
$L9:
	slt	$2,$3,20
	bne	$2,$0,$L17
	slt	$2,$3,40

	bne	$2,$0,$L18
	xor	$21,$5,$6

	slt	$2,$3,60
	beq	$2,$0,$L7
	or	$21,$5,$6

	and	$21,$21,$20
	and	$2,$5,$6
	or	$21,$21,$2
	.option	pic0
	b	$L5
	.option	pic2
	move	$22,$12

$L17:
	xor	$21,$5,$6
	and	$21,$21,$20
	xor	$21,$21,$5
	.option	pic0
	b	$L5
	.option	pic2
	move	$22,$13

$L7:
	lw	$9,0($7)
	ror	$2,$8,27
	xor	$21,$5,$6
	xor	$21,$21,$20
	addu	$2,$2,$9
	addiu	$3,$3,1
	addu	$2,$2,$14
	ror	$9,$20,2
	addu	$2,$2,$21
	addiu	$7,$7,4
	bne	$3,$15,$L10
	addu	$2,$2,$10

	addu	$18,$18,$2
	lw	$3,348($sp)
	lw	$2,0($17)
	addu	$19,$19,$8
	addu	$16,$16,$9
	sw	$18,0($4)
	addu	$25,$25,$6
	sw	$19,4($4)
	addu	$24,$24,$5
	sw	$16,8($4)
	sw	$25,12($4)
	bne	$3,$2,$L19
	sw	$24,16($4)

	lw	$31,380($sp)
	lw	$22,376($sp)
	lw	$21,372($sp)
	lw	$20,368($sp)
	lw	$19,364($sp)
	lw	$18,360($sp)
	lw	$17,356($sp)
	lw	$16,352($sp)
	jr	$31
	addiu	$sp,$sp,384

$L19:
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
