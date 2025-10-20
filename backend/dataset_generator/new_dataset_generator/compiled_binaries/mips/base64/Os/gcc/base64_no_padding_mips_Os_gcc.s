	.file	1 "base64_no_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	base64_encode_no_padding
	.set	nomips16
	.set	nomicromips
	.ent	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(b64)
	li	$8,2			# 0x2
	move	$9,$0
	addiu	$7,$7,%lo(b64)
$L2:
	addiu	$2,$8,-2
	sltu	$2,$2,$5
	bne	$2,$0,$L7
	addu	$11,$6,$9

	jr	$31
	sb	$0,0($11)

$L7:
	lbu	$2,0($4)
	addiu	$10,$8,-1
	sltu	$10,$10,$5
	beq	$10,$0,$L3
	sll	$2,$2,16

	lbu	$3,1($4)
	sll	$3,$3,8
	or	$2,$2,$3
$L3:
	sltu	$13,$8,$5
	beq	$13,$0,$L12
	srl	$3,$2,18

	lbu	$3,2($4)
	or	$2,$2,$3
	srl	$3,$2,18
$L12:
	ext	$12,$2,12,6
	addu	$3,$3,$7
	addu	$12,$12,$7
	lbu	$3,0($3)
	lbu	$12,0($12)
	sb	$3,0($11)
	addiu	$3,$9,2
	beq	$10,$0,$L5
	sb	$12,1($11)

	ext	$10,$2,6,6
	addu	$3,$6,$3
	addu	$10,$10,$7
	lbu	$10,0($10)
	sb	$10,0($3)
	addiu	$3,$9,3
$L5:
	beq	$13,$0,$L6
	andi	$2,$2,0x3f

	addu	$2,$7,$2
	addu	$9,$6,$3
	addiu	$3,$3,1
	lbu	$2,0($2)
	sb	$2,0($9)
$L6:
	addiu	$8,$8,3
	addiu	$4,$4,3
	.option	pic0
	b	$L2
	.option	pic2
	move	$9,$3

	.set	macro
	.set	reorder
	.end	base64_encode_no_padding
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.rdata
	.align	2
	.type	b64, @object
	.size	b64, 65
b64:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123"
	.ascii	"456789+/\000"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
