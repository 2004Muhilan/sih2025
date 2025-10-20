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
	push r12
	push r13
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
/* stack size = 20 */
.L__stack_usage = 20
	movw r8,r18
	movw r10,r20
	movw r4,r14
	movw r6,r16
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L5
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L4:
	sbrs r8,0
	rjmp .L3
	movw r20,r14
	movw r18,r12
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
.L3:
	movw r20,r14
	movw r18,r12
	movw r24,r14
	movw r22,r12
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	lsr r11
	ror r10
	ror r9
	ror r8
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
.L1:
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L5:
	movw r22,r24
	movw r24,r26
	rjmp .L1
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
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
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
/* stack size = 20 */
.L__stack_usage = 20
	movw r8,r18
	movw r10,r20
	movw r4,r14
	movw r6,r16
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L16
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L15:
	sbrs r8,0
	rjmp .L14
	movw r20,r14
	movw r18,r12
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
.L14:
	movw r20,r14
	movw r18,r12
	movw r24,r14
	movw r22,r12
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	lsr r11
	ror r10
	ror r9
	ror r8
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L15
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
.L12:
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L16:
	movw r22,r24
	movw r24,r26
	rjmp .L12
	.size	rsa_encrypt_avr, .-rsa_encrypt_avr
.global	rsa_decrypt_avr
	.type	rsa_decrypt_avr, @function
rsa_decrypt_avr:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
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
/* stack size = 20 */
.L__stack_usage = 20
	movw r8,r18
	movw r10,r20
	movw r4,r14
	movw r6,r16
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	ldi r24,lo8(1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L25
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L24:
	sbrs r8,0
	rjmp .L23
	movw r20,r14
	movw r18,r12
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
.L23:
	movw r20,r14
	movw r18,r12
	movw r24,r14
	movw r22,r12
	call __mulsi3
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	movw r12,r22
	movw r14,r24
	lsr r11
	ror r10
	ror r9
	ror r8
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L24
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
.L21:
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
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L25:
	movw r22,r24
	movw r24,r26
	rjmp .L21
	.size	rsa_decrypt_avr, .-rsa_decrypt_avr
	.ident	"GCC: (GNU) 7.3.0"
