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
	li	$6,64			# 0x40
	sw	$17,356($sp)
	lw	$17,%got(__stack_chk_guard)($28)
	lw	$25,%call16(memcpy)($28)
	sw	$16,352($sp)
	move	$16,$4
	addiu	$4,$sp,28
	.cprestore	16
	sw	$31,380($sp)
	sw	$22,376($sp)
	sw	$21,372($sp)
	sw	$20,368($sp)
	sw	$19,364($sp)
	sw	$18,360($sp)
	lw	$2,0($17)
	sw	$2,348($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	addiu	$5,$sp,284
	lw	$28,16($sp)
	move	$4,$2
	move	$3,$2
$L2:
	lw	$6,32($3)
	addiu	$3,$3,4
	lw	$2,48($3)
	xor	$2,$2,$6
	lw	$6,4($3)
	xor	$2,$2,$6
	lw	$6,-4($3)
	xor	$2,$2,$6
	ror	$2,$2,31
	bne	$3,$5,$L2
	sw	$2,60($3)

	lw	$13,0($16)
	li	$25,1518469120			# 0x5a820000
	lw	$11,4($16)
	li	$14,-899547136			# 0xffffffffca620000
	lw	$10,8($16)
	li	$15,-1894055936			# 0xffffffff8f1b0000
	lw	$9,12($16)
	li	$24,1859715072			# 0x6ed90000
	lw	$8,16($16)
	move	$6,$0
	addiu	$25,$25,31129
	li	$19,80			# 0x50
	move	$18,$8
	move	$3,$9
	move	$5,$10
	move	$7,$11
	move	$12,$13
	ori	$14,$14,0xc1d6
	ori	$15,$15,0xbcdc
	ori	$24,$24,0xeba1
$L7:
	slt	$2,$6,20
	beq	$2,$0,$L3
	slt	$2,$6,40

	xor	$2,$5,$3
	and	$2,$2,$7
	xor	$2,$2,$3
	move	$21,$25
$L4:
	lw	$22,0($4)
	ror	$20,$12,27
	addiu	$6,$6,1
	addiu	$4,$4,4
	addu	$20,$20,$22
	addu	$2,$20,$2
	ror	$20,$7,2
	addu	$2,$2,$21
	move	$7,$12
	addu	$2,$2,$18
	bne	$6,$19,$L9
	move	$18,$3

	addu	$13,$13,$2
	addu	$8,$8,$3
	lw	$3,348($sp)
	lw	$2,0($17)
	addu	$11,$11,$12
	addu	$10,$10,$20
	sw	$13,0($16)
	addu	$9,$9,$5
	sw	$11,4($16)
	sw	$10,8($16)
	sw	$9,12($16)
	beq	$3,$2,$L8
	sw	$8,16($16)

	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L9:
	move	$3,$5
	move	$12,$2
	.option	pic0
	b	$L7
	.option	pic2
	move	$5,$20

$L3:
	beq	$2,$0,$L5
	xor	$2,$7,$5

	xor	$2,$2,$3
	.option	pic0
	b	$L4
	.option	pic2
	move	$21,$24

$L5:
	slt	$2,$6,60
	beq	$2,$0,$L6
	and	$20,$5,$3

	or	$2,$5,$3
	and	$2,$2,$7
	or	$2,$2,$20
	.option	pic0
	b	$L4
	.option	pic2
	move	$21,$15

$L6:
	xor	$2,$7,$5
	xor	$2,$2,$3
	.option	pic0
	b	$L4
	.option	pic2
	move	$21,$14

$L8:
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

	.set	macro
	.set	reorder
	.end	sha1_compress
	.size	sha1_compress, .-sha1_compress
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
