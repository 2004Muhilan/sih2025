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
	li	$8,56			# 0x38
	move	$2,$0
	move	$3,$0
	li	$12,-8			# 0xfffffffffffffff8
$L2:
	lbu	$7,0($4)
	andi	$10,$8,0x20
	srl	$9,$7,1
	nor	$11,$0,$8
	srl	$9,$9,$11
	sll	$7,$7,$8
	movn	$9,$7,$10
	movn	$7,$0,$10
	or	$2,$2,$7
	or	$3,$3,$9
	addiu	$8,$8,-8
	bne	$8,$12,$L2
	addiu	$4,$4,1

	move	$4,$0
	li	$8,-2147483648			# 0xffffffff80000000
	addiu	$8,$8,7
	li	$10,-8			# 0xfffffffffffffff8
	.option	pic0
	b	$L4
	.option	pic2
	li	$9,16			# 0x10

$L3:
	addu	$2,$5,$2
	lbu	$2,0($2)
	addiu	$4,$4,1
	beq	$4,$9,$L9
	xor	$2,$2,$7

$L4:
	xor	$7,$3,$2
	move	$3,$2
	and	$2,$4,$8
	bgez	$2,$L3
	nop

	addiu	$2,$2,-1
	or	$2,$2,$10
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$2,$2,1

$L9:
	li	$4,56			# 0x38
	sll	$10,$3,1
	li	$9,-8			# 0xfffffffffffffff8
$L5:
	andi	$8,$4,0x20
	nor	$7,$0,$4
	sll	$7,$10,$7
	srl	$5,$2,$4
	or	$5,$7,$5
	srl	$7,$3,$4
	movn	$5,$7,$8
	sb	$5,0($6)
	addiu	$4,$4,-8
	bne	$4,$9,$L5
	addiu	$6,$6,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_encrypt
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
