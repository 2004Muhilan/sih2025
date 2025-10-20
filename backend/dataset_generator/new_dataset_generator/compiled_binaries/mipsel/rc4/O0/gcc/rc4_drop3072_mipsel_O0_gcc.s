	.file	1 "rc4_drop3072.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_drop3072_init
	.set	nomips16
	.set	nomicromips
	.ent	rc4_drop3072_init
	.type	rc4_drop3072_init, @function
rc4_drop3072_init:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,4($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,4($fp)
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,256
	bne	$2,$0,$L3
	nop

	sb	$0,1($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L6:
	lbu	$2,1($fp)
	lw	$3,8($fp)
	lw	$4,24($fp)
	addu	$3,$4,$3
	lbu	$3,0($3)
	addu	$2,$2,$3
	lw	$4,8($fp)
	lw	$3,32($fp)
	teq	$3,$0,7
	divu	$0,$4,$3
	mfhi	$3
	move	$4,$3
	lw	$3,28($fp)
	addu	$3,$3,$4
	lbu	$3,0($3)
	addu	$3,$2,$3
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xff
	and	$2,$3,$2
	bgez	$2,$L5
	nop

	addiu	$2,$2,-1
	li	$3,-256			# 0xffffffffffffff00
	or	$2,$2,$3
	addiu	$2,$2,1
$L5:
	sb	$2,1($fp)
	lw	$2,8($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,3($fp)
	lbu	$2,1($fp)
	lw	$3,24($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	lw	$4,24($fp)
	addu	$2,$4,$2
	lbu	$3,0($3)
	sb	$3,0($2)
	lbu	$2,1($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$3,3($fp)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L4:
	lw	$2,8($fp)
	slt	$2,$2,256
	bne	$2,$0,$L6
	nop

	sw	$0,12($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L9:
	lw	$3,12($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xff
	and	$2,$3,$2
	bgez	$2,$L8
	nop

	addiu	$2,$2,-1
	li	$3,-256			# 0xffffffffffffff00
	or	$2,$2,$3
	addiu	$2,$2,1
$L8:
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,2($fp)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L7:
	lw	$2,12($fp)
	slt	$2,$2,3072
	bne	$2,$0,$L9
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_drop3072_init
	.size	rc4_drop3072_init, .-rc4_drop3072_init
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
