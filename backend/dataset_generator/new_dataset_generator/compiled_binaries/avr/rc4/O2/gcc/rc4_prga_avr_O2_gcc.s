	.file	"rc4_prga.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_prga
	.type	rc4_prga, @function
rc4_prga:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r22
	movw r26,r20
	ld r30,Y
	ldi r18,lo8(1)
	add r18,r30
	st Y,r18
	mov r30,r18
	add r30,r24
	mov r31,r25
	adc r31,__zero_reg__
	ld r30,Z
	ld r18,X
	mov r21,r30
	add r21,r18
	st X,r21
	ld r18,Y
	add r18,r24
	mov r19,r25
	adc r19,__zero_reg__
	movw r30,r18
	ld r20,Z
	movw r30,r24
	add r30,r21
	adc r31,__zero_reg__
	ld r21,Z
	movw r30,r18
	st Z,r21
	ld r30,X
	add r30,r24
	mov r31,r25
	adc r31,__zero_reg__
	st Z,r20
	ld r28,Y
	add r28,r24
	mov r29,r25
	adc r29,__zero_reg__
	ld r30,X
	add r30,r24
	mov r31,r25
	adc r31,__zero_reg__
	ld r18,Y
	ld r19,Z
	add r18,r19
	add r24,r18
	adc r25,__zero_reg__
	movw r30,r24
	ld r24,Z
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rc4_prga, .-rc4_prga
	.ident	"GCC: (GNU) 7.3.0"
