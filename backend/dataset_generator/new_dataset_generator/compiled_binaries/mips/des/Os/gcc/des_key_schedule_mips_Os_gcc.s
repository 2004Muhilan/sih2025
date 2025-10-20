	.file	1 "des_key_schedule.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__lshrdi3
	.align	2
	.globl	des_key_schedule
	.set	nomips16
	.set	nomicromips
	.ent	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
	.frame	$sp,56,$31		# vars= 0, regs= 7/0, args= 16, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$21,48($sp)
	sw	$16,28($sp)
	li	$21,64			# 0x40
	move	$16,$0
	sw	$20,44($sp)
	sw	$19,40($sp)
	move	$20,$6
	sw	$18,36($sp)
	move	$19,$4
	sw	$31,52($sp)
	move	$18,$5
	sw	$17,32($sp)
	.cprestore	16
$L2:
	lw	$25,%call16(__lshrdi3)($28)
	sll	$17,$16,1
	move	$6,$16
	addu	$17,$20,$17
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,__lshrdi3
1:	jalr	$25
	move	$5,$18

	addiu	$16,$16,4
	andi	$2,$2,0xffff
	lw	$28,16($sp)
	sw	$2,0($17)
	bne	$16,$21,$L2
	sw	$3,4($17)

	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	des_key_schedule
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
