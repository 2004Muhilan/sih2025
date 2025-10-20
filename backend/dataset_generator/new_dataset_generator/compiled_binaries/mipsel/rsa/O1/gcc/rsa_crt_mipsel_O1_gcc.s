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
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	move	$23,$4
	move	$22,$5
	lw	$18,80($sp)
	lw	$16,84($sp)
	lw	$17,88($sp)
	lw	$19,92($sp)
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$18
	move	$7,$16
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	mult	$19,$2
	madd	$3,$17
	mflo	$3
	multu	$2,$17
	mflo	$20
	mfhi	$21
	addu	$21,$3,$21
	lw	$25,%call16(__umoddi3)($28)
	move	$6,$17
	move	$7,$19
	move	$4,$23
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	mult	$16,$2
	madd	$3,$18
	mflo	$4
	multu	$2,$18
	mflo	$2
	mfhi	$3
	addu	$3,$4,$3
	addu	$4,$20,$2
	sltu	$5,$4,$20
	addu	$2,$21,$3
	mult	$19,$18
	madd	$16,$17
	mflo	$16
	multu	$18,$17
	mflo	$6
	mfhi	$7
	addu	$7,$16,$7
	lw	$25,%call16(__umoddi3)($28)
	addu	$5,$5,$2
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
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
