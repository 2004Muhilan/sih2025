	.file	1 "custom_base64.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	base64_encode
	.set	nomips16
	.set	nomicromips
	.ent	base64_encode
	.type	base64_encode, @function
base64_encode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L11
	lui	$7,%hi(b64)

	move	$3,$0
	.option	pic0
	b	$L4
	.option	pic2
	addiu	$7,$7,%lo(b64)

$L10:
	lbu	$10,0($10)
	sltu	$8,$11,$5
	addiu	$3,$3,3
	beq	$8,$0,$L7
	sll	$10,$10,8

	lbu	$8,0($12)
$L3:
	addu	$8,$8,$10
	sll	$2,$2,16
	addiu	$6,$6,4
	addu	$2,$2,$8
	sltu	$11,$3,$5
	srl	$10,$2,18
	ext	$9,$2,12,6
	ext	$8,$2,6,6
	andi	$2,$2,0x3f
	addu	$10,$7,$10
	addu	$9,$7,$9
	addu	$8,$7,$8
	addu	$2,$7,$2
	lbu	$10,0($10)
	lbu	$9,0($9)
	lbu	$8,0($8)
	lbu	$2,0($2)
	sb	$10,-4($6)
	sb	$9,-3($6)
	sb	$8,-2($6)
	beq	$11,$0,$L11
	sb	$2,-1($6)

$L4:
	addiu	$9,$3,1
	addu	$2,$4,$3
	addiu	$11,$3,2
	sltu	$8,$9,$5
	lbu	$2,0($2)
	addu	$10,$4,$9
	bne	$8,$0,$L10
	addu	$12,$4,$11

	move	$10,$0
	move	$8,$0
	.option	pic0
	b	$L3
	.option	pic2
	move	$3,$9

$L11:
	jr	$31
	nop

$L7:
	move	$8,$0
	.option	pic0
	b	$L3
	.option	pic2
	move	$3,$11

	.set	macro
	.set	reorder
	.end	base64_encode
	.size	base64_encode, .-base64_encode
	.align	2
	.globl	base64_decode
	.set	nomips16
	.set	nomicromips
	.ent	base64_decode
	.type	base64_decode, @function
base64_decode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$7,4			# 0x4
$L13:
	addu	$6,$4,$2
	addu	$3,$5,$2
	addiu	$2,$2,1
	lbu	$6,0($6)
	bne	$2,$7,$L13
	sb	$6,0($3)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_decode
	.size	base64_decode, .-base64_decode
	.rdata
	.align	2
	.type	b64, @object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123"
	.ascii	"456789+/\000"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
