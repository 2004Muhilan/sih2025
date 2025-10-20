	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_message_schedule.c"
	.globl	sha1_message_schedule           # -- Begin function sha1_message_schedule
	.p2align	2
	.type	sha1_message_schedule,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_message_schedule
sha1_message_schedule:                  # @sha1_message_schedule
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	addu	$6, $4, $2
	lw	$6, 0($6)
	addiu	$2, $2, 4
	bne	$2, $3, $BB0_1
	sw	$6, 0($1)
# %bb.2:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lw	$4, 52($1)
	lw	$6, 32($1)
	xor	$4, $6, $4
	lw	$6, 8($1)
	xor	$4, $4, $6
	lw	$6, 0($1)
	xor	$4, $4, $6
	rotr	$4, $4, 31
	addiu	$2, $2, 4
	bne	$2, $3, $BB0_3
	sw	$4, 64($1)
# %bb.4:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_message_schedule
$func_end0:
	.size	sha1_message_schedule, ($func_end0)-sha1_message_schedule
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
