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
	beq	$5,$0,$L5
	lbu	$8,16($sp)

	move	$2,$0
$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	mfhi	$3
	addu	$3,$6,$3
	lbu	$3,0($3)
	xor	$8,$8,$3
	lbu	$3,0($4)
	xor	$3,$8,$3
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$5,$2,$L3
	addiu	$4,$4,1

$L5:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_ofb_mode
	.size	xor_ofb_mode, .-xor_ofb_mode
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
