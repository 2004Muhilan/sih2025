	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_sbox_substitution.c"
	.globl	des_sbox                        # -- Begin function des_sbox
	.p2align	2
	.type	des_sbox,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_sbox
des_sbox:                               # @des_sbox
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sb	$4, 15($fp)
	sw	$5, 8($fp)
	lbu	$2, 15($fp)
	andi	$2, $2, 255
	addiu	$3, $zero, 32
	and	$2, $2, $3
	sra	$2, $2, 4
	lbu	$3, 15($fp)
	andi	$3, $3, 255
	addiu	$4, $zero, 1
	and	$3, $3, $4
	or	$2, $2, $3
	sw	$2, 4($fp)
	lbu	$2, 15($fp)
	andi	$2, $2, 255
	addiu	$3, $zero, 30
	and	$2, $2, $3
	sra	$2, $2, 1
	sw	$2, 0($fp)
	lw	$2, 4($fp)
	lw	$1, %got(S1)($1)
	addiu	$1, $1, %lo(S1)
	sll	$2, $2, 4
	addu	$1, $1, $2
	lw	$2, 0($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$2, $1, 255
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_sbox
$func_end0:
	.size	des_sbox, ($func_end0)-des_sbox
                                        # -- End function
	.type	S1,@object                      # @S1
	.section	.rodata,"a",@progbits
S1:
	.ascii	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t\000\007"
	.ascii	"\000\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.asciz	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.ascii	"\017\f\b\002\004\t\001\007\005\013\003\016\n\000\006\r"
	.size	S1, 64

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym S1
	.text
