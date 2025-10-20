	.file	1 "string_concat.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	string_concat
	.set	nomips16
	.set	nomicromips
	.ent	string_concat
	.type	string_concat, @function
string_concat:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
$L2:
	beq	$2,$6,$L8
	addu	$3,$4,$2

	lb	$3,0($3)
	bne	$3,$0,$L4
	nop

$L8:
	addiu	$6,$6,-1
	move	$3,$2
$L5:
	sltu	$7,$3,$6
	beq	$7,$0,$L6
	addu	$8,$4,$3

	subu	$7,$3,$2
	addu	$7,$5,$7
	lb	$7,0($7)
	bne	$7,$0,$L7
	addiu	$3,$3,1

$L6:
	jr	$31
	sb	$0,0($8)

$L4:
	.option	pic0
	b	$L2
	.option	pic2
	addiu	$2,$2,1

$L7:
	.option	pic0
	b	$L5
	.option	pic2
	sb	$7,0($8)

	.set	macro
	.set	reorder
	.end	string_concat
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
