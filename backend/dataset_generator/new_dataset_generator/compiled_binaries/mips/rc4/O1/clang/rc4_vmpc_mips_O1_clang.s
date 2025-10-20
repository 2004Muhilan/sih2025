	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_vmpc.c"
	.globl	rc4_vmpc_variant                # -- Begin function rc4_vmpc_variant
	.p2align	2
	.type	rc4_vmpc_variant,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_vmpc_variant
rc4_vmpc_variant:                       # @rc4_vmpc_variant
	.frame	$sp,256,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -256
	addiu	$3, $zero, 0
	addiu	$2, $sp, 0
	addiu	$6, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	sb	$3, 0($1)
	addiu	$3, $3, 1
	bne	$3, $6, $BB0_1
	nop
# %bb.2:
	beqz	$5, $BB0_5
	nop
# %bb.3:
	addiu	$3, $zero, 0
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 0($4)
	addu	$6, $2, $1
	lbu	$6, 0($6)
	addu	$3, $6, $3
	andi	$3, $3, 255
	addu	$3, $2, $3
	lbu	$3, 0($3)
	addiu	$6, $4, 1
	addiu	$5, $5, -1
	addu	$7, $2, $3
	lbu	$7, 0($7)
	addu	$7, $2, $7
	lbu	$7, 0($7)
	addiu	$7, $7, 1
	andi	$7, $7, 255
	addu	$7, $2, $7
	lbu	$7, 0($7)
	xor	$1, $7, $1
	sb	$1, 0($4)
	bnez	$5, $BB0_4
	move	$4, $6
$BB0_5:
	jr	$ra
	addiu	$sp, $sp, 256
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_vmpc_variant
$func_end0:
	.size	rc4_vmpc_variant, ($func_end0)-rc4_vmpc_variant
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
