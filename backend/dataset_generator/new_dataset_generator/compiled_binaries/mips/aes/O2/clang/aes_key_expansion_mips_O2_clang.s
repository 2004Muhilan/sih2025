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
	addiu	$sp, $sp, -8
	addu	$1, $2, $25
	lbu	$2, 0($4)
	sb	$2, 0($5)
	lbu	$2, 1($4)
	sb	$2, 1($5)
	lbu	$2, 2($4)
	sb	$2, 2($5)
	addiu	$2, $zero, 1
	addiu	$3, $zero, 0
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
	lw	$1, %got(rcon)($1)
	addiu	$4, $1, %lo(rcon)
	addiu	$6, $sp, 4
	addiu	$7, $zero, 16
	addiu	$8, $zero, 10
	move	$9, $5
$BB0_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	sll	$1, $3, 4
	addu	$1, $5, $1
	lwl	$10, 12($1)
	lwr	$10, 15($1)
	sw	$10, 4($sp)
	srl	$1, $10, 24
	sb	$1, 7($sp)
	lbu	$1, 5($sp)
	lbu	$11, 6($sp)
	sb	$11, 5($sp)
	sb	$10, 6($sp)
	addu	$10, $2, $4
	lbu	$10, -1($10)
	xor	$1, $10, $1
	sb	$1, 4($sp)
	addiu	$10, $zero, 0
$BB0_2:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $9, $10
	lbu	$11, 0($1)
	andi	$12, $10, 3
	or	$12, $6, $12
	lbu	$12, 0($12)
	xor	$11, $12, $11
	addiu	$10, $10, 1
	bne	$10, $7, $BB0_2
	sb	$11, 16($1)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$9, $9, 16
	addiu	$3, $3, 1
	bne	$3, $8, $BB0_1
	addiu	$2, $2, 1
# %bb.4:
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
