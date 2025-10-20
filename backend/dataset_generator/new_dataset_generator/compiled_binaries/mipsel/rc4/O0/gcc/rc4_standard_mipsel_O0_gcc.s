	.file	1 "rc4_standard.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rc4_init
	.set	nomips16
	.set	nomicromips
	.ent	rc4_init
	.type	rc4_init, @function
rc4_init:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,8($fp)
	andi	$3,$2,0x00ff
	lw	$4,24($fp)
	lw	$2,8($fp)
	addu	$2,$4,$2
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$2,8($fp)
	slt	$2,$2,256
	bne	$2,$0,$L3
	nop

	sb	$0,6($fp)
	sw	$0,12($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L6:
	lbu	$2,6($fp)
	lw	$4,24($fp)
	lw	$3,12($fp)
	addu	$3,$4,$3
	lbu	$3,0($3)
	addu	$2,$2,$3
	lw	$4,12($fp)
	lw	$3,32($fp)
	teq	$3,$0,7
	divu	$0,$4,$3
	mfhi	$3
	move	$4,$3
	lw	$3,28($fp)
	addu	$3,$3,$4
	lbu	$3,0($3)
	addu	$3,$2,$3
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
	sb	$2,6($fp)
	lw	$3,24($fp)
	lw	$2,12($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,7($fp)
	lbu	$2,6($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$3,0($2)
	lw	$4,24($fp)
	lw	$2,12($fp)
	addu	$2,$4,$2
	sb	$3,0($2)
	lbu	$2,6($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lbu	$3,7($fp)
	sb	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L4:
	lw	$2,12($fp)
	slt	$2,$2,256
	bne	$2,$0,$L6
	nop

	lw	$2,24($fp)
	sb	$0,256($2)
	lw	$2,24($fp)
	sb	$0,257($2)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_init
	.size	rc4_init, .-rc4_init
	.align	2
	.globl	rc4_crypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L10:
	lw	$2,16($fp)
	lbu	$2,256($2)
	addiu	$3,$2,1
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xff
	and	$2,$3,$2
	bgez	$2,$L9
	nop

	addiu	$2,$2,-1
	li	$3,-256			# 0xffffffffffffff00
	or	$2,$2,$3
	addiu	$2,$2,1
$L9:
	andi	$3,$2,0x00ff
	lw	$2,16($fp)
	sb	$3,256($2)
	lw	$2,16($fp)
	lbu	$3,257($2)
	lw	$2,16($fp)
	lbu	$2,256($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$4
	lbu	$2,0($2)
	addu	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,16($fp)
	sb	$3,257($2)
	lw	$2,16($fp)
	lbu	$2,256($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,2($fp)
	lw	$2,16($fp)
	lbu	$2,257($2)
	move	$3,$2
	lw	$2,16($fp)
	lbu	$2,256($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$2,16($fp)
	addu	$2,$2,$4
	sb	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,257($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$3,2($fp)
	sb	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,256($2)
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$3,0($2)
	lw	$2,16($fp)
	lbu	$2,257($2)
	move	$4,$2
	lw	$2,16($fp)
	addu	$2,$2,$4
	lbu	$2,0($2)
	addu	$2,$3,$2
	andi	$2,$2,0x00ff
	move	$3,$2
	lw	$2,16($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,3($fp)
	lw	$3,20($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,20($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$3,3($fp)
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L8:
	lw	$3,4($fp)
	lw	$2,24($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L10
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_crypt
	.size	rc4_crypt, .-rc4_crypt
	.align	2
	.globl	rc4_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
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
	sw	$4,36($fp)
	sw	$5,316($fp)
	sw	$6,32($fp)
	sw	$7,324($fp)
	lw	$2,328($fp)
	sw	$2,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,300($fp)
	addiu	$2,$fp,40
	lw	$6,316($fp)
	lw	$5,36($fp)
	move	$4,$2
	.option	pic0
	jal	rc4_init
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$6,324($fp)
	lw	$5,32($fp)
	lw	$4,28($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,40
	lw	$6,324($fp)
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	rc4_crypt
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,300($fp)
	lw	$2,0($2)
	beq	$3,$2,$L12
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L12:
	move	$sp,$fp
	lw	$31,308($sp)
	lw	$fp,304($sp)
	addiu	$sp,$sp,312
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_encrypt
	.size	rc4_encrypt, .-rc4_encrypt
	.align	2
	.globl	rc4_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
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
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$7,52($fp)
	lw	$6,48($fp)
	lw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	rc4_encrypt
	nop

	.option	pic2
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rc4_decrypt
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
