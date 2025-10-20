	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_initial_permutation.c"
	.globl	des_initial_permutation         # -- Begin function des_initial_permutation
	.p2align	2
	.type	des_initial_permutation,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_initial_permutation
des_initial_permutation:                # @des_initial_permutation
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	sw	$4, 16($fp)
	sw	$5, 20($fp)
	sw	$zero, 12($fp)
	sw	$zero, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 64
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_8
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$2, 0($fp)                      # 4-byte Folded Reload
	addiu	$1, $fp, 16
	ori	$3, $1, 4
	lw	$4, 4($fp)
	lw	$2, %got(IP)($2)
	addiu	$2, $2, %lo(IP)
	addu	$2, $2, $4
	lbu	$4, 0($2)
	addiu	$2, $zero, 64
	subu	$2, $2, $4
	andi	$4, $2, 32
	movn	$1, $3, $4
	lw	$1, 0($1)
	srlv	$1, $1, $2
	andi	$1, $1, 1
	beqz	$1, $BB0_6
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_5
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$2, 4($fp)
	addiu	$1, $zero, 63
	subu	$1, $1, $2
	addiu	$2, $zero, 1
	sllv	$4, $2, $1
	andi	$1, $1, 32
	addiu	$3, $zero, 0
	movn	$3, $4, $1
	movn	$4, $zero, $1
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	or	$1, $1, $4
	or	$2, $2, $3
	sw	$2, 12($fp)
	sw	$1, 8($fp)
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_7
	nop
$BB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_1
	nop
$BB0_8:
	lw	$2, 8($fp)
	lw	$3, 12($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_initial_permutation
$func_end0:
	.size	des_initial_permutation, ($func_end0)-des_initial_permutation
                                        # -- End function
	.type	IP,@object                      # @IP
	.section	.rodata,"a",@progbits
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025\r\005?7/'\037\027\017\007"
	.size	IP, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym IP
	.text
