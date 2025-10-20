	.file	1 "xor_simple.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	xor_cipher_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_cipher_simple
	.type	xor_cipher_simple, @function
xor_cipher_simple:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L9
	move	$2,$0

$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	lbu	$8,0($4)
	addiu	$4,$4,1
	addiu	$2,$2,1
	mfhi	$3
	addu	$3,$6,$3
	lbu	$3,0($3)
	xor	$3,$3,$8
	bne	$5,$2,$L3
	sb	$3,-1($4)

$L9:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	xor_cipher_simple
	.size	xor_cipher_simple, .-xor_cipher_simple
	.align	2
	.globl	xor_encrypt_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_encrypt_simple
	.type	xor_encrypt_simple, @function
xor_encrypt_simple:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,32($sp)
	move	$18,$6
	sw	$17,28($sp)
	move	$6,$5
	sw	$16,24($sp)
	move	$17,$5
	sw	$31,36($sp)
	move	$5,$4
	.cprestore	16
	move	$16,$7
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	lw	$4,56($sp)

	beq	$17,$0,$L18
	lw	$31,36($sp)

	lw	$3,56($sp)
	move	$2,$0
$L12:
	teq	$16,$0,7
	divu	$0,$2,$16
	lbu	$7,0($3)
	addiu	$3,$3,1
	addiu	$2,$2,1
	mfhi	$4
	addu	$4,$18,$4
	lbu	$4,0($4)
	xor	$4,$4,$7
	bne	$17,$2,$L12
	sb	$4,-1($3)

	lw	$31,36($sp)
$L18:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	xor_encrypt_simple
	.size	xor_encrypt_simple, .-xor_encrypt_simple
	.align	2
	.globl	xor_decrypt_simple
	.set	nomips16
	.set	nomicromips
	.ent	xor_decrypt_simple
	.type	xor_decrypt_simple, @function
xor_decrypt_simple:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-40
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,32($sp)
	move	$18,$6
	sw	$17,28($sp)
	move	$6,$5
	sw	$16,24($sp)
	move	$17,$5
	sw	$31,36($sp)
	move	$5,$4
	.cprestore	16
	move	$16,$7
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	lw	$4,56($sp)

	beq	$17,$0,$L27
	lw	$31,36($sp)

	lw	$3,56($sp)
	move	$2,$0
$L21:
	teq	$16,$0,7
	divu	$0,$2,$16
	lbu	$7,0($3)
	addiu	$3,$3,1
	addiu	$2,$2,1
	mfhi	$4
	addu	$4,$18,$4
	lbu	$4,0($4)
	xor	$4,$4,$7
	bne	$17,$2,$L21
	sb	$4,-1($3)

	lw	$31,36($sp)
$L27:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	xor_decrypt_simple
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
