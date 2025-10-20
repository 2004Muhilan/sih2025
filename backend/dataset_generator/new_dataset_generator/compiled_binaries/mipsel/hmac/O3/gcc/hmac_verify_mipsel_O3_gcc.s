	.file	1 "hmac_verify.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	hmac_verify
	.set	nomips16
	.set	nomicromips
	.ent	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L8
	nop

	addiu	$2,$6,-1
	sltu	$2,$2,8
	bne	$2,$0,$L3
	or	$2,$4,$5

	andi	$2,$2,0x3
	beq	$2,$0,$L15
	srl	$9,$6,2

$L3:
	addu	$6,$4,$6
	move	$3,$0
$L6:
	lbu	$2,0($5)
	addiu	$4,$4,1
	lbu	$7,-1($4)
	addiu	$5,$5,1
	xor	$2,$2,$7
	or	$2,$3,$2
	bne	$4,$6,$L6
	andi	$3,$2,0x00ff

$L7:
	jr	$31
	sltu	$2,$3,1

$L15:
	move	$7,$0
	sll	$9,$9,2
	move	$2,$4
	addu	$9,$9,$4
	move	$8,$5
$L4:
	lw	$3,0($8)
	addiu	$2,$2,4
	lw	$10,-4($2)
	addiu	$8,$8,4
	xor	$3,$3,$10
	bne	$2,$9,$L4
	or	$7,$3,$7

	ext	$3,$7,8,8
	ext	$8,$7,16,8
	ext	$2,$7,24,8
	or	$3,$7,$3
	or	$3,$3,$8
	or	$3,$3,$2
	li	$2,-4			# 0xfffffffffffffffc
	andi	$7,$6,0x3
	andi	$3,$3,0x00ff
	beq	$7,$0,$L7
	and	$2,$6,$2

	addu	$9,$5,$2
	addu	$7,$4,$2
	addiu	$8,$2,1
	lbu	$10,0($9)
	lbu	$7,0($7)
	sltu	$9,$8,$6
	xor	$7,$7,$10
	or	$3,$3,$7
	beq	$9,$0,$L7
	andi	$3,$3,0x00ff

	addu	$7,$4,$8
	addu	$8,$5,$8
	addiu	$2,$2,2
	lbu	$7,0($7)
	lbu	$8,0($8)
	sltu	$6,$2,$6
	xor	$7,$7,$8
	or	$3,$3,$7
	beq	$6,$0,$L7
	andi	$3,$3,0x00ff

	addu	$4,$4,$2
	addu	$2,$5,$2
	lbu	$4,0($4)
	lbu	$2,0($2)
	xor	$2,$4,$2
	or	$2,$3,$2
	andi	$3,$2,0x00ff
	jr	$31
	sltu	$2,$3,1

$L8:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	hmac_verify
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
