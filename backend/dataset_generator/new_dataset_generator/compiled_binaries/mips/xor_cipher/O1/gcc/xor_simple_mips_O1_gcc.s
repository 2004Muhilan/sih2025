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
	beq	$5,$0,$L5
	move	$2,$0

$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	mfhi	$3
	addu	$3,$6,$3
	lbu	$3,0($3)
	lbu	$8,0($4)
	xor	$3,$3,$8
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$5,$2,$L3
	addiu	$4,$4,1

$L5:
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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$5
	move	$17,$6
	move	$18,$7
	move	$6,$5
	move	$5,$4
	lw	$4,56($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$16
	lw	$4,56($sp)
	.option	pic0
	jal	xor_cipher_simple
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$31,36($sp)
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
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$16,$5
	move	$17,$6
	move	$18,$7
	move	$6,$5
	move	$5,$4
	lw	$4,56($sp)
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	move	$7,$18
	move	$6,$17
	move	$5,$16
	lw	$4,56($sp)
	.option	pic0
	jal	xor_cipher_simple
	nop

	.option	pic2
	lw	$28,16($sp)
	lw	$31,36($sp)
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
