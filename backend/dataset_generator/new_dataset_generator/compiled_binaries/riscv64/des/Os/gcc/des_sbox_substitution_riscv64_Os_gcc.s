	.file	"des_sbox_substitution.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_sbox
	.type	des_sbox, @function
des_sbox:
.LFB0:
	.cfi_startproc
	sext.w	a5,a0
	sraiw	a4,a5,1
	sraiw	a5,a5,4
	andi	a5,a5,2
	andi	a0,a0,1
	or	a0,a0,a5
	slli	a0,a0,4
	lla	a5,.LANCHOR0
	andi	a4,a4,15
	add	a5,a5,a0
	add	a5,a5,a4
	lbu	a0,0(a5)
	ret
	.cfi_endproc
.LFE0:
	.size	des_sbox, .-des_sbox
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	S1, @object
	.size	S1, 64
S1:
	.string	"\016\004\r\001\002\017\013\b\003\n\006\f\005\t"
	.ascii	"\007"
	.string	""
	.ascii	"\017\007\004\016\002\r\001\n\006\f\013\t\005\003\b"
	.string	"\004\001\016\b\r\006\002\013\017\f\t\007\003\n\005"
	.string	"\017\f\b\002\004\t\001\007\005\013\003\016\n"
	.ascii	"\006\r"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
