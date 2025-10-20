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
	lw	$1, 0($4)
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
	sw	$1, 0($5)
	lw	$1, 4($4)
	sw	$1, 4($5)
	lw	$1, 8($4)
	sw	$1, 8($5)
	lw	$1, 12($4)
	sw	$1, 12($5)
	lw	$1, 16($4)
	sw	$1, 16($5)
	lw	$1, 20($4)
	sw	$1, 20($5)
	lw	$1, 24($4)
	sw	$1, 24($5)
	lw	$1, 28($4)
	sw	$1, 28($5)
	lw	$1, 32($4)
	sw	$1, 32($5)
	lw	$1, 36($4)
	sw	$1, 36($5)
	lw	$1, 40($4)
	sw	$1, 40($5)
	lw	$1, 44($4)
	sw	$1, 44($5)
	lw	$1, 48($4)
	sw	$1, 48($5)
	lw	$1, 52($4)
	sw	$1, 52($5)
	lw	$1, 56($4)
	sw	$1, 56($5)
	lw	$1, 60($4)
	sw	$1, 60($5)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	addiu	$2, $2, 4
	lw	$4, 52($1)
	lw	$6, 32($1)
	xor	$4, $6, $4
	lw	$6, 8($1)
	xor	$4, $4, $6
	lw	$6, 0($1)
	xor	$4, $4, $6
	rotr	$4, $4, 31
	bne	$2, $3, $BB0_1
	sw	$4, 64($1)
# %bb.2:
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
