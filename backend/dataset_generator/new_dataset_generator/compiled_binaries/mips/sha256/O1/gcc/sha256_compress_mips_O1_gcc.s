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
	.frame	$sp,320,$31		# vars= 264, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-320
	sw	$31,316($sp)
	sw	$22,312($sp)
	sw	$21,308($sp)
	sw	$20,304($sp)
	sw	$19,300($sp)
	sw	$18,296($sp)
	sw	$17,292($sp)
	sw	$16,288($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,284($sp)
	addiu	$6,$sp,28
	addiu	$7,$sp,92
	move	$2,$6
$L2:
	lw	$3,0($5)
	sw	$3,0($2)
	addiu	$2,$2,4
	bne	$2,$7,$L2
	addiu	$5,$5,4

	addiu	$9,$6,192
	move	$3,$6
$L3:
	lw	$5,4($3)
	lw	$7,56($3)
	ror	$2,$5,7
	ror	$8,$5,18
	xor	$2,$2,$8
	srl	$5,$5,3
	xor	$2,$2,$5
	lw	$5,0($3)
	lw	$8,36($3)
	addu	$5,$5,$8
	addu	$2,$2,$5
	ror	$5,$7,17
	ror	$8,$7,19
	xor	$5,$5,$8
	srl	$7,$7,10
	xor	$5,$5,$7
	addu	$2,$2,$5
	sw	$2,64($3)
	addiu	$3,$3,4
	bne	$9,$3,$L3
	addiu	$13,$6,256

	lw	$19,0($4)
	lw	$18,4($4)
	lw	$17,8($4)
	lw	$16,12($4)
	lw	$25,16($4)
	lw	$24,20($4)
	lw	$15,24($4)
	lw	$14,28($4)
	move	$20,$14
	move	$9,$15
	move	$10,$24
	move	$3,$25
	move	$11,$16
	move	$7,$17
	move	$8,$18
	move	$5,$19
	li	$12,1116340224			# 0x428a0000
	.option	pic0
	b	$L4
	.option	pic2
	addiu	$12,$12,12184

$L6:
	move	$9,$10
	move	$10,$3
	move	$3,$21
	move	$7,$8
	move	$8,$5
	move	$5,$2
$L4:
	ror	$2,$3,6
	ror	$21,$3,11
	xor	$2,$2,$21
	ror	$21,$3,25
	xor	$2,$2,$21
	lw	$21,0($6)
	addu	$21,$21,$12
	addu	$2,$2,$21
	nor	$21,$0,$3
	and	$21,$21,$9
	and	$22,$3,$10
	xor	$21,$21,$22
	addu	$2,$2,$21
	addu	$2,$2,$20
	ror	$20,$5,2
	ror	$21,$5,13
	xor	$20,$20,$21
	ror	$21,$5,22
	xor	$20,$20,$21
	xor	$21,$8,$7
	and	$21,$21,$5
	and	$22,$8,$7
	xor	$21,$21,$22
	addu	$20,$20,$21
	addu	$21,$2,$11
	addu	$2,$2,$20
	addiu	$6,$6,4
	move	$11,$7
	bne	$6,$13,$L6
	move	$20,$9

	addu	$19,$19,$2
	sw	$19,0($4)
	addu	$18,$18,$5
	sw	$18,4($4)
	addu	$17,$17,$8
	sw	$17,8($4)
	addu	$16,$16,$7
	sw	$16,12($4)
	addu	$25,$25,$21
	sw	$25,16($4)
	addu	$24,$24,$3
	sw	$24,20($4)
	addu	$15,$15,$10
	sw	$15,24($4)
	addu	$14,$14,$9
	sw	$14,28($4)
	lw	$3,284($sp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	bne	$3,$2,$L10
	lw	$31,316($sp)

	lw	$22,312($sp)
	lw	$21,308($sp)
	lw	$20,304($sp)
	lw	$19,300($sp)
	lw	$18,296($sp)
	lw	$17,292($sp)
	lw	$16,288($sp)
	jr	$31
	addiu	$sp,$sp,320

$L10:
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
