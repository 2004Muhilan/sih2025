	.file	1 "xor_rotating.c"
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
	.ent	rotate_left
	.type	rotate_left, @function
rotate_left:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,12($fp)
	sb	$2,8($fp)
	lbu	$3,8($fp)
	lw	$2,12($fp)
	sll	$2,$3,$2
	seb	$3,$2
	lbu	$4,8($fp)
	li	$5,8			# 0x8
	lw	$2,12($fp)
	subu	$2,$5,$2
	sra	$2,$4,$2
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rotate_left
	.size	rotate_left, .-rotate_left
	.align	2
	.globl	xor_cipher_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_cipher_rotating
	.type	xor_cipher_rotating, @function
xor_cipher_rotating:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	sw	$0,28($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$3,28($fp)
	lw	$2,60($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,56($fp)
	addu	$2,$2,$3
	lbu	$2,0($2)
	sb	$2,27($fp)
	lw	$3,48($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$3,48($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lbu	$3,27($fp)
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$3,28($fp)
	lw	$2,60($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,56($fp)
	addu	$16,$2,$3
	lbu	$2,27($fp)
	li	$5,1			# 0x1
	move	$4,$2
	.option	pic0
	jal	rotate_left
	nop

	.option	pic2
	sb	$2,0($16)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L4:
	lw	$3,28($fp)
	lw	$2,52($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L5
	nop

	nop
	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_cipher_rotating
	.size	xor_cipher_rotating, .-xor_cipher_rotating
	.align	2
	.globl	xor_encrypt_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_encrypt_rotating
	.type	xor_encrypt_rotating, @function
xor_encrypt_rotating:
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
	lw	$6,316($fp)
	lw	$5,36($fp)
	lw	$4,28($fp)
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,44
	lw	$6,324($fp)
	lw	$5,32($fp)
	move	$4,$2
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,44
	lw	$7,324($fp)
	move	$6,$2
	lw	$5,316($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	xor_cipher_rotating
	nop

	.option	pic2
	lw	$28,16($fp)
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
	.end	xor_encrypt_rotating
	.size	xor_encrypt_rotating, .-xor_encrypt_rotating
	.align	2
	.globl	xor_decrypt_rotating
	.set	nomips16
	.set	nomicromips
	.ent	xor_decrypt_rotating
	.type	xor_decrypt_rotating, @function
xor_decrypt_rotating:
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
	jal	xor_encrypt_rotating
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
	.end	xor_decrypt_rotating
	.size	xor_decrypt_rotating, .-xor_decrypt_rotating
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
