	.file	1 "rc4_vmpc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_vmpc_variant
	.set	nomips16
	.set	nomicromips
	.ent	rc4_vmpc_variant
	.type	rc4_vmpc_variant, @function
rc4_vmpc_variant:
	.frame	$sp,296,$31		# vars= 264, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-296
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$8,$sp,28
	li	$3,256			# 0x100
	sw	$31,292($sp)
	lw	$7,%got(__stack_chk_guard)($28)
	.cprestore	16
	lw	$2,0($7)
	sw	$2,284($sp)
	move	$2,$0
	addu	$6,$8,$2
$L8:
	sb	$2,0($6)
	addiu	$2,$2,1
	bne	$2,$3,$L8
	addu	$6,$8,$2

	addu	$5,$4,$5
	move	$2,$0
$L3:
	bne	$4,$5,$L4
	nop

	lw	$3,284($sp)
	lw	$2,0($7)
	beq	$3,$2,$L5
	lw	$31,292($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L4:
	lbu	$6,0($4)
	addiu	$4,$4,1
	addiu	$3,$6,288
	addu	$3,$3,$sp
	lbu	$3,-260($3)
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	addiu	$2,$2,288
	addu	$2,$2,$sp
	lbu	$2,-260($2)
	addiu	$3,$2,288
	addu	$3,$3,$sp
	lbu	$3,-260($3)
	addiu	$3,$3,288
	addu	$3,$3,$sp
	lbu	$3,-260($3)
	addiu	$3,$3,1
	andi	$3,$3,0xff
	addiu	$3,$3,288
	addu	$3,$3,$sp
	lbu	$3,-260($3)
	xor	$6,$6,$3
	.option	pic0
	b	$L3
	.option	pic2
	sb	$6,-1($4)

$L5:
	jr	$31
	addiu	$sp,$sp,296

	.set	macro
	.set	reorder
	.end	rc4_vmpc_variant
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
