	.file	1 "rsa_pkcs1_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rsa_pkcs1_pad
	.set	nomips16
	.set	nomicromips
	.ent	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	lui	$28,%hi(__gnu_local_gp)
	li	$3,2			# 0x2
	sw	$17,28($sp)
	subu	$17,$7,$5
	sw	$18,32($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$18,$17,-1
	sw	$20,40($sp)
	sw	$19,36($sp)
	move	$20,$4
	sltu	$2,$18,3
	sw	$16,24($sp)
	sw	$31,44($sp)
	move	$19,$5
	.cprestore	16
	move	$16,$6
	sb	$0,0($6)
	bne	$2,$0,$L2
	sb	$3,1($6)

	lw	$25,%call16(memset)($28)
	addiu	$6,$17,-3
	li	$5,255			# 0xff
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	addiu	$4,$16,2

	lw	$28,16($sp)
$L2:
	addu	$18,$16,$18
	lw	$25,%call16(memcpy)($28)
	addu	$4,$16,$17
	move	$6,$19
	sb	$0,0($18)
	move	$5,$20
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jr	$25
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	rsa_pkcs1_pad
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
