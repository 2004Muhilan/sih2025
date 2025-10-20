	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	2
	.type	sha256_message_schedule,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_message_schedule
sha256_message_schedule:                # @sha256_message_schedule
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$1, 0($4)
	sw	$1, 0($5)
	lw	$1, 4($4)
	sw	$1, 4($5)
	lw	$1, 8($4)
	sw	$1, 8($5)
	addiu	$2, $5, 36
	addiu	$3, $zero, 0
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
	addiu	$4, $zero, 192
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	lw	$5, -32($1)
	rotr	$6, $5, 18
	rotr	$7, $5, 7
	xor	$6, $7, $6
	lw	$7, 20($1)
	rotr	$8, $7, 19
	rotr	$9, $7, 17
	xor	$8, $9, $8
	srl	$5, $5, 3
	srl	$7, $7, 10
	xor	$7, $8, $7
	xor	$5, $6, $5
	lw	$6, -36($1)
	addu	$5, $5, $6
	lw	$6, 0($1)
	addiu	$3, $3, 4
	addu	$5, $5, $6
	addu	$5, $5, $7
	bne	$3, $4, $BB0_1
	sw	$5, 28($1)
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_message_schedule
$func_end0:
	.size	sha256_message_schedule, ($func_end0)-sha256_message_schedule
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
