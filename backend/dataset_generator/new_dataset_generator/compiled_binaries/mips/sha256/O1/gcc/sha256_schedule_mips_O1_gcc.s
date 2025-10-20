	.file	1 "sha256_schedule.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_message_schedule
	.set	nomips16
	.set	nomicromips
	.ent	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$4
	move	$3,$5
	addiu	$7,$4,64
	move	$4,$5
$L2:
	lw	$6,0($2)
	sw	$6,0($4)
	addiu	$2,$2,4
	bne	$2,$7,$L2
	addiu	$4,$4,4

	addiu	$7,$5,192
$L3:
	lw	$4,4($3)
	lw	$5,56($3)
	ror	$2,$4,7
	ror	$6,$4,18
	xor	$2,$2,$6
	srl	$4,$4,3
	xor	$2,$2,$4
	lw	$4,0($3)
	lw	$6,36($3)
	addu	$4,$4,$6
	addu	$2,$2,$4
	ror	$4,$5,17
	ror	$6,$5,19
	xor	$4,$4,$6
	srl	$5,$5,10
	xor	$4,$4,$5
	addu	$2,$2,$4
	sw	$2,64($3)
	addiu	$3,$3,4
	bne	$3,$7,$L3
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_message_schedule
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
