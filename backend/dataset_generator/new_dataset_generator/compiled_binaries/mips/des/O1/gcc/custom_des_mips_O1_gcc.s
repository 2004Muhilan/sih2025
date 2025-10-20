	.file	1 "custom_des.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,56			# 0x38
	move	$9,$0
	move	$2,$0
	li	$12,-8			# 0xfffffffffffffff8
$L2:
	lbu	$3,0($4)
	andi	$10,$7,0x20
	srl	$8,$3,1
	nor	$11,$0,$7
	srl	$8,$8,$11
	sll	$3,$3,$7
	movn	$8,$3,$10
	movn	$3,$0,$10
	or	$9,$9,$8
	or	$2,$2,$3
	addiu	$7,$7,-8
	bne	$7,$12,$L2
	addiu	$4,$4,1

	move	$3,$0
	li	$10,-2147483648			# 0xffffffff80000000
	addiu	$10,$10,7
	li	$12,-8			# 0xfffffffffffffff8
	.option	pic0
	b	$L4
	.option	pic2
	li	$11,16			# 0x10

$L3:
	addu	$2,$5,$2
	lbu	$7,0($2)
	move	$9,$8
	addiu	$3,$3,1
	beq	$3,$11,$L9
	xor	$2,$7,$4

$L4:
	xor	$4,$9,$2
	move	$8,$2
	and	$2,$3,$10
	bgez	$2,$L3
	nop

	addiu	$2,$2,-1
	or	$2,$2,$12
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$2,$2,1

$L9:
	li	$3,56			# 0x38
	sll	$10,$8,1
	li	$8,-8			# 0xfffffffffffffff8
$L5:
	andi	$7,$3,0x20
	nor	$5,$0,$3
	sll	$5,$10,$5
	srl	$4,$2,$3
	or	$4,$5,$4
	srl	$5,$9,$3
	movn	$4,$5,$7
	sb	$4,0($6)
	addiu	$3,$3,-8
	bne	$3,$8,$L5
	addiu	$6,$6,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
