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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	beq	$2,$0,$L5
	nop

$L3:
	lw	$2,4($2)
	bne	$2,$0,$L3
	nop

$L5:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	linked_list_insert
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
