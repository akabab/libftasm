; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/10 22:10:24 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 22:11:08 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strncpy

; char			*ft_strncpy(char *dest, const char *src, size_t n);

_ft_strncpy:

	push		rdi

	mov			rcx, rdx

@loop:
	cmp			rcx, 0
	jz			@done
	cmp			byte [rsi], 0
	jz			@zloop

	mov			r10b, byte [rsi]
	mov			byte [rdi], r10b

	inc			rdi
	inc			rsi

	dec			rcx
	jmp			@loop

@zloop:
	cmp			byte [rdi], 0
	jz			@done

	mov			byte [rdi], 0
	inc			rdi
	jmp			@zloop

@done:
	pop			rax

	ret
