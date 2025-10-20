	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_key_expansion.c"
	.globl	aes_key_expansion               # -- Begin function aes_key_expansion
	.p2align	2
	.type	aes_key_expansion,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_key_expansion
aes_key_expansion:                      # @aes_key_expansion
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lbu	$2, 0($4)
	addiu	$3, $zero, 0
	lw	$1, %got(rcon)($1)
	sb	$2, 0($5)
	lbu	$2, 1($4)
	sb	$2, 1($5)
	lbu	$2, 2($4)
	sb	$2, 2($5)
	addiu	$2, $5, 15
	lbu	$6, 3($4)
	sb	$6, 3($5)
	lbu	$6, 4($4)
	sb	$6, 4($5)
	lbu	$6, 5($4)
	sb	$6, 5($5)
	lbu	$6, 6($4)
	sb	$6, 6($5)
	lbu	$6, 7($4)
	sb	$6, 7($5)
	lbu	$6, 8($4)
	sb	$6, 8($5)
	lbu	$6, 9($4)
	sb	$6, 9($5)
	lbu	$6, 10($4)
	sb	$6, 10($5)
	lbu	$6, 11($4)
	sb	$6, 11($5)
	lbu	$6, 12($4)
	sb	$6, 12($5)
	lbu	$6, 13($4)
	sb	$6, 13($5)
	lbu	$6, 14($4)
	sb	$6, 14($5)
	lbu	$4, 15($4)
	sb	$4, 15($5)
	addiu	$4, $1, %lo(rcon)
	addiu	$5, $zero, 10
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $3
	lbu	$6, -2($2)
	lbu	$7, -3($2)
	lbu	$9, -1($2)
	lbu	$14, -14($2)
	lbu	$11, 0($2)
	lbu	$13, -13($2)
	lbu	$8, -10($2)
	lbu	$10, -9($2)
	lbu	$12, -15($2)
	lbu	$15, -11($2)
	addiu	$3, $3, 1
	lbu	$1, 0($1)
	xor	$13, $11, $13
	xor	$14, $9, $14
	xor	$10, $11, $10
	xor	$8, $9, $8
	xor	$1, $1, $6
	lbu	$6, -12($2)
	sb	$14, 2($2)
	sb	$13, 3($2)
	xor	$12, $1, $12
	xor	$6, $7, $6
	sb	$6, 4($2)
	xor	$6, $1, $15
	sb	$8, 6($2)
	sb	$10, 7($2)
	sb	$12, 1($2)
	sb	$6, 5($2)
	addiu	$6, $2, 16
	lbu	$8, -6($2)
	lbu	$14, -2($2)
	lbu	$13, -3($2)
	lbu	$10, -5($2)
	lbu	$12, -4($2)
	xor	$14, $9, $14
	xor	$8, $9, $8
	lbu	$9, -7($2)
	xor	$13, $1, $13
	xor	$12, $7, $12
	xor	$10, $11, $10
	xor	$1, $1, $9
	lbu	$9, -8($2)
	xor	$9, $7, $9
	sb	$9, 8($2)
	sb	$1, 9($2)
	sb	$8, 10($2)
	sb	$10, 11($2)
	sb	$12, 12($2)
	sb	$13, 13($2)
	sb	$14, 14($2)
	lbu	$1, -1($2)
	xor	$1, $11, $1
	sb	$1, 15($2)
	lbu	$1, 0($2)
	xor	$1, $7, $1
	sb	$1, 16($2)
	bne	$3, $5, $BB0_1
	move	$2, $6
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_key_expansion
$func_end0:
	.size	aes_key_expansion, ($func_end0)-aes_key_expansion
                                        # -- End function
	.type	rcon,@object                    # @rcon
	.section	.rodata,"a",@progbits
rcon:
	.ascii	"\001\002\004\b\020 @\200\0336"
	.size	rcon, 10

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
