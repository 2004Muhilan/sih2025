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
	.frame	$sp,384,$31		# vars= 328, regs= 8/0, args= 16, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-384
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$7,$sp,28
	sw	$17,356($sp)
	addiu	$10,$5,64
	lw	$17,%got(__stack_chk_guard)($28)
	move	$2,$7
	sw	$31,380($sp)
	sw	$22,376($sp)
	sw	$21,372($sp)
	sw	$20,368($sp)
	sw	$19,364($sp)
	sw	$18,360($sp)
	sw	$16,352($sp)
	.cprestore	16
	lw	$3,0($17)
	sw	$3,348($sp)
$L2:
	lwl	$9,0($5)
	addiu	$2,$2,16
	lwl	$8,4($5)
	lwl	$6,8($5)
	lwl	$3,12($5)
	lwr	$9,3($5)
	lwr	$8,7($5)
	lwr	$6,11($5)
	lwr	$3,15($5)
	addiu	$5,$5,16
	sw	$9,-16($2)
	sw	$8,-12($2)
	sw	$6,-8($2)
	bne	$5,$10,$L2
	sw	$3,-4($2)

	lw	$13,80($sp)
	addiu	$24,$sp,284
	lw	$12,84($sp)
	move	$3,$7
	lw	$2,88($sp)
	lw	$11,36($sp)
	lw	$10,40($sp)
	lw	$9,44($sp)
	lw	$8,48($sp)
	lw	$6,52($sp)
	.option	pic0
	b	$L3
	.option	pic2
	lw	$14,56($sp)

$L12:
	move	$14,$5
$L3:
	lw	$5,32($3)
	move	$15,$2
	lw	$2,0($3)
	addiu	$3,$3,4
	xor	$2,$5,$2
	xor	$2,$2,$13
	xor	$2,$2,$11
	ror	$2,$2,31
	move	$13,$12
	move	$11,$10
	sw	$2,60($3)
	move	$10,$9
	move	$12,$15
	move	$9,$8
	move	$8,$6
	bne	$3,$24,$L12
	move	$6,$14

	lw	$19,0($4)
	li	$13,1518469120			# 0x5a820000
	lw	$18,4($4)
	li	$14,-899547136			# 0xffffffffca620000
	lw	$16,8($4)
	li	$12,-1894055936			# 0xffffffff8f1b0000
	lw	$25,12($4)
	li	$11,1859715072			# 0x6ed90000
	lw	$24,16($4)
	move	$3,$0
	li	$15,80			# 0x50
	addiu	$13,$13,31129
	move	$10,$24
	move	$5,$25
	move	$6,$16
	move	$20,$18
	move	$8,$19
	ori	$14,$14,0xc1d6
	ori	$12,$12,0xbcdc
	.option	pic0
	b	$L9
	.option	pic2
	ori	$11,$11,0xeba1

$L18:
	xor	$21,$21,$5
	move	$22,$11
$L5:
	ror	$9,$20,2
	lw	$20,0($7)
	ror	$2,$8,27
	addiu	$3,$3,1
	addu	$2,$2,$20
	addiu	$7,$7,4
	addu	$2,$2,$22
	addu	$2,$2,$21
	addu	$2,$2,$10
$L10:
	move	$10,$5
	move	$20,$8
	move	$5,$6
	move	$8,$2
	move	$6,$9
$L9:
	slt	$2,$3,20
	bne	$2,$0,$L17
	slt	$2,$3,40

	bne	$2,$0,$L18
	xor	$21,$20,$6

	slt	$2,$3,60
	beq	$2,$0,$L7
	or	$21,$6,$5

	and	$21,$21,$20
	and	$2,$6,$5
	or	$21,$21,$2
	.option	pic0
	b	$L5
	.option	pic2
	move	$22,$12

$L17:
	xor	$21,$6,$5
	and	$21,$21,$20
	xor	$21,$21,$5
	.option	pic0
	b	$L5
	.option	pic2
	move	$22,$13

$L7:
	lw	$9,0($7)
	ror	$2,$8,27
	xor	$21,$20,$6
	xor	$21,$21,$5
	addu	$2,$2,$9
	addiu	$3,$3,1
	addu	$2,$2,$14
	ror	$9,$20,2
	addu	$2,$2,$21
	addiu	$7,$7,4
	bne	$3,$15,$L10
	addu	$2,$2,$10

	lw	$7,348($sp)
	addu	$2,$2,$19
	lw	$3,0($17)
	addu	$8,$8,$18
	addu	$9,$9,$16
	sw	$2,0($4)
	addu	$25,$25,$6
	sw	$8,4($4)
	addu	$24,$24,$5
	sw	$9,8($4)
	sw	$25,12($4)
	bne	$7,$3,$L19
	sw	$24,16($4)

	lw	$31,380($sp)
	lw	$22,376($sp)
	lw	$21,372($sp)
	lw	$20,368($sp)
	lw	$19,364($sp)
	lw	$18,360($sp)
	lw	$17,356($sp)
	lw	$16,352($sp)
	jr	$31
	addiu	$sp,$sp,384

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
