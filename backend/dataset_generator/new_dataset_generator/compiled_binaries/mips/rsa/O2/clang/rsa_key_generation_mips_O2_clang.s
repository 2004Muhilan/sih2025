	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_key_generation.c"
	.globl	rsa_generate_keys               # -- Begin function rsa_generate_keys
	.p2align	2
	.type	rsa_generate_keys,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_generate_keys
rsa_generate_keys:                      # @rsa_generate_keys
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $zero, 3233
	sw	$1, 4($4)
	addiu	$1, $zero, 17
	sw	$1, 4($5)
	sw	$zero, 0($4)
	sw	$zero, 0($5)
	sw	$zero, 0($6)
	jr	$ra
	sw	$zero, 4($6)
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_generate_keys
$func_end0:
	.size	rsa_generate_keys, ($func_end0)-rsa_generate_keys
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
