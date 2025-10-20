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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	addiu	$1, $zero, 0
	sw	$zero, 28($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 36($fp)
	lw	$2, 28($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 32($fp)
	lw	$3, 28($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 28($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
$BB0_6:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	lw	$2, 24($fp)
	addiu	$1, $zero, 10
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_20
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_9:                                 #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 16($fp)
	addiu	$2, $zero, 4
	slt	$1, $1, $2
	bgtz	$1, $BB0_11
	nop
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	b	$BB0_13
	nop
$BB0_11:                                #   in Loop: Header=BB0_9 Depth=2
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sll	$2, $2, 4
	addiu	$3, $zero, 12
	addu	$2, $2, $3
	lw	$3, 16($fp)
	addu	$2, $2, $3
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$3, 16($fp)
	addiu	$2, $fp, 20
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_9
	nop
$BB0_13:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lbu	$2, 20($fp)
	sb	$2, 15($fp)
	lbu	$2, 21($fp)
	sb	$2, 20($fp)
	lbu	$2, 22($fp)
	sb	$2, 21($fp)
	lbu	$2, 23($fp)
	sb	$2, 22($fp)
	lbu	$2, 15($fp)
	sb	$2, 23($fp)
	lw	$2, 24($fp)
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	lw	$1, %got(rcon)($1)
	addiu	$1, $1, %lo(rcon)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$2, $1, 255
	lbu	$1, 20($fp)
	andi	$1, $1, 255
	xor	$1, $1, $2
	sb	$1, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_14:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 8($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_16
	nop
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	b	$BB0_18
	nop
$BB0_16:                                #   in Loop: Header=BB0_14 Depth=2
	lw	$1, 32($fp)
	lw	$2, 24($fp)
	addiu	$3, $zero, 1
	subu	$2, $2, $3
	sll	$2, $2, 4
	lw	$3, 8($fp)
	addu	$2, $2, $3
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$3, 8($fp)
	addiu	$2, $zero, 4
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$3
	addiu	$2, $fp, 20
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 32($fp)
	lw	$3, 24($fp)
	sll	$3, $3, 4
	lw	$4, 8($fp)
	addu	$3, $3, $4
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_14
	nop
$BB0_18:                                #   in Loop: Header=BB0_6 Depth=1
	b	$BB0_19
	nop
$BB0_19:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB0_6
	nop
$BB0_20:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
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
	.addrsig_sym rcon
	.text
