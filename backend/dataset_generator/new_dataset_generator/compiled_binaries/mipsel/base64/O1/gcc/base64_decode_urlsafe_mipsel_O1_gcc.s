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
	andi	$3,$4,0x00ff
	addiu	$2,$3,-65
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	bne	$2,$0,$L8
	nop

	addiu	$2,$3,-97
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	bne	$2,$0,$L9
	addiu	$3,$3,-48

	andi	$3,$3,0x00ff
	sltu	$3,$3,10
	bne	$3,$0,$L10
	nop

	li	$2,45			# 0x2d
	beq	$4,$2,$L6
	xori	$3,$4,0x5f

	li	$4,63			# 0x3f
	li	$2,-1			# 0xffffffffffffffff
	jr	$31
	movz	$2,$4,$3

$L8:
	jr	$31
	addiu	$2,$4,-65

$L9:
	jr	$31
	addiu	$2,$4,-71

$L10:
	jr	$31
	addiu	$2,$4,4

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
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$16,$4
	lb	$4,0($4)
	beq	$4,$0,$L11
	move	$17,$5

	addiu	$16,$16,1
$L13:
	.option	pic0
	jal	base64_url_char_value
	nop

	.option	pic2
	sb	$2,0($17)
	lb	$4,0($16)
	addiu	$17,$17,1
	bne	$4,$0,$L13
	addiu	$16,$16,1

$L11:
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
