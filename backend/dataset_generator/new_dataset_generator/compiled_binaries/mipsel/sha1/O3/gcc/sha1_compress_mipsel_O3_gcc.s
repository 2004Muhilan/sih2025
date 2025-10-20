	.file	1 "sha1_compress.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha1_compress
	.set	nomips16
	.set	nomicromips
	.ent	sha1_compress
	.type	sha1_compress, @function
sha1_compress:
	.frame	$sp,376,$31		# vars= 328, regs= 6/0, args= 16, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-376
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$10,$sp,28
	addiu	$11,$5,64
	sw	$31,372($sp)
	lw	$9,%got(__stack_chk_guard)($28)
	move	$2,$10
	sw	$20,368($sp)
	sw	$19,364($sp)
	sw	$18,360($sp)
	sw	$17,356($sp)
	sw	$16,352($sp)
	.cprestore	16
	lw	$3,0($9)
	sw	$3,348($sp)
$L2:
	lwl	$8,3($5)
	addiu	$2,$2,16
	lwl	$7,7($5)
	lwl	$6,11($5)
	lwl	$3,15($5)
	lwr	$8,0($5)
	lwr	$7,4($5)
	lwr	$6,8($5)
	lwr	$3,12($5)
	addiu	$5,$5,16
	sw	$8,-16($2)
	sw	$7,-12($2)
	sw	$6,-8($2)
	bne	$5,$11,$L2
	sw	$3,-4($2)

	lw	$16,80($sp)
	li	$8,16			# 0x10
	lw	$17,84($sp)
	li	$25,79			# 0x4f
	lw	$7,88($sp)
	move	$2,$10
	lw	$20,36($sp)
	lw	$18,40($sp)
	lw	$19,44($sp)
	lw	$13,48($sp)
	lw	$12,52($sp)
	.option	pic0
	b	$L3
	.option	pic2
	lw	$11,56($sp)

$L12:
	move	$11,$14
	move	$12,$15
	move	$13,$24
$L3:
	lw	$24,32($2)
	addiu	$2,$2,12
	lw	$6,-12($2)
	addiu	$8,$8,3
	xor	$6,$24,$6
	lw	$15,24($2)
	xor	$6,$6,$20
	lw	$5,-8($2)
	xor	$6,$6,$16
	lw	$14,28($2)
	ror	$16,$6,31
	lw	$3,-4($2)
	move	$20,$13
	xor	$5,$15,$5
	sw	$16,52($2)
	xor	$5,$5,$17
	xor	$3,$14,$3
	xor	$3,$3,$19
	xor	$5,$5,$18
	xor	$3,$3,$7
	ror	$17,$5,31
	ror	$7,$3,31
	sw	$17,56($2)
	move	$18,$12
	sw	$7,60($2)
	bne	$8,$25,$L12
	move	$19,$11

	lw	$5,332($sp)
	move	$3,$0
	lw	$2,312($sp)
	lw	$12,0($4)
	lw	$13,4($4)
	xor	$2,$2,$5
	lw	$5,288($sp)
	lw	$11,8($4)
	move	$8,$12
	lw	$14,12($4)
	move	$25,$13
	xor	$2,$2,$5
	lw	$5,280($sp)
	lw	$15,16($4)
	move	$7,$11
	move	$6,$14
	xor	$2,$2,$5
	ror	$2,$2,31
	move	$24,$15
	.option	pic0
	b	$L9
	.option	pic2
	sw	$2,344($sp)

$L18:
	xor	$5,$25,$7
	xor	$5,$5,$6
	ori	$16,$16,0xeba1
$L5:
	ror	$17,$25,2
	lw	$25,0($10)
	ror	$2,$8,27
	addiu	$3,$3,1
	addu	$2,$2,$25
	addiu	$10,$10,4
	addu	$2,$2,$16
	addu	$2,$2,$5
	addu	$2,$2,$24
$L10:
	move	$24,$6
	move	$25,$8
	move	$6,$7
	move	$8,$2
	move	$7,$17
$L9:
	slt	$2,$3,20
	bne	$2,$0,$L17
	slt	$2,$3,40

	bne	$2,$0,$L18
	li	$16,1859715072			# 0x6ed90000

	slt	$2,$3,60
	beq	$2,$0,$L7
	li	$16,-1894055936			# 0xffffffff8f1b0000

	or	$5,$7,$6
	and	$5,$5,$25
	and	$2,$7,$6
	or	$5,$5,$2
	.option	pic0
	b	$L5
	.option	pic2
	ori	$16,$16,0xbcdc

$L17:
	li	$16,1518469120			# 0x5a820000
	xor	$5,$7,$6
	and	$5,$5,$25
	addiu	$16,$16,31129
	.option	pic0
	b	$L5
	.option	pic2
	xor	$5,$5,$6

$L7:
	lw	$16,0($10)
	ror	$2,$8,27
	xor	$5,$25,$7
	xor	$5,$5,$6
	addu	$2,$2,$16
	li	$16,-899547136			# 0xffffffffca620000
	addiu	$3,$3,1
	ori	$16,$16,0xc1d6
	addu	$2,$2,$16
	ror	$17,$25,2
	addu	$2,$2,$5
	li	$5,80			# 0x50
	addu	$2,$2,$24
	bne	$3,$5,$L10
	addiu	$10,$10,4

	addu	$12,$12,$2
	lw	$3,348($sp)
	lw	$2,0($9)
	addu	$8,$8,$13
	addu	$11,$11,$17
	sw	$12,0($4)
	addu	$14,$14,$7
	sw	$8,4($4)
	addu	$15,$15,$6
	sw	$11,8($4)
	sw	$14,12($4)
	bne	$3,$2,$L19
	sw	$15,16($4)

	lw	$31,372($sp)
	lw	$20,368($sp)
	lw	$19,364($sp)
	lw	$18,360($sp)
	lw	$17,356($sp)
	lw	$16,352($sp)
	jr	$31
	addiu	$sp,$sp,376

$L19:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	sha1_compress
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
