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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($5)
	addiu	$2,$2,1
	andi	$3,$2,0xff
	sb	$2,0($5)
	addu	$2,$4,$3
	lbu	$3,0($6)
	lbu	$2,0($2)
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	sb	$2,0($6)
	addu	$2,$4,$2
	lbu	$3,0($5)
	lbu	$7,0($2)
	addu	$2,$4,$3
	lbu	$3,0($2)
	sb	$7,0($2)
	lbu	$2,0($6)
	addu	$2,$4,$2
	sb	$3,0($2)
	lbu	$2,0($5)
	lbu	$3,0($6)
	addu	$2,$4,$2
	addu	$3,$4,$3
	lbu	$2,0($2)
	lbu	$3,0($3)
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	addu	$4,$4,$2
	jr	$31
	lbu	$2,0($4)

	.set	macro
	.set	reorder
	.end	rc4_prga
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
