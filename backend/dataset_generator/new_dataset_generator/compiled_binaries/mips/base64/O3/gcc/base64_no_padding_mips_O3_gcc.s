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
	beq	$5,$0,$L2
	lui	$10,%hi(b64)

	li	$11,2			# 0x2
	li	$8,1			# 0x1
	move	$9,$0
	.option	pic0
	b	$L7
	.option	pic2
	addiu	$10,$10,%lo(b64)

$L17:
	ext	$3,$2,6,6
	addu	$7,$6,$7
	addu	$3,$10,$3
	addiu	$9,$9,3
	lbu	$3,0($3)
	sb	$3,0($7)
$L5:
	beq	$12,$0,$L6
	andi	$2,$2,0x3f

	addu	$2,$10,$2
	addu	$3,$6,$9
	addiu	$9,$9,1
	lbu	$2,0($2)
	sb	$2,0($3)
$L6:
	addiu	$2,$8,2
	addiu	$4,$4,3
	sltu	$2,$2,$5
	addiu	$8,$8,3
	beq	$2,$0,$L16
	addiu	$11,$11,3

$L7:
	lbu	$2,0($4)
	sltu	$13,$8,$5
	beq	$13,$0,$L3
	sll	$2,$2,16

	lbu	$3,1($4)
	sll	$3,$3,8
	or	$2,$2,$3
$L3:
	sltu	$12,$11,$5
	beq	$12,$0,$L18
	srl	$7,$2,18

	lbu	$3,2($4)
	or	$2,$2,$3
	srl	$7,$2,18
$L18:
	ext	$3,$2,12,6
	addu	$7,$10,$7
	addu	$3,$10,$3
	addu	$14,$6,$9
	lbu	$15,0($7)
	addiu	$7,$9,2
	lbu	$3,0($3)
	sb	$15,0($14)
	bne	$13,$0,$L17
	sb	$3,1($14)

	.option	pic0
	b	$L5
	.option	pic2
	move	$9,$7

$L16:
	addu	$6,$6,$9
$L2:
	jr	$31
	sb	$0,0($6)

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
