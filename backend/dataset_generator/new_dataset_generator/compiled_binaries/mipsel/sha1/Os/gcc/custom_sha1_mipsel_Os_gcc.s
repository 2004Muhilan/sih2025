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
	lw	$14,0($4)
	addiu	$sp,$sp,-384
	lw	$12,4($4)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$11,8($4)
	addiu	$8,$sp,28
	lw	$10,12($4)
	sw	$17,356($sp)
	addiu	$7,$5,64
	lw	$17,%got(__stack_chk_guard)($28)
	move	$3,$8
	lw	$9,16($4)
	sw	$31,380($sp)
	sw	$22,376($sp)
	sw	$21,372($sp)
	sw	$20,368($sp)
	sw	$19,364($sp)
	sw	$18,360($sp)
	sw	$16,352($sp)
	.cprestore	16
	lw	$2,0($17)
	sw	$2,348($sp)
$L2:
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
	bne	$7,$5,$L2
	sw	$2,-4($3)

	addiu	$5,$8,256
	move	$3,$8
$L3:
	lw	$6,32($3)
	addiu	$3,$3,4
	lw	$2,48($3)
	xor	$2,$2,$6
	lw	$6,4($3)
	xor	$2,$2,$6
	lw	$6,-4($3)
	xor	$2,$2,$6
	ror	$2,$2,31
	bne	$5,$3,$L3
	sw	$2,60($3)

	li	$16,1518469120			# 0x5a820000
	li	$15,-899547136			# 0xffffffffca620000
	li	$24,-1894055936			# 0xffffffff8f1b0000
	li	$25,1859715072			# 0x6ed90000
	move	$6,$0
	addiu	$16,$16,31129
	li	$19,80			# 0x50
	move	$18,$9
	move	$3,$10
	move	$5,$11
	move	$7,$12
	move	$13,$14
	ori	$15,$15,0xc1d6
	ori	$24,$24,0xbcdc
	ori	$25,$25,0xeba1
$L8:
	slt	$2,$6,20
	beq	$2,$0,$L4
	slt	$2,$6,40

	xor	$2,$5,$3
	and	$2,$2,$7
	xor	$2,$2,$3
	move	$21,$16
$L5:
	lw	$22,0($8)
	ror	$20,$13,27
	addiu	$6,$6,1
	addiu	$8,$8,4
	addu	$20,$20,$22
	addu	$2,$20,$2
	ror	$20,$7,2
	addu	$2,$2,$21
	move	$7,$13
	addu	$2,$2,$18
	bne	$6,$19,$L10
	move	$18,$3

	addu	$14,$14,$2
	addu	$9,$9,$3
	lw	$3,348($sp)
	lw	$2,0($17)
	addu	$12,$12,$13
	addu	$11,$11,$20
	sw	$14,0($4)
	addu	$10,$10,$5
	sw	$12,4($4)
	sw	$11,8($4)
	sw	$10,12($4)
	beq	$3,$2,$L9
	sw	$9,16($4)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L10:
	move	$3,$5
	move	$13,$2
	.option	pic0
	b	$L8
	.option	pic2
	move	$5,$20

$L4:
	beq	$2,$0,$L6
	xor	$2,$7,$5

	xor	$2,$2,$3
	.option	pic0
	b	$L5
	.option	pic2
	move	$21,$25

$L6:
	slt	$2,$6,60
	beq	$2,$0,$L7
	and	$20,$5,$3

	or	$2,$5,$3
	and	$2,$2,$7
	or	$2,$2,$20
	.option	pic0
	b	$L5
	.option	pic2
	move	$21,$24

$L7:
	xor	$2,$7,$5
	xor	$2,$2,$3
	.option	pic0
	b	$L5
	.option	pic2
	move	$21,$15

$L9:
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
