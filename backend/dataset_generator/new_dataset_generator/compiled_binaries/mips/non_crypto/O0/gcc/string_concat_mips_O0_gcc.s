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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L4:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$3,0($fp)
	lw	$2,24($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L3
	nop

	lw	$3,16($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L4
	nop

$L3:
	sw	$0,4($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L7:
	lw	$3,20($fp)
	lw	$2,4($fp)
	addu	$3,$3,$2
	lw	$4,16($fp)
	lw	$2,0($fp)
	addu	$2,$4,$2
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L5:
	lw	$2,24($fp)
	addiu	$2,$2,-1
	lw	$3,0($fp)
	sltu	$2,$3,$2
	beq	$2,$0,$L6
	nop

	lw	$3,20($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L7
	nop

$L6:
	lw	$3,16($fp)
	lw	$2,0($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	string_concat
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
