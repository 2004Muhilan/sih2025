	.file	1 "xor_multi_key.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_multi_key
	.set	nomips16
	.set	nomicromips
	.ent	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
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
	sw	$7,28($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,4($fp)
	lw	$2,32($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,24($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$5,16($fp)
	lw	$2,4($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,4($fp)
	lw	$2,32($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,28($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$5,16($fp)
	lw	$2,4($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$3,4($fp)
	lw	$2,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L3
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_multi_key
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
