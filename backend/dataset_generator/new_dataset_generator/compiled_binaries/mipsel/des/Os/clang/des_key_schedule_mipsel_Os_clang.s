	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_key_schedule
des_key_schedule:                       # @des_key_schedule
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	sll	$3, $5, 1
	addiu	$7, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	srlv	$1, $4, $2
	xori	$8, $2, 31
	sllv	$8, $3, $8
	or	$1, $8, $1
	srlv	$8, $5, $2
	andi	$9, $2, 32
	move	$10, $8
	movn	$10, $zero, $9
	andi	$10, $10, 65535
	sw	$10, 4($6)
	movn	$1, $8, $9
	sw	$1, 0($6)
	addiu	$2, $2, 4
	bne	$2, $7, $BB0_1
	addiu	$6, $6, 8
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_key_schedule
$func_end0:
	.size	des_key_schedule, ($func_end0)-des_key_schedule
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
