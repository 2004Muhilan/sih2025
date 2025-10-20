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
	.frame	$sp,8,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$6, $2, $25
	addiu	$2, $zero, 0
	addiu	$3, $zero, 16
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	addu	$7, $4, $2
	lbu	$7, 0($7)
	addiu	$2, $2, 1
	bne	$2, $3, $BB0_1
	sb	$7, 0($1)
# %bb.2:
	addiu	$sp, $sp, -8
	addiu	$2, $zero, 1
	addiu	$3, $zero, 0
	lw	$1, %got(rcon)($6)
	addiu	$4, $1, %lo(rcon)
	addiu	$6, $sp, 4
	addiu	$7, $zero, 16
	addiu	$8, $zero, 10
	move	$9, $5
$BB0_3:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	sll	$1, $3, 4
	addu	$1, $5, $1
	lwl	$10, 15($1)
	lwr	$10, 12($1)
	sw	$10, 4($sp)
	lbu	$1, 5($sp)
	lbu	$11, 7($sp)
	lbu	$12, 6($sp)
	sb	$12, 5($sp)
	sb	$10, 7($sp)
	sb	$11, 6($sp)
	addu	$10, $2, $4
	lbu	$10, -1($10)
	xor	$1, $10, $1
	sb	$1, 4($sp)
	addiu	$10, $zero, 0
$BB0_4:                                 #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $9, $10
	lbu	$11, 0($1)
	andi	$12, $10, 3
	or	$12, $6, $12
	lbu	$12, 0($12)
	xor	$11, $12, $11
	addiu	$10, $10, 1
	bne	$10, $7, $BB0_4
	sb	$11, 16($1)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addiu	$9, $9, 16
	addiu	$3, $3, 1
	bne	$3, $8, $BB0_3
	addiu	$2, $2, 1
# %bb.6:
	jr	$ra
	addiu	$sp, $sp, 8
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
