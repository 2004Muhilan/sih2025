	.file	1 "rc4_prga.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_prga
	.set	nomips16
	.set	nomicromips
	.ent	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	lw	$2,20($fp)
	lbu	$2,0($2)
	addiu	$3,$2,1
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xff
	and	$2,$3,$2
	bgez	$2,$L2
	nop

	addiu	$2,$2,-1
	li	$3,-256			# 0xffffffffffffff00
	or	$2,$2,$3
	addiu	$2,$2,1
$L2:
	andi	$3,$2,0x00ff
	lw	$2,20($fp)
	sb	$3,0($2)
	lw	$2,24($fp)
	lbu	$3,0($2)
	lw	$2,20($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$4
	lbu	$2,0($2)
	addu	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,24($fp)
	sb	$3,0($2)
	lw	$2,20($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,7($fp)
	lw	$2,24($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$3,$2,$3
	lw	$2,20($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$4
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,24($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,20($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$2,24($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$4
	lbu	$2,0($2)
	addu	$2,$3,$2
	andi	$2,$2,0x00ff
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_prga
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
