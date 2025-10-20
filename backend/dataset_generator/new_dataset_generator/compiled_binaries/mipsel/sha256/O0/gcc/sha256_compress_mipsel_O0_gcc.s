	.file	1 "sha256_compress.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_compress
	.set	nomips16
	.set	nomicromips
	.ent	sha256_compress
	.type	sha256_compress, @function
sha256_compress:
	.frame	$fp,368,$31		# vars= 336, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-368
	sw	$31,364($sp)
	sw	$fp,360($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	sw	$5,24($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,356($fp)
	sw	$0,32($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,32($fp)
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	sw	$3,-260($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L2:
	lw	$2,32($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	li	$2,16			# 0x10
	sw	$2,36($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$2,36($fp)
	addiu	$2,$2,-15
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	ror	$3,$2,7
	lw	$2,36($fp)
	addiu	$2,$2,-15
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	ror	$2,$2,18
	xor	$3,$3,$2
	lw	$2,36($fp)
	addiu	$2,$2,-15
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	srl	$2,$2,3
	xor	$2,$3,$2
	sw	$2,92($fp)
	lw	$2,36($fp)
	addiu	$2,$2,-2
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	ror	$3,$2,17
	lw	$2,36($fp)
	addiu	$2,$2,-2
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	ror	$2,$2,19
	xor	$3,$3,$2
	lw	$2,36($fp)
	addiu	$2,$2,-2
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	srl	$2,$2,10
	xor	$2,$3,$2
	sw	$2,96($fp)
	lw	$2,36($fp)
	addiu	$2,$2,-16
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$3,-260($2)
	lw	$2,92($fp)
	addu	$3,$3,$2
	lw	$2,36($fp)
	addiu	$2,$2,-7
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	addu	$3,$3,$2
	lw	$2,96($fp)
	addu	$3,$3,$2
	lw	$2,36($fp)
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	sw	$3,-260($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L4:
	lw	$2,36($fp)
	slt	$2,$2,64
	bne	$2,$0,$L5
	nop

	lw	$2,28($fp)
	lw	$2,0($2)
	sw	$2,40($fp)
	lw	$2,28($fp)
	lw	$2,4($2)
	sw	$2,44($fp)
	lw	$2,28($fp)
	lw	$2,8($2)
	sw	$2,48($fp)
	lw	$2,28($fp)
	lw	$2,12($2)
	sw	$2,52($fp)
	lw	$2,28($fp)
	lw	$2,16($2)
	sw	$2,56($fp)
	lw	$2,28($fp)
	lw	$2,20($2)
	sw	$2,60($fp)
	lw	$2,28($fp)
	lw	$2,24($2)
	sw	$2,64($fp)
	lw	$2,28($fp)
	lw	$2,28($2)
	sw	$2,68($fp)
	sw	$0,72($fp)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L7:
	lw	$2,56($fp)
	ror	$3,$2,6
	lw	$2,56($fp)
	ror	$2,$2,11
	xor	$3,$3,$2
	lw	$2,56($fp)
	ror	$2,$2,25
	xor	$2,$3,$2
	sw	$2,76($fp)
	lw	$3,68($fp)
	lw	$2,76($fp)
	addu	$3,$3,$2
	lw	$4,56($fp)
	lw	$2,60($fp)
	and	$4,$4,$2
	lw	$2,56($fp)
	nor	$5,$0,$2
	lw	$2,64($fp)
	and	$2,$5,$2
	xor	$2,$4,$2
	addu	$3,$3,$2
	lw	$2,72($fp)
	sll	$2,$2,2
	addiu	$2,$2,360
	addu	$2,$2,$fp
	lw	$2,-260($2)
	addu	$3,$3,$2
	li	$2,1116340224			# 0x428a0000
	ori	$2,$2,0x2f98
	addu	$2,$3,$2
	sw	$2,80($fp)
	lw	$2,40($fp)
	ror	$3,$2,2
	lw	$2,40($fp)
	ror	$2,$2,13
	xor	$3,$3,$2
	lw	$2,40($fp)
	ror	$2,$2,22
	xor	$2,$3,$2
	sw	$2,84($fp)
	lw	$3,44($fp)
	lw	$2,48($fp)
	xor	$3,$3,$2
	lw	$2,40($fp)
	and	$3,$3,$2
	lw	$4,44($fp)
	lw	$2,48($fp)
	and	$2,$4,$2
	xor	$2,$3,$2
	lw	$3,84($fp)
	addu	$2,$3,$2
	sw	$2,88($fp)
	lw	$2,64($fp)
	sw	$2,68($fp)
	lw	$2,60($fp)
	sw	$2,64($fp)
	lw	$2,56($fp)
	sw	$2,60($fp)
	lw	$3,52($fp)
	lw	$2,80($fp)
	addu	$2,$3,$2
	sw	$2,56($fp)
	lw	$2,48($fp)
	sw	$2,52($fp)
	lw	$2,44($fp)
	sw	$2,48($fp)
	lw	$2,40($fp)
	sw	$2,44($fp)
	lw	$3,80($fp)
	lw	$2,88($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
	lw	$2,72($fp)
	addiu	$2,$2,1
	sw	$2,72($fp)
$L6:
	lw	$2,72($fp)
	slt	$2,$2,64
	bne	$2,$0,$L7
	nop

	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,40($fp)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,44($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,48($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,52($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,56($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$3,60($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$3,64($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$4,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$3,68($fp)
	addu	$3,$4,$3
	sw	$3,0($2)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,356($fp)
	lw	$2,0($2)
	beq	$3,$2,$L8
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L8:
	move	$sp,$fp
	lw	$31,364($sp)
	lw	$fp,360($sp)
	addiu	$sp,$sp,368
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_compress
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
