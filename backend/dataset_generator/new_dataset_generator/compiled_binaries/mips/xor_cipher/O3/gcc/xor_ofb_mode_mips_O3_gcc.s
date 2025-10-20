	.file	1 "xor_ofb_mode.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_ofb_mode
	.set	nomips16
	.set	nomicromips
	.ent	xor_ofb_mode
	.type	xor_ofb_mode, @function
xor_ofb_mode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L9
	lbu	$9,19($sp)

	move	$2,$0
$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	lbu	$3,0($4)
	addiu	$4,$4,1
	addiu	$2,$2,1
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$9,$9,$8
	xor	$3,$9,$3
	bne	$5,$2,$L3
	sb	$3,-1($4)

$L9:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_ofb_mode
	.size	xor_ofb_mode, .-xor_ofb_mode
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
