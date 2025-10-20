	.file	"rsa_key_generation.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_generate_keys
	.type	rsa_generate_keys, @function
rsa_generate_keys:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r26,r22
	movw r30,r20
	ldi r24,lo8(-95)
	st Y,r24
	ldi r24,lo8(12)
	std Y+1,r24
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	ldi r24,lo8(17)
	st X,r24
	adiw r26,1
	st X,__zero_reg__
	sbiw r26,1
	adiw r26,2
	st X,__zero_reg__
	sbiw r26,2
	adiw r26,3
	st X,__zero_reg__
	sbiw r26,3
	adiw r26,4
	st X,__zero_reg__
	sbiw r26,4
	adiw r26,5
	st X,__zero_reg__
	sbiw r26,5
	adiw r26,6
	st X,__zero_reg__
	sbiw r26,6
	adiw r26,7
	st X,__zero_reg__
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rsa_generate_keys, .-rsa_generate_keys
	.ident	"GCC: (GNU) 7.3.0"
