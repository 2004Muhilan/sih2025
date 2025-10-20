	.file	"rsa_avr.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_mod_exp_avr
	.type	rsa_mod_exp_avr, @function
rsa_mod_exp_avr:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r8,r18
	movw r10,r20
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
	inc r4
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L1
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
	inc r4
	rjmp .L4
.L3:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	movw r24,r20
	movw r22,r18
	call __mulsi3
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	lsr r11
	ror r10
	ror r9
	ror r8
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L1
.L4:
	sbrs r8,0
	rjmp .L3
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	movw r24,r6
	movw r22,r4
	call __mulsi3
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	movw r4,r22
	movw r6,r24
	rjmp .L3
.L1:
	movw r24,r6
	movw r22,r4
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	rsa_mod_exp_avr, .-rsa_mod_exp_avr
.global	rsa_generate_keys_avr
	.type	rsa_generate_keys_avr, @function
rsa_generate_keys_avr:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r16,lo8(-95)
	ldi r17,lo8(12)
	ldi r18,0
	ldi r19,0
	movw r30,r24
	st Z,r16
	std Z+1,r17
	std Z+2,r18
	std Z+3,r19
	ldi r24,lo8(17)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	movw r30,r22
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldi r24,lo8(-99)
	ldi r25,lo8(1)
	ldi r26,0
	ldi r27,0
	movw r30,r20
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	rsa_generate_keys_avr, .-rsa_generate_keys_avr
.global	rsa_encrypt_avr
	.type	rsa_encrypt_avr, @function
rsa_encrypt_avr:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	call rsa_mod_exp_avr
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rsa_encrypt_avr, .-rsa_encrypt_avr
.global	rsa_decrypt_avr
	.type	rsa_decrypt_avr, @function
rsa_decrypt_avr:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	call rsa_mod_exp_avr
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rsa_decrypt_avr, .-rsa_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"
