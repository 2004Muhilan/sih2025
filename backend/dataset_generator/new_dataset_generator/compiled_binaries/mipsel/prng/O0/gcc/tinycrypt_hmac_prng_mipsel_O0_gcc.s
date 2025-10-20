	.file	1 "tinycrypt_hmac_prng.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	MIN_SLEN, @object
	.size	MIN_SLEN, 4
MIN_SLEN:
	.word	32
	.align	2
	.type	MAX_SLEN, @object
	.size	MAX_SLEN, 4
MAX_SLEN:
	.word	-1
	.align	2
	.type	MAX_PLEN, @object
	.size	MAX_PLEN, 4
MAX_PLEN:
	.word	-1
	.align	2
	.type	MAX_ALEN, @object
	.size	MAX_ALEN, 4
MAX_ALEN:
	.word	-1
	.align	2
	.type	MAX_GENS, @object
	.size	MAX_GENS, 4
MAX_GENS:
	.word	-1
	.align	2
	.type	MAX_OUT, @object
	.size	MAX_OUT, 4
MAX_OUT:
	.word	524288
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update
	.type	update, @function
update:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,64($fp)
	sw	$7,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,44($fp)
	sb	$0,42($fp)
	li	$2,1			# 0x1
	sb	$2,43($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_set_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_init)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	addiu	$3,$fp,42
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L2
	nop

	lw	$2,64($fp)
	beq	$2,$0,$L2
	nop

	lw	$2,36($fp)
	lw	$6,64($fp)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L2:
	lw	$2,28($fp)
	beq	$2,$0,$L3
	nop

	lw	$2,72($fp)
	beq	$2,$0,$L3
	nop

	lw	$2,36($fp)
	lw	$6,72($fp)
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L3:
	lw	$2,36($fp)
	addiu	$2,$2,240
	lw	$3,36($fp)
	move	$6,$3
	li	$5,32			# 0x20
	move	$4,$2
	lw	$2,%call16(tc_hmac_final)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_set_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_init)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	lw	$3,36($fp)
	move	$6,$3
	li	$5,32			# 0x20
	move	$4,$2
	lw	$2,%call16(tc_hmac_final)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L9
	nop

	lw	$2,64($fp)
	beq	$2,$0,$L9
	nop

	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_set_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_init)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	addiu	$3,$fp,43
	li	$6,1			# 0x1
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	lw	$6,64($fp)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	beq	$2,$0,$L7
	nop

	lw	$2,72($fp)
	beq	$2,$0,$L7
	nop

	lw	$2,36($fp)
	lw	$6,72($fp)
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L7:
	lw	$2,36($fp)
	addiu	$2,$2,240
	lw	$3,36($fp)
	move	$6,$3
	li	$5,32			# 0x20
	move	$4,$2
	lw	$2,%call16(tc_hmac_final)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_set_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_init)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,36($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,36($fp)
	addiu	$2,$2,272
	lw	$3,36($fp)
	move	$6,$3
	li	$5,32			# 0x20
	move	$4,$2
	lw	$2,%call16(tc_hmac_final)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L1
	nop

	.option	pic2
$L9:
	nop
$L1:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,44($fp)
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
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

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
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$2,40($fp)
	beq	$2,$0,$L11
	nop

	lw	$2,44($fp)
	beq	$2,$0,$L11
	nop

	li	$2,-1			# 0xffffffffffffffff
	lw	$3,48($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L12
	nop

$L11:
	move	$2,$0
	.option	pic0
	b	$L13
	nop

	.option	pic2
$L12:
	lw	$2,40($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,40($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	li	$5,1			# 0x1
	move	$4,$2
	lw	$2,%call16(_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$0,16($sp)
	move	$7,$0
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	update
	nop

	.option	pic2
	lw	$28,24($fp)
	lw	$2,40($fp)
	sw	$0,304($2)
	li	$2,1			# 0x1
$L13:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
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
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$2,40($fp)
	beq	$2,$0,$L15
	nop

	lw	$2,44($fp)
	beq	$2,$0,$L15
	nop

	li	$2,32			# 0x20
	lw	$3,48($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L15
	nop

	li	$2,-1			# 0xffffffffffffffff
	lw	$3,48($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L16
	nop

$L15:
	move	$2,$0
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L16:
	lw	$2,52($fp)
	beq	$2,$0,$L18
	nop

	lw	$2,56($fp)
	beq	$2,$0,$L19
	nop

	li	$2,-1			# 0xffffffffffffffff
	lw	$3,56($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L20
	nop

$L19:
	move	$2,$0
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L20:
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	update
	nop

	.option	pic2
	.option	pic0
	b	$L21
	nop

	.option	pic2
$L18:
	sw	$0,16($sp)
	move	$7,$0
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	update
	nop

	.option	pic2
$L21:
	li	$3,-1			# 0xffffffffffffffff
	lw	$2,40($fp)
	sw	$3,304($2)
	li	$2,1			# 0x1
$L17:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

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
	.frame	$fp,48,$31		# vars= 8, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	24
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	lw	$2,48($fp)
	beq	$2,$0,$L23
	nop

	lw	$2,56($fp)
	beq	$2,$0,$L23
	nop

	lw	$2,52($fp)
	beq	$2,$0,$L23
	nop

	li	$2,524288			# 0x80000
	lw	$3,52($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L24
	nop

$L23:
	move	$2,$0
	.option	pic0
	b	$L25
	nop

	.option	pic2
$L24:
	lw	$2,56($fp)
	lw	$2,304($2)
	bne	$2,$0,$L26
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L25
	nop

	.option	pic2
$L26:
	lw	$2,56($fp)
	lw	$2,304($2)
	addiu	$3,$2,-1
	lw	$2,56($fp)
	sw	$3,304($2)
	.option	pic0
	b	$L27
	nop

	.option	pic2
$L28:
	lw	$3,56($fp)
	lw	$2,56($fp)
	addiu	$2,$2,240
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_set_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_set_key
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,56($fp)
	move	$4,$2
	lw	$2,%call16(tc_hmac_init)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_init
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$3,56($fp)
	lw	$2,56($fp)
	addiu	$2,$2,272
	li	$6,32			# 0x20
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(tc_hmac_update)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_update
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,56($fp)
	addiu	$2,$2,272
	lw	$3,56($fp)
	move	$6,$3
	li	$5,32			# 0x20
	move	$4,$2
	lw	$2,%call16(tc_hmac_final)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_hmac_final
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$4,52($fp)
	lw	$3,52($fp)
	li	$2,32			# 0x20
	sltu	$4,$4,33
	movn	$2,$3,$4
	sw	$2,36($fp)
	lw	$2,56($fp)
	addiu	$2,$2,272
	lw	$7,36($fp)
	move	$6,$2
	lw	$5,36($fp)
	lw	$4,48($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$3,48($fp)
	lw	$2,36($fp)
	addu	$2,$3,$2
	sw	$2,48($fp)
	lw	$4,52($fp)
	lw	$3,52($fp)
	li	$2,32			# 0x20
	sltu	$4,$4,32
	movz	$2,$3,$4
	addiu	$2,$2,-32
	sw	$2,52($fp)
$L27:
	lw	$2,52($fp)
	bne	$2,$0,$L28
	nop

	sw	$0,16($sp)
	move	$7,$0
	move	$6,$0
	move	$5,$0
	lw	$4,56($fp)
	.option	pic0
	jal	update
	nop

	.option	pic2
	lw	$28,24($fp)
	li	$2,1			# 0x1
$L25:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_hmac_prng_generate
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
