	.file	1 "rsa_crt.c"
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
	.globl	rsa_crt_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	rsa_crt_decrypt
	.type	rsa_crt_decrypt, @function
rsa_crt_decrypt:
	.frame	$sp,64,$31		# vars= 0, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$31,60($sp)
	sw	$23,56($sp)
	move	$23,$4
	sw	$22,52($sp)
	move	$22,$5
	sw	$21,48($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	lw	$19,80($sp)
	lw	$20,84($sp)
	lw	$25,%call16(__umoddi3)($28)
	lw	$18,92($sp)
	move	$6,$19
	lw	$21,88($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$7,$20

	move	$4,$23
	mult	$18,$2
	lw	$28,16($sp)
	madd	$3,$21
	move	$6,$21
	move	$7,$18
	lw	$25,%call16(__umoddi3)($28)
	move	$5,$22
	mflo	$3
	multu	$2,$21
	mfhi	$17
	mflo	$16
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$17,$3,$17

	mult	$18,$19
	lw	$28,16($sp)
	madd	$20,$21
	lw	$25,%call16(__umoddi3)($28)
	mflo	$18
	multu	$19,$21
	mflo	$6
	mfhi	$7
	mult	$20,$2
	madd	$3,$19
	mflo	$4
	multu	$2,$19
	addu	$7,$18,$7
	mfhi	$3
	mflo	$2
	addu	$3,$4,$3
	addu	$4,$16,$2
	addu	$5,$17,$3
	sltu	$16,$4,$16
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$5,$16,$5

	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	jr	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	rsa_crt_decrypt
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
