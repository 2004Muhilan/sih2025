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
	beq	$6,$0,$L17
	move	$2,$0

	addu	$3,$4,$2
$L19:
	lb	$3,0($3)
	beq	$3,$0,$L18
	addiu	$8,$6,-1

	addiu	$2,$2,1
	bne	$6,$2,$L19
	addu	$3,$4,$2

	move	$2,$6
	addiu	$8,$6,-1
$L18:
	sltu	$3,$2,$8
	beq	$3,$0,$L5
	move	$6,$2

$L8:
	subu	$3,$2,$6
$L20:
	addu	$3,$5,$3
	lb	$3,0($3)
	beq	$3,$0,$L5
	addu	$7,$4,$2

	sb	$3,0($7)
	addiu	$2,$2,1
	sltu	$3,$2,$8
	bne	$3,$0,$L20
	subu	$3,$2,$6

$L5:
	addu	$4,$4,$2
	jr	$31
	sb	$0,0($4)

$L17:
	addiu	$8,$6,-1
	.option	pic0
	b	$L8
	.option	pic2
	move	$2,$6

	.set	macro
	.set	reorder
	.end	string_concat
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
