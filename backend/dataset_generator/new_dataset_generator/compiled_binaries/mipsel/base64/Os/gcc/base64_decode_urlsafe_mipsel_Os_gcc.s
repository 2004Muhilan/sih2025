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
	beq	$3,$0,$L2
	addiu	$3,$2,-97

	addiu	$4,$4,-65
$L8:
	jr	$31
	seb	$2,$4

$L2:
	sltu	$3,$3,26
	beq	$3,$0,$L4
	nop

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$4,$4,-71

$L4:
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,$L5
	li	$3,45			# 0x2d

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$4,$4,4

$L5:
	beq	$4,$3,$L9
	li	$2,62			# 0x3e

	li	$2,63			# 0x3f
	li	$3,-1			# 0xffffffffffffffff
	xori	$4,$4,0x5f
	movn	$2,$3,$4
$L9:
	jr	$31
	nop

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
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$6,$0
	move	$7,$4
	addu	$2,$4,$6
	lb	$4,0($2)
	bne	$4,$0,$L15
	nop

	jr	$31
	nop

$L15:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
$L12:
	.option	pic0
	jal	base64_url_char_value
	nop

	.option	pic2
	addu	$3,$5,$6
	addiu	$6,$6,1
	sb	$2,0($3)
	addu	$2,$7,$6
	lb	$4,0($2)
	bne	$4,$0,$L12
	lw	$31,28($sp)

	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
