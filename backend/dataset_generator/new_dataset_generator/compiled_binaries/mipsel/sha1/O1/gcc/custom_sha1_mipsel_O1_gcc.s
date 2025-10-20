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
	.frame	$sp,384,$31		# vars= 328, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-384
	sw	$31,380($sp)
	sw	$21,376($sp)
	sw	$20,372($sp)
	sw	$19,368($sp)
	sw	$18,364($sp)
	sw	$17,360($sp)
	sw	$16,356($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,348($sp)
	lw	$18,0($4)
	lw	$17,4($4)
	lw	$16,8($4)
	lw	$25,12($4)
	lw	$24,16($4)
	addiu	$8,$sp,28
	addiu	$7,$sp,92
	move	$3,$8
$L2:
	lbu	$2,0($5)
	sll	$2,$2,24
	lbu	$6,1($5)
	sll	$6,$6,16
	or	$2,$2,$6
	lbu	$6,3($5)
	or	$2,$2,$6
	lbu	$6,2($5)
	sll	$6,$6,8
	or	$2,$2,$6
	sw	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$7,$L2
	addiu	$5,$5,4

	addiu	$6,$8,256
	move	$3,$8
$L3:
	lw	$2,52($3)
	lw	$5,32($3)
	xor	$2,$2,$5
	lw	$5,8($3)
	xor	$2,$2,$5
	lw	$5,0($3)
	xor	$2,$2,$5
	ror	$2,$2,31
	sw	$2,64($3)
	addiu	$3,$3,4
	bne	$3,$6,$L3
	move	$10,$24

	move	$6,$25
	move	$7,$16
	move	$3,$17
	move	$9,$18
	move	$5,$0
	li	$14,-899547136			# 0xffffffffca620000
	ori	$14,$14,0xc1d6
	li	$15,80			# 0x50
	li	$12,-1894055936			# 0xffffffff8f1b0000
	ori	$12,$12,0xbcdc
	li	$11,1859715072			# 0x6ed90000
	ori	$11,$11,0xeba1
	li	$13,1518469120			# 0x5a820000
	.option	pic0
	b	$L9
	.option	pic2
	addiu	$13,$13,31129

$L16:
	xor	$19,$7,$6
	and	$19,$19,$3
	xor	$19,$19,$6
	.option	pic0
	b	$L5
	.option	pic2
	move	$20,$13

$L6:
	beq	$2,$0,$L7
	or	$19,$7,$6

	and	$19,$19,$3
	and	$2,$7,$6
	or	$19,$19,$2
	move	$20,$12
$L5:
	ror	$2,$9,27
	lw	$21,0($8)
	addu	$2,$2,$21
	addu	$2,$2,$19
	addu	$2,$2,$20
	addu	$2,$2,$10
	ror	$3,$3,2
	addiu	$5,$5,1
	addiu	$8,$8,4
$L10:
	move	$10,$6
	move	$6,$7
	move	$7,$3
	move	$3,$9
	move	$9,$2
$L9:
	slt	$2,$5,20
	bne	$2,$0,$L16
	slt	$2,$5,40

	beq	$2,$0,$L6
	slt	$2,$5,60

	xor	$19,$3,$7
	xor	$19,$19,$6
	.option	pic0
	b	$L5
	.option	pic2
	move	$20,$11

$L7:
	ror	$2,$9,27
	lw	$19,0($8)
	addu	$2,$2,$19
	xor	$19,$3,$7
	xor	$19,$19,$6
	addu	$2,$2,$19
	addu	$2,$2,$14
	addu	$2,$2,$10
	ror	$3,$3,2
	addiu	$5,$5,1
	bne	$5,$15,$L10
	addiu	$8,$8,4

	addu	$18,$18,$2
	sw	$18,0($4)
	addu	$17,$17,$9
	sw	$17,4($4)
	addu	$16,$16,$3
	sw	$16,8($4)
	addu	$25,$25,$7
	sw	$25,12($4)
	addu	$24,$24,$6
	sw	$24,16($4)
	lw	$3,348($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L17
	lw	$31,380($sp)

	lw	$21,376($sp)
	lw	$20,372($sp)
	lw	$19,368($sp)
	lw	$18,364($sp)
	lw	$17,360($sp)
	lw	$16,356($sp)
	jr	$31
	addiu	$sp,$sp,384

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
