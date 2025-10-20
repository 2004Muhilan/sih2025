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
	bne	$6,$0,$L4
	move	$7,$4

	.option	pic0
	b	$L15
	.option	pic2
	addu	$9,$4,$2

$L6:
	addiu	$2,$2,1
	beq	$6,$2,$L5
	addu	$3,$4,$6

$L4:
	lb	$8,0($7)
	move	$3,$7
	bne	$8,$0,$L6
	addiu	$7,$7,1

$L5:
	addiu	$7,$6,-1
	sltu	$7,$2,$7
	beq	$7,$0,$L7
	addu	$9,$4,$2

$L15:
	addiu	$6,$6,-1
	.option	pic0
	b	$L8
	.option	pic2
	move	$7,$2

$L9:
	sb	$8,0($9)
	beq	$10,$0,$L14
	addiu	$9,$3,1

$L8:
	subu	$8,$7,$2
	addiu	$7,$7,1
	addu	$8,$5,$8
	sltu	$10,$7,$6
	lb	$8,0($8)
	bne	$8,$0,$L9
	move	$3,$9

$L7:
	jr	$31
	sb	$0,0($3)

$L14:
	addu	$3,$4,$7
	jr	$31
	sb	$0,0($3)

	.set	macro
	.set	reorder
	.end	string_concat
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
