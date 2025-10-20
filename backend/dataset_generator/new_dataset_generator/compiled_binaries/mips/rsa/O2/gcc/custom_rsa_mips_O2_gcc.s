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
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$22,52($sp)
	move	$22,$6
	sw	$20,44($sp)
	move	$20,$7
	.cprestore	16
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	or	$4,$22,$20
	beq	$4,$0,$L7
	lw	$28,16($sp)

	move	$17,$0
	li	$21,1			# 0x1
	move	$16,$2
	move	$23,$3
$L6:
	mul	$2,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	mul	$3,$17,$23
	multu	$23,$21
	mflo	$5
	addu	$3,$2,$3
	andi	$2,$20,0x1
	beq	$2,$0,$L4
	mfhi	$4

	addu	$4,$3,$4
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	move	$21,$3
	move	$17,$2
$L4:
	mul	$16,$16,$23
	lw	$25,%call16(__umoddi3)($28)
	multu	$23,$23
	sll	$2,$22,31
	srl	$20,$20,1
	srl	$22,$22,1
	mfhi	$4
	mflo	$5
	sll	$16,$16,1
	or	$20,$2,$20
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$16,$4

	or	$4,$22,$20
	lw	$28,16($sp)
	move	$16,$2
	bne	$4,$0,$L6
	move	$23,$3

	lw	$31,60($sp)
	move	$2,$17
	lw	$23,56($sp)
	move	$3,$21
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L7:
	lw	$31,60($sp)
	move	$17,$0
	li	$21,1			# 0x1
	lw	$23,56($sp)
	lw	$22,52($sp)
	move	$2,$17
	lw	$20,44($sp)
	move	$3,$21
	lw	$21,48($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$sp,136,$31		# vars= 64, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-136
	addiu	$28,$28,%lo(__gnu_local_gp)
	or	$3,$4,$5
	sw	$18,104($sp)
	move	$8,$7
	lw	$18,%got(__stack_chk_guard)($28)
	sw	$22,120($sp)
	sw	$21,116($sp)
	sw	$20,112($sp)
	move	$20,$6
	sw	$17,100($sp)
	move	$17,$4
	sw	$16,96($sp)
	move	$16,$5
	sw	$31,132($sp)
	sw	$fp,128($sp)
	sw	$23,124($sp)
	sw	$19,108($sp)
	.cprestore	24
	lw	$2,0($18)
	lw	$22,152($sp)
	lw	$21,156($sp)
	sw	$2,92($sp)
	bne	$3,$0,$L29
	move	$23,$0

	li	$fp,1			# 0x1
$L15:
	lw	$5,92($sp)
	lw	$3,0($18)
	sw	$16,4($22)
	sw	$17,0($22)
	sw	$23,0($21)
	bne	$5,$3,$L30
	sw	$fp,4($21)

	lw	$31,132($sp)
	move	$2,$20
	lw	$fp,128($sp)
	move	$3,$8
	lw	$23,124($sp)
	lw	$22,120($sp)
	lw	$21,116($sp)
	lw	$20,112($sp)
	lw	$19,108($sp)
	lw	$18,104($sp)
	lw	$17,100($sp)
	lw	$16,96($sp)
	jr	$31
	addiu	$sp,$sp,136

$L29:
	lw	$25,%call16(__moddi3)($28)
	move	$6,$4
	move	$7,$5
	sw	$8,40($sp)
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$8

	move	$13,$2
	lw	$28,24($sp)
	move	$19,$3
	or	$3,$3,$13
	move	$23,$13
	beq	$3,$0,$L25
	move	$fp,$19

	lw	$25,%call16(__moddi3)($28)
	move	$6,$13
	sw	$13,44($sp)
	move	$7,$19
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	move	$5,$16

	move	$12,$2
	lw	$28,24($sp)
	or	$2,$3,$12
	lw	$8,40($sp)
	sw	$12,36($sp)
	bne	$2,$0,$L31
	move	$10,$3

	move	$19,$0
	li	$11,1			# 0x1
$L19:
	lw	$25,%call16(__divdi3)($28)
	move	$6,$17
	sw	$10,44($sp)
	move	$7,$16
	sw	$11,40($sp)
	move	$4,$20
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	move	$5,$8

	move	$17,$23
	lw	$11,40($sp)
	mult	$19,$3
	lw	$10,44($sp)
	move	$16,$fp
	lw	$28,24($sp)
	move	$23,$19
	madd	$2,$11
	move	$fp,$11
	mflo	$2
	multu	$3,$11
	lw	$3,36($sp)
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$2,$10,$5
	subu	$3,$3,$4
	sltu	$10,$10,$2
	.option	pic0
	b	$L17
	.option	pic2
	subu	$3,$3,$10

$L25:
	move	$3,$0
	li	$2,1			# 0x1
$L17:
	move	$20,$17
	move	$8,$16
	move	$17,$3
	.option	pic0
	b	$L15
	.option	pic2
	move	$16,$2

$L31:
	lw	$25,%call16(__moddi3)($28)
	move	$4,$23
	sw	$8,52($sp)
	move	$6,$12
	sw	$23,40($sp)
	move	$7,$3
	sw	$3,48($sp)
	move	$5,$19
	sw	$12,60($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$3,56($sp)

	move	$23,$2
	lw	$28,24($sp)
	or	$2,$3,$23
	lw	$13,40($sp)
	lw	$10,48($sp)
	move	$fp,$3
	lw	$8,52($sp)
	move	$15,$23
	beq	$2,$0,$L27
	move	$14,$3

	lw	$12,60($sp)
	move	$5,$10
	lw	$25,%call16(__moddi3)($28)
	move	$6,$23
	sw	$8,64($sp)
	move	$7,$3
	sw	$10,36($sp)
	move	$4,$12
	sw	$13,68($sp)
	.reloc	1f,R_MIPS_JALR,__moddi3
1:	jalr	$25
	sw	$12,40($sp)

	move	$6,$23
	move	$4,$2
	addiu	$2,$sp,80
	move	$7,$fp
	sw	$2,20($sp)
	addiu	$2,$sp,72
	move	$5,$3
	.option	pic0
	jal	extended_gcd
	.option	pic2
	sw	$2,16($sp)

	move	$6,$23
	lw	$28,24($sp)
	move	$7,$fp
	lw	$9,76($sp)
	move	$23,$2
	lw	$12,40($sp)
	lw	$11,36($sp)
	lw	$25,%call16(__divdi3)($28)
	lw	$fp,72($sp)
	move	$4,$12
	move	$5,$11
	sw	$9,44($sp)
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$3,52($sp)

	lw	$9,44($sp)
	mult	$fp,$3
	lw	$24,84($sp)
	lw	$15,80($sp)
	madd	$2,$9
	lw	$28,24($sp)
	lw	$11,36($sp)
	lw	$13,68($sp)
	lw	$12,40($sp)
	mflo	$5
	lw	$25,%call16(__divdi3)($28)
	multu	$3,$9
	sw	$9,48($sp)
	move	$4,$13
	sw	$13,44($sp)
	move	$7,$11
	move	$6,$12
	mfhi	$2
	mflo	$3
	addu	$2,$5,$2
	subu	$14,$24,$3
	subu	$15,$15,$2
	sltu	$2,$24,$14
	sw	$14,40($sp)
	subu	$15,$15,$2
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$15,36($sp)

	lw	$15,36($sp)
	lw	$14,40($sp)
	lw	$9,48($sp)
	mult	$15,$3
	lw	$28,24($sp)
	madd	$2,$14
	lw	$10,52($sp)
	lw	$13,44($sp)
	lw	$8,64($sp)
	sw	$23,36($sp)
	mflo	$2
	multu	$3,$14
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$11,$9,$5
	subu	$fp,$fp,$4
	sltu	$9,$9,$11
	subu	$9,$fp,$9
$L21:
	lw	$25,%call16(__divdi3)($28)
	move	$7,$19
	sw	$8,60($sp)
	move	$4,$17
	sw	$11,56($sp)
	move	$5,$16
	sw	$9,52($sp)
	move	$6,$13
	sw	$14,48($sp)
	sw	$15,44($sp)
	.reloc	1f,R_MIPS_JALR,__divdi3
1:	jalr	$25
	sw	$10,40($sp)

	lw	$9,52($sp)
	lw	$11,56($sp)
	lw	$10,40($sp)
	mult	$9,$3
	lw	$14,48($sp)
	madd	$2,$11
	lw	$15,44($sp)
	move	$fp,$10
	lw	$23,36($sp)
	move	$10,$11
	lw	$28,24($sp)
	lw	$8,60($sp)
	mflo	$2
	sw	$9,36($sp)
	multu	$3,$11
	mfhi	$4
	mflo	$5
	addu	$4,$2,$4
	subu	$11,$14,$5
	subu	$19,$15,$4
	sltu	$14,$14,$11
	.option	pic0
	b	$L19
	.option	pic2
	subu	$19,$19,$14

$L27:
	move	$9,$0
	.option	pic0
	b	$L21
	.option	pic2
	li	$11,1			# 0x1

$L30:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
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
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$22,52($sp)
	move	$22,$6
	sw	$20,44($sp)
	move	$20,$7
	.cprestore	16
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	or	$4,$22,$20
	beq	$4,$0,$L38
	lw	$28,16($sp)

	move	$17,$0
	li	$21,1			# 0x1
	move	$16,$2
	move	$23,$3
$L37:
	mul	$2,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	mul	$3,$17,$23
	multu	$23,$21
	mflo	$5
	addu	$3,$2,$3
	andi	$2,$20,0x1
	beq	$2,$0,$L35
	mfhi	$4

	addu	$4,$3,$4
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	move	$21,$3
	move	$17,$2
$L35:
	mul	$16,$16,$23
	lw	$25,%call16(__umoddi3)($28)
	multu	$23,$23
	sll	$2,$22,31
	srl	$20,$20,1
	srl	$22,$22,1
	mfhi	$4
	mflo	$5
	sll	$16,$16,1
	or	$20,$2,$20
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$16,$4

	or	$4,$22,$20
	lw	$28,16($sp)
	move	$16,$2
	bne	$4,$0,$L37
	move	$23,$3

	lw	$31,60($sp)
	move	$2,$17
	lw	$23,56($sp)
	move	$3,$21
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L38:
	lw	$31,60($sp)
	move	$17,$0
	li	$21,1			# 0x1
	lw	$23,56($sp)
	lw	$22,52($sp)
	move	$2,$17
	lw	$20,44($sp)
	move	$3,$21
	lw	$21,48($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

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
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$22,52($sp)
	move	$22,$6
	sw	$20,44($sp)
	move	$20,$7
	.cprestore	16
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$21,48($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	or	$4,$22,$20
	beq	$4,$0,$L50
	lw	$28,16($sp)

	move	$17,$0
	li	$21,1			# 0x1
	move	$16,$2
	move	$23,$3
$L49:
	mul	$2,$16,$21
	lw	$25,%call16(__umoddi3)($28)
	mul	$3,$17,$23
	multu	$23,$21
	mflo	$5
	addu	$3,$2,$3
	andi	$2,$20,0x1
	beq	$2,$0,$L47
	mfhi	$4

	addu	$4,$3,$4
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$18

	lw	$28,16($sp)
	move	$21,$3
	move	$17,$2
$L47:
	mul	$16,$16,$23
	lw	$25,%call16(__umoddi3)($28)
	multu	$23,$23
	sll	$2,$22,31
	srl	$20,$20,1
	srl	$22,$22,1
	mfhi	$4
	mflo	$5
	sll	$16,$16,1
	or	$20,$2,$20
	move	$7,$19
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$16,$4

	or	$4,$22,$20
	lw	$28,16($sp)
	move	$16,$2
	bne	$4,$0,$L49
	move	$23,$3

	lw	$31,60($sp)
	move	$2,$17
	lw	$23,56($sp)
	move	$3,$21
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

$L50:
	lw	$31,60($sp)
	move	$17,$0
	li	$21,1			# 0x1
	lw	$23,56($sp)
	lw	$22,52($sp)
	move	$2,$17
	lw	$20,44($sp)
	move	$3,$21
	lw	$21,48($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	rsa_decrypt
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
