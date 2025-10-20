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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$11,1($4)
	lbu	$14,5($4)
	lbu	$13,9($4)
	lbu	$12,13($4)
	lbu	$9,2($4)
	lbu	$10,10($4)
	lbu	$7,6($4)
	lbu	$8,14($4)
	lbu	$2,15($4)
	lbu	$6,11($4)
	lbu	$5,7($4)
	lbu	$3,3($4)
	sb	$14,1($4)
	sb	$13,5($4)
	sb	$12,9($4)
	sb	$11,13($4)
	sb	$10,2($4)
	sb	$9,10($4)
	sb	$8,6($4)
	sb	$7,14($4)
	sb	$6,15($4)
	sb	$5,11($4)
	sb	$3,7($4)
	jr	$31
	sb	$2,3($4)

	.set	macro
	.set	reorder
	.end	aes_shift_rows
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
