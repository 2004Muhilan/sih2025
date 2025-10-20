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
	.frame	$sp,328,$31		# vars= 264, regs= 9/0, args= 16, gp= 8
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-328
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$6,64			# 0x40
	sw	$17,296($sp)
	lw	$17,%got(__stack_chk_guard)($28)
	lw	$25,%call16(memcpy)($28)
	sw	$16,292($sp)
	move	$16,$4
	addiu	$4,$sp,28
	.cprestore	16
	sw	$31,324($sp)
	sw	$23,320($sp)
	sw	$22,316($sp)
	sw	$21,312($sp)
	sw	$20,308($sp)
	sw	$19,304($sp)
	sw	$18,300($sp)
	lw	$2,0($17)
	sw	$2,284($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	addiu	$7,$sp,220
	lw	$28,16($sp)
	move	$4,$2
	move	$15,$2
	move	$3,$2
$L2:
	lw	$5,4($3)
	addiu	$3,$3,4
	lw	$6,52($3)
	ror	$8,$5,18
	ror	$2,$5,7
	srl	$5,$5,3
	xor	$2,$2,$8
	lw	$8,32($3)
	xor	$2,$2,$5
	lw	$5,-4($3)
	addu	$5,$5,$8
	ror	$8,$6,19
	addu	$2,$2,$5
	ror	$5,$6,17
	srl	$6,$6,10
	xor	$5,$5,$8
	xor	$5,$5,$6
	addu	$2,$2,$5
	bne	$3,$7,$L2
	sw	$2,60($3)

	lw	$18,0($16)
	li	$19,1116340224			# 0x428a0000
	lw	$25,4($16)
	addiu	$4,$4,256
	lw	$24,8($16)
	addiu	$19,$19,12184
	lw	$14,12($16)
	move	$5,$18
	lw	$13,16($16)
	move	$7,$25
	lw	$12,20($16)
	move	$6,$24
	lw	$10,24($16)
	move	$21,$14
	lw	$8,28($16)
	move	$3,$13
	move	$11,$12
	move	$9,$10
	move	$20,$8
$L3:
	ror	$22,$3,11
	ror	$2,$3,6
	and	$23,$3,$11
	xor	$2,$2,$22
	ror	$22,$3,25
	addiu	$15,$15,4
	xor	$2,$2,$22
	lw	$22,-4($15)
	addu	$22,$22,$19
	addu	$2,$2,$22
	nor	$22,$0,$3
	and	$22,$22,$9
	xor	$22,$22,$23
	addu	$2,$2,$22
	ror	$22,$5,13
	addu	$2,$2,$20
	ror	$20,$5,2
	and	$23,$7,$6
	xor	$20,$20,$22
	ror	$22,$5,22
	xor	$22,$20,$22
	xor	$20,$7,$6
	and	$20,$20,$5
	xor	$20,$20,$23
	addu	$20,$22,$20
	addu	$22,$2,$21
	addu	$2,$2,$20
	move	$21,$6
	bne	$4,$15,$L5
	move	$20,$9

	addu	$18,$18,$2
	addu	$12,$12,$3
	lw	$3,284($sp)
	lw	$2,0($17)
	addu	$25,$25,$5
	addu	$24,$24,$7
	sw	$18,0($16)
	addu	$14,$14,$6
	sw	$25,4($16)
	addu	$13,$13,$22
	sw	$24,8($16)
	addu	$10,$10,$11
	sw	$14,12($16)
	addu	$8,$8,$9
	sw	$13,16($16)
	sw	$12,20($16)
	sw	$10,24($16)
	beq	$3,$2,$L4
	sw	$8,28($16)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	move	$9,$11
	move	$6,$7
	move	$11,$3
	move	$7,$5
	move	$3,$22
	.option	pic0
	b	$L3
	.option	pic2
	move	$5,$2

$L4:
	lw	$31,324($sp)
	lw	$23,320($sp)
	lw	$22,316($sp)
	lw	$21,312($sp)
	lw	$20,308($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	jr	$31
	addiu	$sp,$sp,328

	.set	macro
	.set	reorder
	.end	sha256_compress
	.size	sha256_compress, .-sha256_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
