	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"des_sbox_substitution.c"
	.text
	.align	1
	.global	des_sbox
	.syntax unified
	.thumb
	.thumb_func
	.type	des_sbox, %function
des_sbox:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	asrs	r3, r0, #4
	and	r3, r3, #2
	and	r2, r0, #1
	orrs	r3, r3, r2
	ubfx	r0, r0, #1, #4
	ldr	r2, .L2
.LPIC0:
	add	r2, pc
	add	r3, r2, r3, lsl #4
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	des_sbox, .-des_sbox
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	S1, %object
	.size	S1, 64
S1:
	.ascii	"\016\004\015\001\002\017\013\010\003\012\006\014\005"
	.ascii	"\011\000\007"
	.ascii	"\000\017\007\004\016\002\015\001\012\006\014\013\011"
	.ascii	"\005\003\010"
	.ascii	"\004\001\016\010\015\006\002\013\017\014\011\007\003"
	.ascii	"\012\005\000"
	.ascii	"\017\014\010\002\004\011\001\007\005\013\003\016\012"
	.ascii	"\000\006\015"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
