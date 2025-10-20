	.file	"sha1_avr_pad_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_pad_avr
	.type	sha1_pad_avr, @function
sha1_pad_avr:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+4,r25
	std Y+3,r24
	std Y+5,r22
	std Y+7,r21
	std Y+6,r20
	ldd r24,Y+5
	mov r20,r24
	ldi r21,0
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+6
	ldd r25,Y+7
	movw r22,r18
	call memcpy
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	ldd r18,Y+6
	ldd r19,Y+7
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-128)
	movw r30,r24
	st Z,r18
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+6
	ldd r19,Y+7
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,__zero_reg__
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	cpi r24,64
	cpc r25,__zero_reg__
	brlt .L3
	nop
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	sha1_pad_avr, .-sha1_pad_avr
	.ident	"GCC: (GNU) 7.3.0"
