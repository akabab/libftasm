; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 22:13:05 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:12:42 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strdup
	extern		_ft_strlen
	extern		_malloc

; char		*ft_strdup(char const *str);

_ft_strdup:
	; prologue
	push rbp
	mov rbp, rsp

	push		rdi ; save rdi -> #1

	call		_ft_strlen
	inc			rax ; add 1 for '\0'
	mov			rdi, rax ; set rdi with len for malloc
	push		rax ; push len for copy -> #2
	call		_malloc
	test		rax, rax ; test if malloc failed
	jz			@done ; return if failed
	mov			r12, rax ; save returned pointer -> r12

	mov			rdi, rax ; set rdi with return pointer
	pop			rcx ; set rcx with len <- #2
	pop			rsi ; recover source <- #1
	cld
	repe		movsb ; copy
	mov			rdi, 0 ; add '\0'
	mov			rax, r12 ; recover <- r12

@done:
	; epilogue
	mov rsp, rbp
	pop rbp
	ret