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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $4, -65
	andi	$1, $2, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_2
	nop
# %bb.1:
	jr	$ra
	nop
$BB0_2:
	addiu	$1, $4, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_4
	nop
# %bb.3:
	jr	$ra
	addiu	$2, $4, -71
$BB0_4:
	addiu	$1, $4, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB0_6
	nop
# %bb.5:
	jr	$ra
	addiu	$2, $4, 4
$BB0_6:
	xori	$1, $4, 95
	addiu	$2, $zero, -1
	addiu	$3, $zero, 63
	movz	$2, $3, $1
	xori	$1, $4, 45
	addiu	$3, $zero, 62
	jr	$ra
	movz	$2, $3, $1
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
	.frame	$sp,32,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	lbu	$2, 0($4)
	beqz	$2, $BB1_3
	nop
# %bb.1:
	move	$17, $5
	addiu	$18, $4, 1
$BB1_2:                                 # =>This Inner Loop Header: Depth=1
	seb	$4, $2
	lw	$25, %call16(base64_url_char_value)($16)
	.reloc ($tmp0), R_MIPS_JALR, base64_url_char_value
$tmp0:
	jalr	$25
	move	$gp, $16
	sb	$2, 0($17)
	addiu	$1, $18, 1
	addiu	$17, $17, 1
	lbu	$2, 0($18)
	bnez	$2, $BB1_2
	move	$18, $1
$BB1_3:
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 32
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
	.text
