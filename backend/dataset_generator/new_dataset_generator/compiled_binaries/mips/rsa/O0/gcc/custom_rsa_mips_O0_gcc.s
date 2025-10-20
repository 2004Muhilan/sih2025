	.file	1 "custom_rsa.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__umoddi3
	.align	2
	.globl	mod_exp
	.set	nomips16
	.set	nomicromips
	.ent	mod_exp
	.type	mod_exp, @function
mod_exp:
	.frame	$fp,56,$31		# vars= 8, regs= 6/0, args= 16, gp= 8
	.mask	0xc00f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,60($fp)
	sw	$4,56($fp)
	sw	$7,68($fp)
	sw	$6,64($fp)
	li	$3,1			# 0x1
	move	$2,$0
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$3,60($fp)
	lw	$2,56($fp)
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,60($fp)
	sw	$2,56($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	lw	$2,64($fp)
	andi	$18,$2,0
	lw	$2,68($fp)
	andi	$19,$2,0x1
	move	$2,$18
	or	$2,$2,$19
	beq	$2,$0,$L3
	nop

	lw	$3,24($fp)
	lw	$2,60($fp)
	mul	$3,$3,$2
	lw	$4,56($fp)
	lw	$2,28($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$3,28($fp)
	lw	$2,60($fp)
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
$L3:
	lw	$2,64($fp)
	sll	$2,$2,31
	lw	$3,68($fp)
	srl	$17,$3,1
	or	$17,$2,$17
	lw	$2,64($fp)
	srl	$16,$2,1
	sw	$17,68($fp)
	sw	$16,64($fp)
	lw	$3,56($fp)
	lw	$2,60($fp)
	mul	$3,$3,$2
	lw	$4,56($fp)
	lw	$2,60($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$2,60($fp)
	multu	$2,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,76($fp)
	lw	$6,72($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,60($fp)
	sw	$2,56($fp)
$L2:
	lw	$2,64($fp)
	lw	$3,68($fp)
	or	$2,$2,$3
	bne	$2,$0,$L5
	nop

	lw	$3,28($fp)
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mod_exp
	.size	mod_exp, .-mod_exp
	.globl	__moddi3
	.globl	__divdi3
	.align	2
	.globl	extended_gcd
	.set	nomips16
	.set	nomicromips
	.ent	extended_gcd
	.type	extended_gcd, @function
extended_gcd:
	.frame	$fp,88,$31		# vars= 40, regs= 4/0, args= 24, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$5,92($fp)
	sw	$4,88($fp)
	sw	$7,100($fp)
	sw	$6,96($fp)
	lw	$2,104($fp)
	sw	$2,36($fp)
	lw	$2,108($fp)
	sw	$2,32($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,68($fp)
	lw	$2,88($fp)
	lw	$3,92($fp)
	or	$2,$2,$3
	bne	$2,$0,$L8
	nop

	lw	$2,36($fp)
	move	$5,$0
	move	$4,$0
	sw	$5,4($2)
	sw	$4,0($2)
	lw	$4,32($fp)
	li	$3,1			# 0x1
	move	$2,$0
	sw	$3,4($4)
	sw	$2,0($4)
	lw	$3,100($fp)
	lw	$2,96($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L8:
	lw	$3,100($fp)
	lw	$2,96($fp)
	lw	$8,%call16(__moddi3)($28)
	lw	$7,92($fp)
	lw	$6,88($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$4,$fp,48
	sw	$4,20($sp)
	addiu	$4,$fp,40
	sw	$4,16($sp)
	lw	$7,92($fp)
	lw	$6,88($fp)
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	extended_gcd
	nop

	.option	pic2
	lw	$28,24($fp)
	sw	$3,60($fp)
	sw	$2,56($fp)
	lw	$17,52($fp)
	lw	$16,48($fp)
	lw	$2,%call16(__divdi3)($28)
	lw	$7,92($fp)
	lw	$6,88($fp)
	lw	$5,100($fp)
	lw	$4,96($fp)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$5,$3
	move	$4,$2
	lw	$3,44($fp)
	lw	$2,40($fp)
	mul	$7,$4,$3
	mul	$6,$2,$5
	addu	$6,$7,$6
	multu	$5,$3
	mflo	$5
	mfhi	$4
	addu	$2,$6,$4
	move	$4,$2
	subu	$3,$17,$5
	sltu	$6,$17,$3
	subu	$2,$16,$4
	subu	$4,$2,$6
	move	$2,$4
	lw	$4,36($fp)
	sw	$3,4($4)
	sw	$2,0($4)
	lw	$3,44($fp)
	lw	$2,40($fp)
	lw	$4,32($fp)
	sw	$3,4($4)
	sw	$2,0($4)
	lw	$3,60($fp)
	lw	$2,56($fp)
$L10:
	move	$5,$3
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,68($fp)
	lw	$2,0($2)
	beq	$3,$2,$L11
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L11:
	move	$3,$5
	move	$2,$4
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	extended_gcd
	.size	extended_gcd, .-extended_gcd
	.align	2
	.globl	rsa_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$5,44($fp)
	sw	$4,40($fp)
	sw	$7,52($fp)
	sw	$6,48($fp)
	lw	$3,60($fp)
	lw	$2,56($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	mod_exp
	nop

	.option	pic2
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_encrypt
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.globl	rsa_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$5,44($fp)
	sw	$4,40($fp)
	sw	$7,52($fp)
	sw	$6,48($fp)
	lw	$3,60($fp)
	lw	$2,56($fp)
	sw	$3,20($sp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	mod_exp
	nop

	.option	pic2
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_decrypt
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
