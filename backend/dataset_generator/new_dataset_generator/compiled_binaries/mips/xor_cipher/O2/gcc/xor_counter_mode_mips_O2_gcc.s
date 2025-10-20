	.file	1 "xor_counter_mode.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_counter_mode
	.set	nomips16
	.set	nomicromips
	.ent	xor_counter_mode
	.type	xor_counter_mode, @function
xor_counter_mode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L7
	lw	$10,20($sp)

	move	$2,$0
	andi	$10,$10,0x00ff
$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	lbu	$9,0($4)
	addu	$3,$10,$2
	addiu	$4,$4,1
	xor	$3,$3,$9
	addiu	$2,$2,1
	mfhi	$8
	addu	$8,$6,$8
	lbu	$8,0($8)
	xor	$3,$3,$8
	bne	$5,$2,$L3
	sb	$3,-1($4)

$L7:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_counter_mode
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
