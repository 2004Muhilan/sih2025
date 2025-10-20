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
	move	$6,$4

	addu	$9,$4,$5
	move	$4,$0
	move	$5,$0
	li	$10,-2147483648			# 0xffffffff80000000
	addiu	$10,$10,255
	.option	pic0
	b	$L5
	.option	pic2
	li	$11,-256			# 0xffffffffffffff00

$L4:
	andi	$5,$2,0x00ff
$L11:
	addiu	$2,$2,288
	addu	$2,$2,$sp
	lbu	$3,-260($2)
	addu	$4,$3,$4
	andi	$4,$4,0x00ff
	addiu	$7,$4,288
	addu	$7,$7,$sp
	lbu	$8,-260($7)
	sb	$8,-260($2)
	sb	$3,-260($7)
	lbu	$2,-260($2)
	addu	$3,$3,$2
	andi	$3,$3,0x00ff
	addiu	$2,$3,288
	addu	$3,$2,$sp
	lbu	$2,-260($3)
	lbu	$3,0($6)
	xor	$2,$2,$3
	sb	$2,0($6)
	addiu	$6,$6,1
	beq	$9,$6,$L1
	nop

$L5:
	addiu	$5,$5,1
	and	$2,$5,$10
	bgez	$2,$L11
	andi	$5,$2,0x00ff

	addiu	$2,$2,-1
	or	$2,$2,$11
	.option	pic0
	b	$L4
	.option	pic2
	addiu	$2,$2,1

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
	.end	rc4_stream
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
