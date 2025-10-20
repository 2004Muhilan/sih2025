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
	lui	$8,%hi(b64)
	move	$7,$0
	addiu	$8,$8,%lo(b64)
$L2:
	sltu	$2,$7,$5
	bne	$2,$0,$L4
	addiu	$3,$7,1

	jr	$31
	nop

$L4:
	addu	$2,$4,$7
	sltu	$9,$3,$5
	beq	$9,$0,$L5
	lbu	$2,0($2)

	addu	$3,$4,$3
	addiu	$9,$7,2
	lbu	$10,0($3)
	sltu	$3,$9,$5
	beq	$3,$0,$L8
	move	$3,$9

	addu	$9,$4,$9
	addiu	$3,$7,3
	lbu	$7,0($9)
$L3:
	sll	$2,$2,16
	sll	$10,$10,8
	addu	$2,$2,$7
	addiu	$6,$6,4
	addu	$2,$2,$10
	srl	$7,$2,18
	addu	$7,$7,$8
	lbu	$7,0($7)
	sb	$7,-4($6)
	ext	$7,$2,12,6
	addu	$7,$7,$8
	lbu	$7,0($7)
	sb	$7,-3($6)
	ext	$7,$2,6,6
	andi	$2,$2,0x3f
	addu	$7,$7,$8
	addu	$2,$2,$8
	lbu	$7,0($7)
	lbu	$2,0($2)
	sb	$7,-2($6)
	move	$7,$3
	.option	pic0
	b	$L2
	.option	pic2
	sb	$2,-1($6)

$L5:
	move	$10,$0
$L7:
$L8:
	.option	pic0
	b	$L3
	.option	pic2
	move	$7,$0

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
	li	$3,4			# 0x4
$L12:
	addu	$7,$4,$2
	addu	$6,$5,$2
	addiu	$2,$2,1
	lbu	$7,0($7)
	bne	$2,$3,$L12
	sb	$7,0($6)

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
