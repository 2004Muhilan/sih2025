	.file	"rsa_avr_unpad_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_unpad_avr
	.type	rsa_unpad_avr, @function
rsa_unpad_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	cpi r24,lo8(-1)
	breq .L4
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L5
	ldd r24,Z+2
	cpi r24,lo8(-1)
	breq .L6
	ldd r24,Z+3
	cpi r24,lo8(-1)
	breq .L7
	ldd r24,Z+4
	cpi r24,lo8(-1)
	breq .L8
	ldd r24,Z+5
	cpi r24,lo8(-1)
	breq .L9
	ldd r24,Z+6
	cpi r24,lo8(-1)
	breq .L10
	ldd r24,Z+7
	cpi r24,lo8(-1)
	breq .L11
	ldd r24,Z+8
	cpi r24,lo8(-1)
	breq .L12
	ldd r24,Z+9
	cpi r24,lo8(-1)
	breq .L13
	ldd r24,Z+10
	cpi r24,lo8(-1)
	breq .L14
	ldd r24,Z+11
	cpi r24,lo8(-1)
	breq .L15
	ldd r24,Z+12
	cpi r24,lo8(-1)
	breq .L16
	ldd r24,Z+13
	cpi r24,lo8(-1)
	breq .L17
	ldd r24,Z+14
	cpi r24,lo8(-1)
	breq .L18
	ldd r24,Z+15
	cpi r24,lo8(-1)
	breq .L21
	ldi r24,lo8(16)
/* epilogue start */
	ret
.L4:
	ldi r24,0
	ret
.L5:
	ldi r24,lo8(1)
	ret
.L6:
	ldi r24,lo8(2)
	ret
.L7:
	ldi r24,lo8(3)
	ret
.L8:
	ldi r24,lo8(4)
	ret
.L9:
	ldi r24,lo8(5)
	ret
.L12:
	ldi r24,lo8(8)
	ret
.L10:
	ldi r24,lo8(6)
	ret
.L11:
	ldi r24,lo8(7)
	ret
.L13:
	ldi r24,lo8(9)
	ret
.L14:
	ldi r24,lo8(10)
	ret
.L15:
	ldi r24,lo8(11)
	ret
.L16:
	ldi r24,lo8(12)
	ret
.L17:
	ldi r24,lo8(13)
	ret
.L18:
	ldi r24,lo8(14)
	ret
.L21:
	ldi r24,lo8(15)
	ret
	.size	rsa_unpad_avr, .-rsa_unpad_avr
	.ident	"GCC: (GNU) 7.3.0"
