	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_url_char_value
base64_url_char_value:                  # @base64_url_char_value
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sb	$4, 3($fp)
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 65
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_2
	nop
# %bb.1:
	b	$BB0_5
	nop
$BB0_2:
	lbu	$1, 3($fp)
	seb	$2, $1
	addiu	$1, $zero, 90
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_4
	nop
# %bb.3:
	b	$BB0_5
	nop
$BB0_4:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 65
	subu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_22
	nop
$BB0_5:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 97
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_7
	nop
# %bb.6:
	b	$BB0_10
	nop
$BB0_7:
	lbu	$1, 3($fp)
	seb	$2, $1
	addiu	$1, $zero, 122
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_9
	nop
# %bb.8:
	b	$BB0_10
	nop
$BB0_9:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 97
	subu	$1, $1, $2
	addiu	$2, $zero, 26
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_22
	nop
$BB0_10:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 48
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_12
	nop
# %bb.11:
	b	$BB0_15
	nop
$BB0_12:
	lbu	$1, 3($fp)
	seb	$2, $1
	addiu	$1, $zero, 57
	slt	$1, $1, $2
	xori	$1, $1, 1
	bgtz	$1, $BB0_14
	nop
# %bb.13:
	b	$BB0_15
	nop
$BB0_14:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 48
	subu	$1, $1, $2
	addiu	$2, $zero, 52
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_22
	nop
$BB0_15:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 45
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_17
	nop
# %bb.16:
	b	$BB0_18
	nop
$BB0_17:
	addiu	$1, $zero, 62
	sw	$1, 4($fp)
	b	$BB0_22
	nop
$BB0_18:
	lbu	$1, 3($fp)
	seb	$1, $1
	addiu	$2, $zero, 95
	xor	$1, $1, $2
	sltiu	$1, $1, 1
	bgtz	$1, $BB0_20
	nop
# %bb.19:
	b	$BB0_21
	nop
$BB0_20:
	addiu	$1, $zero, 63
	sw	$1, 4($fp)
	b	$BB0_22
	nop
$BB0_21:
	lui	$1, 65535
	ori	$1, $1, 65535
	sw	$1, 4($fp)
$BB0_22:
	lw	$2, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_url_char_value
$func_end0:
	.size	base64_url_char_value, ($func_end0)-base64_url_char_value
                                        # -- End function
	.globl	base64_decode_urlsafe           # -- Begin function base64_decode_urlsafe
	.p2align	2
	.type	base64_decode_urlsafe,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_decode_urlsafe
base64_decode_urlsafe:                  # @base64_decode_urlsafe
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	lw	$2, 20($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	addiu	$2, $zero, 0
	seb	$1, $1
	seb	$2, $zero
	xor	$1, $1, $2
	sltu	$1, $zero, $1
	bgtz	$1, $BB1_3
	nop
# %bb.2:
	b	$BB1_5
	nop
$BB1_3:                                 #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 28($fp)
	lw	$3, 20($fp)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	seb	$4, $2
	lw	$25, %got(base64_url_char_value)($1)
	.reloc ($tmp0), R_MIPS_JALR, base64_url_char_value
$tmp0:
	jalr	$25
	nop
	lw	$1, 24($fp)
	lw	$3, 20($fp)
	addu	$1, $1, $3
	sb	$2, 0($1)
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB1_1
	nop
$BB1_5:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
$func_end1:
	.size	base64_decode_urlsafe, ($func_end1)-base64_decode_urlsafe
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_url_char_value
	.text
