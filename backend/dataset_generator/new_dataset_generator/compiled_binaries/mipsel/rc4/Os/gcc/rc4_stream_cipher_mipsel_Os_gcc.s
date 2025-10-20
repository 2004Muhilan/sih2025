	.file	1 "rc4_stream_cipher.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_stream
	.set	nomips16
	.set	nomicromips
	.ent	rc4_stream
	.type	rc4_stream, @function
rc4_stream:
	.frame	$sp,296,$31		# vars= 264, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-296
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$7,$sp,28
	li	$3,256			# 0x100
	sw	$31,292($sp)
	lw	$8,%got(__stack_chk_guard)($28)
	.cprestore	16
	lw	$2,0($8)
	sw	$2,284($sp)
	move	$2,$0
	addu	$6,$7,$2
$L8:
	sb	$2,0($6)
	addiu	$2,$2,1
	bne	$2,$3,$L8
	addu	$6,$7,$2

	move	$6,$0
	move	$7,$0
$L3:
	bne	$6,$5,$L4
	addiu	$3,$6,1

	lw	$3,284($sp)
	lw	$2,0($8)
	beq	$3,$2,$L5
	lw	$31,292($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L4:
	andi	$3,$3,0x00ff
	addiu	$2,$3,288
	addu	$3,$2,$sp
	lbu	$2,-260($3)
	addu	$7,$2,$7
	andi	$7,$7,0x00ff
	addiu	$9,$7,288
	addu	$9,$9,$sp
	lbu	$10,-260($9)
	sb	$10,-260($3)
	sb	$2,-260($9)
	addu	$9,$4,$6
	lbu	$3,-260($3)
	addiu	$6,$6,1
	addu	$2,$2,$3
	lbu	$3,0($9)
	andi	$2,$2,0x00ff
	addiu	$2,$2,288
	addu	$2,$2,$sp
	lbu	$2,-260($2)
	xor	$2,$2,$3
	.option	pic0
	b	$L3
	.option	pic2
	sb	$2,0($9)

$L5:
	jr	$31
	addiu	$sp,$sp,296

	.set	macro
	.set	reorder
	.end	rc4_stream
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
