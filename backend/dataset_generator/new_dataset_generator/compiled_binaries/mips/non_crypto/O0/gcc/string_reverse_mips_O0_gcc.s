	.file	1 "string_reverse.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	string_reverse
	.set	nomips16
	.set	nomicromips
	.ent	string_reverse
	.type	string_reverse, @function
string_reverse:
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
	sw	$0,8($fp)
	lw	$2,28($fp)
	addiu	$2,$2,-1
	sw	$2,12($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$3,24($fp)
	lw	$2,8($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,7($fp)
	lw	$3,24($fp)
	lw	$2,12($fp)
	addu	$3,$3,$2
	lw	$4,24($fp)
	lw	$2,8($fp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$3,24($fp)
	lw	$2,12($fp)
	addu	$2,$3,$2
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,-1
	sw	$2,12($fp)
$L2:
	lw	$3,8($fp)
	lw	$2,12($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L3
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
	.end	string_reverse
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
