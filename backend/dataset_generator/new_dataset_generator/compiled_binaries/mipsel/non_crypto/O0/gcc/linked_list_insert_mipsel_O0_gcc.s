	.file	1 "linked_list_insert.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	linked_list_insert
	.set	nomips16
	.set	nomicromips
	.ent	linked_list_insert
	.type	linked_list_insert, @function
linked_list_insert:
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
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,4($fp)
	lw	$2,4($fp)
	beq	$2,$0,$L6
	nop

	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$2,4($fp)
	lw	$2,4($2)
	sw	$2,4($fp)
$L4:
	lw	$2,4($fp)
	lw	$2,4($2)
	bne	$2,$0,$L5
	nop

	.option	pic0
	b	$L1
	nop

	.option	pic2
$L6:
	nop
$L1:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	linked_list_insert
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
