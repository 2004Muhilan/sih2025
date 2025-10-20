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
	addiu	$sp,$sp,-296
	sw	$31,292($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,284($sp)
	addiu	$3,$sp,28
	move	$2,$0
	li	$6,256			# 0x100
$L2:
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$6,$L2
	addiu	$3,$3,1

	beq	$5,$0,$L1
	move	$2,$0

	move	$6,$4
	addu	$7,$4,$5
	li	$8,-2147483648			# 0xffffffff80000000
	addiu	$8,$8,255
$L5:
	lbu	$4,0($6)
	addiu	$3,$4,288
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
	and	$3,$3,$8
	addiu	$3,$3,288
	addu	$3,$3,$sp
	lbu	$3,-260($3)
	xor	$4,$4,$3
	sb	$4,0($6)
	addiu	$6,$6,1
	bne	$6,$7,$L5
	nop

$L1:
	lw	$3,284($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L10
	lw	$31,292($sp)

	jr	$31
	addiu	$sp,$sp,296

$L10:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	rc4_vmpc_variant
	.size	rc4_vmpc_variant, .-rc4_vmpc_variant
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
