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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,8($fp)
	lb	$2,8($fp)
	slt	$2,$2,65
	bne	$2,$0,$L2
	nop

	lb	$2,8($fp)
	slt	$2,$2,91
	beq	$2,$0,$L2
	nop

	lb	$2,8($fp)
	addiu	$2,$2,-65
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	lb	$2,8($fp)
	slt	$2,$2,97
	bne	$2,$0,$L4
	nop

	lb	$2,8($fp)
	slt	$2,$2,123
	beq	$2,$0,$L4
	nop

	lb	$2,8($fp)
	addiu	$2,$2,-71
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lb	$2,8($fp)
	slt	$2,$2,48
	bne	$2,$0,$L5
	nop

	lb	$2,8($fp)
	slt	$2,$2,58
	beq	$2,$0,$L5
	nop

	lb	$2,8($fp)
	addiu	$2,$2,4
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L5:
	lb	$3,8($fp)
	li	$2,45			# 0x2d
	bne	$3,$2,$L6
	nop

	li	$2,62			# 0x3e
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L6:
	lb	$3,8($fp)
	li	$2,95			# 0x5f
	bne	$3,$2,$L7
	nop

	li	$2,63			# 0x3f
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L7:
	li	$2,-1			# 0xffffffffffffffff
$L3:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
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
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$0,28($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L10:
	lw	$3,40($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	move	$4,$2
	.option	pic0
	jal	base64_url_char_value
	nop

	.option	pic2
	move	$4,$2
	lw	$3,44($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	andi	$3,$4,0x00ff
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L9:
	lw	$3,40($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L10
	nop

	nop
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
