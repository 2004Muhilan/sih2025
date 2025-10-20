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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$5,$5,-1
	beq	$5,$0,$L5
	move	$3,$4

	addu	$4,$4,$5
	move	$2,$0
$L3:
	lb	$6,0($3)
	lb	$7,0($4)
	sb	$7,0($3)
	sb	$6,0($4)
	addiu	$2,$2,1
	addiu	$3,$3,1
	subu	$6,$5,$2
	sltu	$6,$2,$6
	bne	$6,$0,$L3
	addiu	$4,$4,-1

$L5:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	string_reverse
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
