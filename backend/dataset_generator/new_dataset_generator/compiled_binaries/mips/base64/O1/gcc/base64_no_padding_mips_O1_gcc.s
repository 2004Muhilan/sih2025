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
	beq	$5,$0,$L8
	li	$8,2			# 0x2

	li	$3,1			# 0x1
	move	$10,$0
	lui	$11,%hi(b64)
	.option	pic0
	b	$L7
	.option	pic2
	addiu	$11,$11,%lo(b64)

$L3:
	sltu	$7,$8,$5
	beq	$7,$0,$L11
	addu	$12,$6,$10

	lbu	$7,2($9)
	or	$2,$2,$7
$L11:
	srl	$7,$2,18
	addu	$7,$7,$11
	lbu	$7,0($7)
	sb	$7,0($12)
	ext	$9,$2,12,6
	addu	$9,$9,$11
	lbu	$9,0($9)
	sb	$9,1($12)
	sltu	$9,$3,$5
	beq	$9,$0,$L5
	addiu	$7,$10,2

	addu	$7,$6,$7
	ext	$9,$2,6,6
	addu	$9,$9,$11
	lbu	$9,0($9)
	sb	$9,0($7)
	addiu	$7,$10,3
$L5:
	sltu	$9,$8,$5
	beq	$9,$0,$L9
	andi	$2,$2,0x3f

	addiu	$10,$7,1
	addu	$7,$6,$7
	addu	$2,$2,$11
	lbu	$2,0($2)
	sb	$2,0($7)
$L6:
	addiu	$4,$4,3
	addiu	$2,$3,3
	addiu	$3,$3,2
	sltu	$3,$3,$5
	beq	$3,$0,$L2
	addiu	$8,$8,3

	move	$3,$2
$L7:
	move	$9,$4
	lbu	$2,0($4)
	sltu	$7,$3,$5
	beq	$7,$0,$L3
	sll	$2,$2,16

	lbu	$7,1($4)
	sll	$7,$7,8
	.option	pic0
	b	$L3
	.option	pic2
	or	$2,$2,$7

$L9:
	.option	pic0
	b	$L6
	.option	pic2
	move	$10,$7

$L8:
	move	$10,$5
$L2:
	addu	$6,$6,$10
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
