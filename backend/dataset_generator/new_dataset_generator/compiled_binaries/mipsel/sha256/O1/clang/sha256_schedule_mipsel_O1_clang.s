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
	addiu	$2, $5, 36
	addiu	$3, $zero, 0
	addiu	$4, $zero, 192
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
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
	bne	$3, $4, $BB0_3
	sw	$5, 28($1)
# %bb.4:
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
