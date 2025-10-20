	.file	1 "tinycrypt_aes_decrypt.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.rdata
	.align	2
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.ascii	"R\011j\32506\2458\277@\243\236\201\363\327\373|\3439\202"
	.ascii	"\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356"
	.ascii	"L\225\013B\372\303N\010.\241f(\331$\262v[\242Im\213\321%"
	.ascii	"r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355"
	.ascii	"\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323"
	.ascii	"\012\367\344X\005\270\263E\006\320,\036\217\312?\017\002"
	.ascii	"\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350"
	.ascii	"\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033"
	.ascii	"\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503"
	.ascii	"\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\015"
	.ascii	"-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353"
	.ascii	"\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\014}"
	.text
	.align	2
	.globl	tc_aes128_set_decrypt_key
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(tc_aes128_set_encrypt_key)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,tc_aes128_set_encrypt_key
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_aes128_set_decrypt_key
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	mult_row_column
	.type	mult_row_column, @function
mult_row_column:
	.frame	$fp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$17,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	addiu	$2,$2,1
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$17,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	addiu	$2,$2,2
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	lw	$2,44($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$16,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,44($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	xor	$2,$16,$2
	andi	$16,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$17,$2
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$17,$2,0x00ff
	lw	$2,44($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_double_byte)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_double_byte
1:	jalr	$25
	nop

	lw	$28,16($fp)
	xor	$2,$17,$2
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	addiu	$2,$2,3
	xor	$3,$16,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mult_row_column
	.size	mult_row_column, .-mult_row_column
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inv_mix_columns
	.type	inv_mix_columns, @function
inv_mix_columns:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	addiu	$2,$fp,36
	lw	$5,28($fp)
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,4
	addiu	$2,$fp,36
	addiu	$2,$2,4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,8
	addiu	$2,$fp,36
	addiu	$2,$2,8
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$2,12
	addiu	$2,$fp,36
	addiu	$2,$2,12
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	mult_row_column
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,36
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,28($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,52($fp)
	lw	$2,0($2)
	beq	$3,$2,$L5
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	inv_mix_columns
	.size	inv_mix_columns, .-inv_mix_columns
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	add_round_key
	.type	add_round_key, @function
add_round_key:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,8($fp)
	lbu	$3,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$2,$2,0x00ff
	xor	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,1
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$4,0($2)
	lw	$2,12($fp)
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,3
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,4
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,5
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,6
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,7
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,8
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,9
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,10
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,8
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,11
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,12
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,13
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,14
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$4,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,12
	lw	$2,0($2)
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	addiu	$2,$2,15
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	add_round_key
	.size	add_round_key, .-add_round_key
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inv_sub_bytes
	.type	inv_sub_bytes, @function
inv_sub_bytes:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$4,$2
	lw	$3,16($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	lui	$3,%hi(inv_sbox)
	addiu	$3,$3,%lo(inv_sbox)
	addu	$3,$4,$3
	lbu	$3,0($3)
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L8:
	lw	$2,4($fp)
	sltu	$2,$2,16
	bne	$2,$0,$L9
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	inv_sub_bytes
	.size	inv_sub_bytes, .-inv_sub_bytes
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inv_shift_rows
	.type	inv_shift_rows, @function
inv_shift_rows:
	.frame	$fp,64,$31		# vars= 32, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	lw	$2,28($fp)
	lbu	$2,0($2)
	sb	$2,36($fp)
	lw	$2,28($fp)
	lbu	$2,13($2)
	sb	$2,37($fp)
	lw	$2,28($fp)
	lbu	$2,10($2)
	sb	$2,38($fp)
	lw	$2,28($fp)
	lbu	$2,7($2)
	sb	$2,39($fp)
	lw	$2,28($fp)
	lbu	$2,4($2)
	sb	$2,40($fp)
	lw	$2,28($fp)
	lbu	$2,1($2)
	sb	$2,41($fp)
	lw	$2,28($fp)
	lbu	$2,14($2)
	sb	$2,42($fp)
	lw	$2,28($fp)
	lbu	$2,11($2)
	sb	$2,43($fp)
	lw	$2,28($fp)
	lbu	$2,8($2)
	sb	$2,44($fp)
	lw	$2,28($fp)
	lbu	$2,5($2)
	sb	$2,45($fp)
	lw	$2,28($fp)
	lbu	$2,2($2)
	sb	$2,46($fp)
	lw	$2,28($fp)
	lbu	$2,15($2)
	sb	$2,47($fp)
	lw	$2,28($fp)
	lbu	$2,12($2)
	sb	$2,48($fp)
	lw	$2,28($fp)
	lbu	$2,9($2)
	sb	$2,49($fp)
	lw	$2,28($fp)
	lbu	$2,6($2)
	sb	$2,50($fp)
	lw	$2,28($fp)
	lbu	$2,3($2)
	sb	$2,51($fp)
	addiu	$2,$fp,36
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,28($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,52($fp)
	lw	$2,0($2)
	beq	$3,$2,$L11
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L11:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	inv_shift_rows
	.size	inv_shift_rows, .-inv_shift_rows
	.align	2
	.globl	tc_aes_decrypt
	.set	nomips16
	.set	nomicromips
	.ent	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,36($fp)
	sw	$5,32($fp)
	sw	$6,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($fp)
	lw	$2,36($fp)
	bne	$2,$0,$L13
	nop

	move	$2,$0
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L13:
	lw	$2,32($fp)
	bne	$2,$0,$L15
	nop

	move	$2,$0
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L15:
	lw	$2,28($fp)
	bne	$2,$0,$L16
	nop

	move	$2,$0
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L16:
	addiu	$2,$fp,44
	li	$7,16			# 0x10
	lw	$6,32($fp)
	li	$5,16			# 0x10
	move	$4,$2
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$2,$2,160
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,9			# 0x9
	sw	$2,40($fp)
	.option	pic0
	b	$L17
	nop

	.option	pic2
$L18:
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	inv_shift_rows
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	inv_sub_bytes
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$3,28($fp)
	lw	$2,40($fp)
	sll	$2,$2,4
	addu	$2,$3,$2
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	inv_mix_columns
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,40($fp)
	addiu	$2,$2,-1
	sw	$2,40($fp)
$L17:
	lw	$2,40($fp)
	bne	$2,$0,$L18
	nop

	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	inv_shift_rows
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	move	$4,$2
	.option	pic0
	jal	inv_sub_bytes
	nop

	.option	pic2
	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$3,$fp,44
	move	$5,$2
	move	$4,$3
	.option	pic0
	jal	add_round_key
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,44
	li	$7,16			# 0x10
	move	$6,$2
	li	$5,16			# 0x10
	lw	$4,36($fp)
	lw	$2,%call16(_copy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_copy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,44
	li	$6,16			# 0x10
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(_set)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_set
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
$L19:
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,60($fp)
	lw	$2,0($2)
	beq	$3,$2,$L20
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L20:
	move	$2,$4
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	tc_aes_decrypt
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
