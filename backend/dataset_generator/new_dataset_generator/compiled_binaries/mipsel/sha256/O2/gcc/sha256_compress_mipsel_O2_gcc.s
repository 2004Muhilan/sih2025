	.file	1 "sha256_compress.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_compress
	.set	nomips16
	.set	nomicromips
	.ent	sha256_compress
	.type	sha256_compress, @function
sha256_compress:
	.frame	$sp,336,$31		# vars= 272, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-336
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$25,$sp,36
	sw	$21,316($sp)
	addiu	$8,$5,64
	lw	$21,%got(__stack_chk_guard)($28)
	move	$2,$25
	sw	$16,296($sp)
	move	$16,$4
	sw	$31,332($sp)
	sw	$fp,328($sp)
	sw	$23,324($sp)
	sw	$22,320($sp)
	sw	$20,312($sp)
	sw	$19,308($sp)
	sw	$18,304($sp)
	sw	$17,300($sp)
	.cprestore	16
	lw	$3,0($21)
	sw	$3,292($sp)
$L2:
	lwl	$7,3($5)
	addiu	$2,$2,16
	lwl	$6,7($5)
	lwl	$4,11($5)
	lwl	$3,15($5)
	lwr	$7,0($5)
	lwr	$6,4($5)
	lwr	$4,8($5)
	lwr	$3,12($5)
	addiu	$5,$5,16
	sw	$7,-16($2)
	sw	$6,-12($2)
	sw	$4,-8($2)
	bne	$5,$8,$L2
	sw	$3,-4($2)

	lw	$13,72($sp)
	addiu	$6,$sp,40
	lw	$12,76($sp)
	addiu	$24,$sp,232
	lw	$11,80($sp)
	move	$10,$25
	lw	$9,84($sp)
	lw	$8,88($sp)
	lw	$5,92($sp)
	lw	$7,96($sp)
	lw	$4,36($sp)
$L3:
	move	$14,$4
	lw	$4,0($6)
	ror	$3,$5,17
	ror	$18,$5,19
	ror	$2,$4,7
	ror	$19,$4,18
	srl	$15,$5,10
	srl	$17,$4,3
	xor	$2,$2,$19
	xor	$3,$3,$18
	xor	$3,$3,$15
	xor	$2,$2,$17
	addu	$2,$2,$3
	addiu	$6,$6,4
	addu	$2,$2,$14
	move	$3,$7
	addu	$7,$2,$13
	move	$13,$12
	sw	$7,56($6)
	move	$12,$11
	move	$11,$9
	move	$9,$8
	move	$8,$5
	bne	$24,$6,$L3
	move	$5,$3

	lw	$23,0($16)
	li	$4,1116340224			# 0x428a0000
	lw	$22,4($16)
	addiu	$25,$25,256
	lw	$20,8($16)
	addiu	$4,$4,12184
	lw	$19,12($16)
	move	$7,$23
	lw	$18,16($16)
	move	$11,$22
	lw	$17,20($16)
	move	$9,$20
	lw	$13,24($16)
	move	$24,$19
	lw	$15,28($16)
	move	$6,$18
	move	$14,$17
	sw	$13,24($sp)
	.option	pic0
	b	$L4
	.option	pic2
	sw	$15,28($sp)

$L6:
	move	$13,$14
	move	$9,$11
	move	$14,$6
	move	$11,$7
	move	$6,$3
	move	$7,$2
$L4:
	lw	$2,0($10)
	ror	$8,$6,11
	ror	$3,$6,6
	ror	$5,$6,25
	addu	$2,$2,$4
	xor	$3,$3,$8
	xor	$3,$3,$5
	nor	$fp,$0,$6
	addu	$3,$3,$2
	and	$fp,$fp,$13
	ror	$8,$7,2
	ror	$12,$7,13
	and	$2,$6,$14
	xor	$2,$fp,$2
	ror	$5,$7,22
	xor	$fp,$11,$9
	addu	$2,$3,$2
	xor	$8,$8,$12
	and	$3,$11,$9
	and	$fp,$fp,$7
	xor	$fp,$fp,$3
	xor	$5,$8,$5
	addu	$2,$2,$15
	addu	$5,$5,$fp
	addiu	$10,$10,4
	addu	$3,$2,$24
	move	$15,$13
	addu	$2,$2,$5
	bne	$10,$25,$L6
	move	$24,$9

	addu	$23,$23,$2
	lw	$2,24($sp)
	addu	$18,$18,$3
	lw	$4,292($sp)
	lw	$5,0($21)
	addu	$22,$22,$7
	addu	$3,$2,$14
	lw	$2,28($sp)
	addu	$20,$20,$11
	sw	$23,0($16)
	addu	$19,$19,$9
	sw	$22,4($16)
	addu	$17,$17,$6
	sw	$20,8($16)
	addu	$2,$2,$13
	sw	$19,12($16)
	sw	$18,16($16)
	sw	$17,20($16)
	sw	$3,24($16)
	bne	$4,$5,$L11
	sw	$2,28($16)

	lw	$31,332($sp)
	lw	$fp,328($sp)
	lw	$23,324($sp)
	lw	$22,320($sp)
	lw	$21,316($sp)
	lw	$20,312($sp)
	lw	$19,308($sp)
	lw	$18,304($sp)
	lw	$17,300($sp)
	lw	$16,296($sp)
	jr	$31
	addiu	$sp,$sp,336

$L11:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	sha256_compress
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
