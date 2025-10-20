	.file	"sha1_avr_update_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_update_avr
	.type	sha1_update_avr, @function
sha1_update_avr:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+3
	ldd r19,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r22,Y+5
	ldd r23,Y+6
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	ldd r22,Y+1
	ldd r23,Y+2
	lsl r22
	rol r23
	lsl r22
	rol r23
	ldd r30,Y+3
	ldd r31,Y+4
	add r22,r30
	adc r23,r31
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	movw r30,r22
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,5
	brlt .L3
	nop
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	sha1_update_avr, .-sha1_update_avr
	.ident	"GCC: (GNU) 7.3.0"
