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
	move	$2,$0
$L2:
	bne	$2,$5,$L3
	addu	$8,$4,$2

	jr	$31
	nop

$L3:
	teq	$7,$0,7
	divu	$0,$2,$7
	addiu	$2,$2,1
	lbu	$9,0($8)
	mfhi	$3
	addu	$3,$6,$3
	lbu	$3,0($3)
	xor	$3,$3,$9
	.option	pic0
	b	$L2
	.option	pic2
	sb	$3,0($8)

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
	move	$2,$4
	lw	$4,56($sp)
	lw	$25,%call16(memcpy)($28)
	sw	$18,32($sp)
	move	$18,$7
	sw	$17,28($sp)
	move	$17,$6
	sw	$16,24($sp)
	move	$6,$5
	sw	$31,36($sp)
	move	$16,$5
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$5,$2

	move	$7,$18
	lw	$28,16($sp)
	move	$6,$17
	lw	$31,36($sp)
	move	$5,$16
	lw	$18,32($sp)
	move	$4,$2
	lw	$17,28($sp)
	lw	$16,24($sp)
	.option	pic0
	j	xor_cipher_simple
	.option	pic2
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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.option	pic0
	j	xor_encrypt_simple
	nop

	.option	pic2
	.set	macro
	.set	reorder
	.end	xor_decrypt_simple
	.size	xor_decrypt_simple, .-xor_decrypt_simple
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
