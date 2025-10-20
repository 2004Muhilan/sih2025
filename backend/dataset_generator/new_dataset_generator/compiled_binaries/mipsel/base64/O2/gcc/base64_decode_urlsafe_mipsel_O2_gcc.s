	.file	1 "base64_decode_urlsafe.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	base64_url_char_value
	.set	nomips16
	.set	nomicromips
	.ent	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$2,$4,0x00ff
	addiu	$3,$2,-65
	sltu	$3,$3,26
	bne	$3,$0,$L9
	addiu	$3,$2,-97

	sltu	$3,$3,26
	bne	$3,$0,$L10
	nop

	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,$L11
	nop

	li	$2,45			# 0x2d
	beq	$4,$2,$L6
	li	$3,-1			# 0xffffffffffffffff

	li	$2,63			# 0x3f
	xori	$4,$4,0x5f
	jr	$31
	movn	$2,$3,$4

$L10:
	addiu	$4,$4,-71
	jr	$31
	seb	$2,$4

$L9:
	addiu	$4,$4,-65
	jr	$31
	seb	$2,$4

$L11:
	addiu	$4,$4,4
	jr	$31
	seb	$2,$4

$L6:
	jr	$31
	li	$2,62			# 0x3e

	.set	macro
	.set	reorder
	.end	base64_url_char_value
	.size	base64_url_char_value, .-base64_url_char_value
	.align	2
	.globl	base64_decode_urlsafe
	.set	nomips16
	.set	nomicromips
	.ent	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lb	$2,0($4)
	beq	$2,$0,$L26
	addiu	$4,$4,1

	li	$8,45			# 0x2d
	li	$10,63			# 0x3f
	.option	pic0
	b	$L18
	.option	pic2
	li	$9,255			# 0xff

$L14:
	bne	$7,$0,$L23
	sltu	$3,$3,10

	bne	$3,$0,$L24
	xori	$6,$2,0x5f

	beq	$2,$8,$L15
	li	$2,62			# 0x3e

	move	$2,$9
	movz	$2,$10,$6
$L15:
	addiu	$4,$4,1
	sb	$2,0($5)
	lb	$2,-1($4)
	beq	$2,$0,$L26
	addiu	$5,$5,1

$L18:
	andi	$3,$2,0x00ff
$L25:
	addiu	$6,$3,-65
	addiu	$7,$3,-97
	sltu	$6,$6,26
	addiu	$3,$3,-48
	beq	$6,$0,$L14
	sltu	$7,$7,26

	addiu	$2,$2,-65
	addiu	$5,$5,1
	addiu	$4,$4,1
	andi	$2,$2,0x00ff
	sb	$2,-1($5)
	lb	$2,-1($4)
	bne	$2,$0,$L25
	andi	$3,$2,0x00ff

$L26:
	jr	$31
	nop

$L23:
	addiu	$2,$2,-71
	.option	pic0
	b	$L15
	.option	pic2
	andi	$2,$2,0x00ff

$L24:
	addiu	$2,$2,4
	.option	pic0
	b	$L15
	.option	pic2
	andi	$2,$2,0x00ff

	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
