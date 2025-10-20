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
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$5,68($fp)
	sw	$4,64($fp)
	sw	$7,76($fp)
	sw	$6,72($fp)
	lw	$5,84($fp)
	lw	$4,80($fp)
	li	$7,-1			# 0xffffffffffffffff
	li	$6,-1			# 0xffffffffffffffff
	addu	$3,$5,$7
	sltu	$8,$3,$5
	addu	$2,$4,$6
	addu	$4,$8,$2
	move	$2,$4
	move	$5,$3
	move	$4,$2
	lw	$3,76($fp)
	lw	$2,72($fp)
	lw	$8,%call16(__umoddi3)($28)
	move	$7,$5
	move	$6,$4
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,28($fp)
	sw	$2,24($fp)
	lw	$5,92($fp)
	lw	$4,88($fp)
	li	$7,-1			# 0xffffffffffffffff
	li	$6,-1			# 0xffffffffffffffff
	addu	$3,$5,$7
	sltu	$8,$3,$5
	addu	$2,$4,$6
	addu	$4,$8,$2
	move	$2,$4
	move	$5,$3
	move	$4,$2
	lw	$3,76($fp)
	lw	$2,72($fp)
	lw	$8,%call16(__umoddi3)($28)
	move	$7,$5
	move	$6,$4
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,36($fp)
	sw	$2,32($fp)
	lw	$3,68($fp)
	lw	$2,64($fp)
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,84($fp)
	lw	$6,80($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,44($fp)
	sw	$2,40($fp)
	lw	$3,68($fp)
	lw	$2,64($fp)
	lw	$8,%call16(__umoddi3)($28)
	lw	$7,92($fp)
	lw	$6,88($fp)
	move	$5,$3
	move	$4,$2
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$3,52($fp)
	sw	$2,48($fp)
	lw	$3,40($fp)
	lw	$2,92($fp)
	mul	$3,$3,$2
	lw	$4,88($fp)
	lw	$2,44($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$3,44($fp)
	lw	$2,92($fp)
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$5,48($fp)
	lw	$4,84($fp)
	mul	$5,$5,$4
	lw	$6,80($fp)
	lw	$4,52($fp)
	mul	$4,$6,$4
	addu	$4,$5,$4
	lw	$6,52($fp)
	lw	$5,84($fp)
	multu	$6,$5
	mflo	$7
	mfhi	$6
	addu	$4,$4,$6
	move	$6,$4
	addu	$5,$3,$7
	sltu	$8,$5,$3
	addu	$4,$2,$6
	addu	$2,$8,$4
	move	$4,$2
	move	$11,$5
	move	$10,$4
	lw	$3,80($fp)
	lw	$2,92($fp)
	mul	$3,$3,$2
	lw	$4,88($fp)
	lw	$2,84($fp)
	mul	$2,$4,$2
	addu	$4,$3,$2
	lw	$3,84($fp)
	lw	$2,92($fp)
	multu	$3,$2
	mflo	$3
	mfhi	$2
	addu	$4,$4,$2
	move	$2,$4
	lw	$8,%call16(__umoddi3)($28)
	move	$7,$3
	move	$6,$2
	move	$5,$11
	move	$4,$10
	move	$25,$8
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	rsa_crt_decrypt
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
