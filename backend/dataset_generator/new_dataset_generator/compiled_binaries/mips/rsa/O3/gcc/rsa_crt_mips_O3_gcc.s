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
	sw	$17,32($sp)
	sw	$16,28($sp)
	sw	$31,60($sp)
	sw	$23,56($sp)
	move	$23,$4
	sw	$22,52($sp)
	move	$22,$5
	sw	$21,48($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	.cprestore	16
	lw	$17,84($sp)
	lw	$20,80($sp)
	lw	$25,%call16(__umoddi3)($28)
	lw	$16,88($sp)
	move	$7,$17
	lw	$21,92($sp)
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	move	$6,$20

	move	$4,$23
	mult	$16,$3
	lw	$28,16($sp)
	madd	$2,$21
	move	$6,$16
	move	$7,$21
	lw	$25,%call16(__umoddi3)($28)
	move	$5,$22
	mflo	$2
	multu	$3,$21
	mfhi	$18
	mflo	$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$18,$2,$18

	mult	$16,$17
	lw	$28,16($sp)
	madd	$20,$21
	lw	$25,%call16(__umoddi3)($28)
	mflo	$16
	multu	$17,$21
	mflo	$7
	mfhi	$6
	mult	$20,$3
	madd	$2,$17
	mflo	$2
	multu	$3,$17
	addu	$6,$16,$6
	mfhi	$8
	mflo	$9
	addu	$8,$2,$8
	addu	$5,$19,$9
	addu	$4,$18,$8
	sltu	$2,$5,$19
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$2,$4

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
