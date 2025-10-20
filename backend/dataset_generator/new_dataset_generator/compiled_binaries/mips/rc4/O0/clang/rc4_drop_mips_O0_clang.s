	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	2
	.type	rc4_drop_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_init
rc4_drop_init:                          # @rc4_drop_init
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	sw	$5, 32($fp)
	sw	$6, 28($fp)
	sw	$7, 24($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$2, 36($fp)
	lw	$3, 20($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sb	$zero, 19($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 256
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lbu	$1, 19($fp)
	andi	$1, $1, 255
	lw	$2, 36($fp)
	lw	$3, 12($fp)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lw	$2, 32($fp)
	lw	$4, 12($fp)
	lw	$3, 28($fp)
	divu	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	sb	$1, 19($fp)
	lw	$1, 36($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 11($fp)
	lw	$1, 36($fp)
	lbu	$2, 19($fp)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 36($fp)
	lw	$3, 12($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 11($fp)
	lw	$2, 36($fp)
	lbu	$3, 19($fp)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_6
	nop
$BB0_10:
	lw	$1, 36($fp)
	addiu	$2, $zero, 0
	sb	$zero, 256($1)
	lw	$1, 36($fp)
	addiu	$2, $zero, 0
	sb	$zero, 257($1)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_15
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 36($fp)
	lbu	$1, 256($1)
	andi	$1, $1, 255
	addiu	$2, $zero, 1
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 36($fp)
	sb	$1, 256($2)
	lw	$1, 36($fp)
	lbu	$1, 257($1)
	andi	$1, $1, 255
	lw	$2, 36($fp)
	lw	$3, 36($fp)
	lbu	$3, 256($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 36($fp)
	sb	$1, 257($2)
	lw	$1, 36($fp)
	lw	$2, 36($fp)
	lbu	$2, 256($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 3($fp)
	lw	$1, 36($fp)
	lw	$2, 36($fp)
	lbu	$2, 257($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 36($fp)
	lw	$3, 36($fp)
	lbu	$3, 256($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 3($fp)
	lw	$2, 36($fp)
	lw	$3, 36($fp)
	lbu	$3, 257($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_11
	nop
$BB0_15:
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_init
$func_end0:
	.size	rc4_drop_init, ($func_end0)-rc4_drop_init
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	2
	.type	rc4_drop_crypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_crypt
rc4_drop_crypt:                         # @rc4_drop_crypt
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB1_3
	nop
# %bb.2:
	b	$BB1_5
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 20($fp)
	lbu	$1, 256($1)
	andi	$1, $1, 255
	addiu	$2, $zero, 1
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 20($fp)
	sb	$1, 256($2)
	lw	$1, 20($fp)
	lbu	$1, 257($1)
	andi	$1, $1, 255
	lw	$2, 20($fp)
	lw	$3, 20($fp)
	lbu	$3, 256($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	addu	$2, $1, $2
	addiu	$1, $zero, 256
	div	$zero, $2, $1
	teq	$1, $zero, 7
	mfhi	$1
	lw	$2, 20($fp)
	sb	$1, 257($2)
	lw	$1, 20($fp)
	lw	$2, 20($fp)
	lbu	$2, 256($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 7($fp)
	lw	$1, 20($fp)
	lw	$2, 20($fp)
	lbu	$2, 257($2)
	andi	$2, $2, 255
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 20($fp)
	lbu	$3, 256($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 7($fp)
	lw	$2, 20($fp)
	lw	$3, 20($fp)
	lbu	$3, 257($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 20($fp)
	lw	$2, 20($fp)
	lw	$3, 20($fp)
	lbu	$3, 256($3)
	andi	$3, $3, 255
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	lw	$3, 20($fp)
	lw	$4, 20($fp)
	lbu	$4, 257($4)
	andi	$4, $4, 255
	addu	$3, $3, $4
	lbu	$3, 0($3)
	andi	$3, $3, 255
	addu	$3, $2, $3
	addiu	$2, $zero, 256
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 6($fp)
	lbu	$1, 6($fp)
	andi	$3, $1, 255
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB1_1
	nop
$BB1_5:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_crypt
$func_end1:
	.size	rc4_drop_crypt, ($func_end1)-rc4_drop_crypt
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	2
	.type	rc4_drop_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_encrypt
rc4_drop_encrypt:                       # @rc4_drop_encrypt
	.frame	$fp,304,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -304
	sw	$ra, 300($sp)                   # 4-byte Folded Spill
	sw	$fp, 296($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	lw	$2, 320($fp)
	sw	$4, 292($fp)
	sw	$5, 288($fp)
	sw	$6, 284($fp)
	sw	$7, 280($fp)
	lw	$5, 292($fp)
	lw	$6, 288($fp)
	addiu	$4, $fp, 22
	addiu	$7, $zero, 768
	lw	$25, %got(rc4_drop_init)($1)
	.reloc ($tmp0), R_MIPS_JALR, rc4_drop_init
$tmp0:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$4, 320($fp)
	lw	$5, 284($fp)
	lw	$6, 280($fp)
	lw	$25, %got(memcpy)($1)
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	nop
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$5, 320($fp)
	lw	$6, 280($fp)
	addiu	$4, $fp, 22
	lw	$25, %got(rc4_drop_crypt)($1)
	.reloc ($tmp2), R_MIPS_JALR, rc4_drop_crypt
$tmp2:
	jalr	$25
	nop
	move	$sp, $fp
	lw	$fp, 296($sp)                   # 4-byte Folded Reload
	lw	$ra, 300($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 304
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_encrypt
$func_end2:
	.size	rc4_drop_encrypt, ($func_end2)-rc4_drop_encrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rc4_drop_init
	.addrsig_sym rc4_drop_crypt
	.text
