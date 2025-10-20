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
	.frame	$fp,312,$31		# vars= 280, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$fp,304($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,316($fp)
	sw	$6,24($fp)
	sw	$7,324($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,300($fp)
	sw	$0,36($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,36($fp)
	andi	$2,$2,0x00ff
	lw	$3,36($fp)
	addiu	$3,$3,304
	addu	$3,$3,$fp
	sb	$2,-260($3)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L2:
	lw	$2,36($fp)
	slt	$2,$2,256
	bne	$2,$0,$L3
	nop

	sb	$0,34($fp)
	sb	$0,32($fp)
	sb	$0,33($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L6:
	lbu	$2,32($fp)
	addiu	$3,$2,1
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xff
	and	$2,$3,$2
	bgez	$2,$L5
	nop

	addiu	$2,$2,-1
	li	$3,-256			# 0xffffffffffffff00
	or	$2,$2,$3
	addiu	$2,$2,1
$L5:
	sb	$2,32($fp)
	lbu	$2,32($fp)
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$3,-260($2)
	lbu	$2,33($fp)
	addu	$2,$3,$2
	sb	$2,33($fp)
	lbu	$2,32($fp)
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$2,-260($2)
	sb	$2,35($fp)
	lbu	$2,33($fp)
	lbu	$3,32($fp)
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$2,-260($2)
	addiu	$3,$3,304
	addu	$3,$3,$fp
	sb	$2,-260($3)
	lbu	$2,33($fp)
	addiu	$2,$2,304
	addu	$3,$2,$fp
	lbu	$2,35($fp)
	sb	$2,-260($3)
	lw	$3,28($fp)
	lw	$2,40($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lbu	$2,32($fp)
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$3,-260($2)
	lbu	$2,33($fp)
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$2,-260($2)
	addu	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,304
	addu	$2,$2,$fp
	lbu	$3,-260($2)
	lw	$5,28($fp)
	lw	$2,40($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L4:
	lw	$3,40($fp)
	lw	$2,316($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L6
	nop

	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,300($fp)
	lw	$2,0($2)
	beq	$3,$2,$L7
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	move	$sp,$fp
	lw	$31,308($sp)
	lw	$fp,304($sp)
	addiu	$sp,$sp,312
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_stream
	.size	rc4_stream, .-rc4_stream
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
