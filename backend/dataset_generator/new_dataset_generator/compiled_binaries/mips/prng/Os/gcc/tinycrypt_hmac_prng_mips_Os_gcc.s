	.file	1 "tinycrypt_hmac_prng.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update
	.type	update, @function
update:
	.frame	$sp,72,$31		# vars= 8, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-72
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$23,64($sp)
	lw	$23,%got(__stack_chk_guard)($28)
	lw	$25,%call16(tc_hmac_set_key)($28)
	sw	$18,44($sp)
	addiu	$18,$4,240
	sw	$21,56($sp)
	move	$21,$6
	lw	$2,0($23)
	li	$6,32			# 0x20
	sw	$31,68($sp)
	sw	$22,60($sp)
	sw	$2,28($sp)
	li	$2,1			# 0x1
	sw	$20,52($sp)
	move	$20,$5
	sw	$19,48($sp)
	move	$5,$18
	sw	$17,40($sp)
	move	$19,$7
	sw	$16,36($sp)
	move	$16,$4
	.cprestore	16
	addiu	$17,$16,272
	sb	$0,26($sp)
	sb	$2,27($sp)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	lw	$22,88($sp)

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$6,1			# 0x1
	lw	$28,16($sp)
	addiu	$5,$sp,26
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	beq	$20,$0,$L2
	lw	$28,16($sp)

	beq	$21,$0,$L2
	lw	$25,%call16(tc_hmac_update)($28)

	move	$6,$21
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
$L2:
	beq	$19,$0,$L32
	lw	$25,%call16(tc_hmac_final)($28)

	beq	$22,$0,$L33
	li	$5,32			# 0x20

	lw	$25,%call16(tc_hmac_update)($28)
	move	$6,$22
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_final)($28)
$L32:
	li	$5,32			# 0x20
$L33:
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	beq	$20,$0,$L1
	lw	$28,16($sp)

	beq	$21,$0,$L1
	lw	$25,%call16(tc_hmac_set_key)($28)

	li	$6,32			# 0x20
	move	$5,$18
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$6,1			# 0x1
	lw	$28,16($sp)
	addiu	$5,$sp,27
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	move	$6,$21
	lw	$28,16($sp)
	move	$5,$20
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	beq	$19,$0,$L5
	lw	$28,16($sp)

	beq	$22,$0,$L34
	lw	$25,%call16(tc_hmac_final)($28)

	lw	$25,%call16(tc_hmac_update)($28)
	move	$6,$22
	move	$5,$19
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
$L5:
	lw	$25,%call16(tc_hmac_final)($28)
$L34:
	li	$5,32			# 0x20
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$18

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$18
	lw	$25,%call16(tc_hmac_set_key)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	lw	$28,16($sp)
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$4,$16

	li	$6,32			# 0x20
	lw	$28,16($sp)
	move	$5,$17
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,16($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$17

	lw	$28,16($sp)
$L1:
	lw	$3,28($sp)
	lw	$2,0($23)
	beq	$3,$2,$L6
	lw	$31,68($sp)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L6:
	lw	$23,64($sp)
	lw	$22,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	jr	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	update
	.size	update, .-update
	.align	2
	.globl	tc_hmac_prng_init
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
	.frame	$sp,48,$31		# vars= 0, regs= 4/0, args= 24, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L43
	move	$2,$0

	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-48
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$17,36($sp)
	move	$17,$5
	sw	$31,44($sp)
	sw	$18,40($sp)
	sw	$16,32($sp)
	beq	$5,$0,$L35
	.cprestore	24

	lw	$25,%call16(_set)($28)
	move	$16,$4
	move	$5,$0
	addiu	$4,$4,240
	move	$18,$6
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	li	$6,32			# 0x20

	li	$6,32			# 0x20
	lw	$28,24($sp)
	li	$5,1			# 0x1
	lw	$25,%call16(_set)($28)
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	addiu	$4,$16,272

	move	$7,$0
	sw	$0,16($sp)
	move	$6,$18
	move	$5,$17
	.option	pic0
	jal	update
	.option	pic2
	move	$4,$16

	li	$2,1			# 0x1
	sw	$0,304($16)
$L35:
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,48

$L43:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_init
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	2
	.globl	tc_hmac_prng_reseed
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
	.frame	$sp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	move	$2,$0
	lw	$10,56($sp)
	sw	$31,36($sp)
	beq	$4,$0,$L44
	sw	$16,32($sp)

	beq	$5,$0,$L44
	sltu	$3,$6,32

	bne	$3,$0,$L44
	nop

	beq	$7,$0,$L46
	move	$16,$4

	beq	$10,$0,$L55
	lw	$31,36($sp)

	sw	$10,16($sp)
$L54:
	.option	pic0
	jal	update
	nop

	.option	pic2
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,304($16)
	li	$2,1			# 0x1
$L44:
	lw	$31,36($sp)
$L55:
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,40

$L46:
	.option	pic0
	b	$L54
	.option	pic2
	sw	$0,16($sp)

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_reseed
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	2
	.globl	tc_hmac_prng_generate
	.set	nomips16
	.set	nomicromips
	.ent	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L68
	move	$2,$0

	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$16,32($sp)
	move	$16,$6
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	beq	$6,$0,$L56
	.cprestore	24

	li	$2,524288			# 0x80000
	addiu	$3,$5,-1
	move	$17,$5
	sltu	$3,$3,$2
	beq	$3,$0,$L56
	move	$2,$0

	lw	$3,304($6)
	beq	$3,$0,$L56
	li	$2,-1			# 0xffffffffffffffff

	addiu	$3,$3,-1
	addiu	$22,$6,240
	addiu	$21,$6,272
	sw	$3,304($6)
	move	$18,$4
$L58:
	lw	$25,%call16(tc_hmac_set_key)($28)
	li	$6,32			# 0x20
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	move	$4,$16

	move	$4,$16
	lw	$28,24($sp)
	li	$19,32			# 0x20
	lw	$25,%call16(tc_hmac_init)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	move	$20,$19

	li	$6,32			# 0x20
	lw	$28,24($sp)
	move	$5,$21
	lw	$25,%call16(tc_hmac_update)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	move	$4,$16

	li	$5,32			# 0x20
	lw	$28,24($sp)
	move	$6,$16
	lw	$25,%call16(tc_hmac_final)($28)
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	move	$4,$21

	sltu	$2,$17,33
	lw	$28,24($sp)
	move	$4,$18
	movn	$20,$17,$2
	move	$6,$21
	lw	$25,%call16(_copy)($28)
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	move	$5,$20

	sltu	$2,$17,32
	movz	$19,$17,$2
	addu	$18,$18,$20
	addiu	$17,$19,-32
	bne	$17,$0,$L58
	lw	$28,24($sp)

	move	$7,$0
	sw	$0,16($sp)
	move	$6,$0
	move	$5,$0
	.option	pic0
	jal	update
	.option	pic2
	move	$4,$16

	li	$2,1			# 0x1
$L56:
	lw	$31,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	jr	$31
	addiu	$sp,$sp,64

$L68:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_generate
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
