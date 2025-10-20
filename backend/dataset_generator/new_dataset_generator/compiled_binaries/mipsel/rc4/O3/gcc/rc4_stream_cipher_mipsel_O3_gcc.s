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
	addiu	$3,$sp,28
	move	$2,$0
	sw	$31,292($sp)
	lw	$11,%got(__stack_chk_guard)($28)
	li	$6,256			# 0x100
	.cprestore	16
	lw	$7,0($11)
	sw	$7,284($sp)
$L2:
	sb	$2,0($3)
	addiu	$2,$2,1
	bne	$2,$6,$L2
	addiu	$3,$3,1

	beq	$5,$0,$L1
	nop

	move	$7,$0
	move	$6,$0
$L4:
	addiu	$3,$7,1
	lbu	$9,0($4)
	addiu	$4,$4,1
	move	$7,$3
	andi	$3,$3,0x00ff
	addiu	$2,$3,288
	addu	$3,$2,$sp
	lbu	$2,-260($3)
	addu	$6,$2,$6
	andi	$6,$6,0x00ff
	addiu	$8,$6,288
	addu	$8,$8,$sp
	lbu	$10,-260($8)
	sb	$10,-260($3)
	sb	$2,-260($8)
	lbu	$3,-260($3)
	addu	$2,$2,$3
	andi	$2,$2,0x00ff
	addiu	$2,$2,288
	addu	$2,$2,$sp
	lbu	$2,-260($2)
	xor	$2,$2,$9
	bne	$5,$7,$L4
	sb	$2,-1($4)

$L1:
	lw	$3,284($sp)
	lw	$2,0($11)
	bne	$3,$2,$L13
	lw	$31,292($sp)

	jr	$31
	addiu	$sp,$sp,296

$L13:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	rc4_stream
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
