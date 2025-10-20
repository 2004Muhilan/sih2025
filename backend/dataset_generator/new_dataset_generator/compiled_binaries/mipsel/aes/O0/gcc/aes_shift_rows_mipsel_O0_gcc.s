	.file	1 "aes_shift_rows.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_shift_rows
	.set	nomips16
	.set	nomicromips
	.ent	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	lw	$2,16($fp)
	lbu	$2,1($2)
	sb	$2,7($fp)
	lw	$2,16($fp)
	addiu	$2,$2,1
	lw	$3,16($fp)
	lbu	$3,5($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,5
	lw	$3,16($fp)
	lbu	$3,9($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,9
	lw	$3,16($fp)
	lbu	$3,13($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,13
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,2($2)
	sb	$2,7($fp)
	lw	$2,16($fp)
	addiu	$2,$2,2
	lw	$3,16($fp)
	lbu	$3,10($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,10
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,6($2)
	sb	$2,7($fp)
	lw	$2,16($fp)
	addiu	$2,$2,6
	lw	$3,16($fp)
	lbu	$3,14($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,14
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,15($2)
	sb	$2,7($fp)
	lw	$2,16($fp)
	addiu	$2,$2,15
	lw	$3,16($fp)
	lbu	$3,11($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,11
	lw	$3,16($fp)
	lbu	$3,7($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,7
	lw	$3,16($fp)
	lbu	$3,3($3)
	sb	$3,0($2)
	lw	$2,16($fp)
	addiu	$2,$2,3
	lbu	$3,7($fp)
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	aes_shift_rows
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
