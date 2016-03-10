; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/10 21:50:13 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 22:11:17 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strcpy

; char			*ft_strcpy(char *dest, const char *src);

_ft_strcpy:

	push		rdi

@loop:
	cmp			byte [rsi], 0
	jz			@zloop

	mov			r10b, byte [rsi]
	mov			byte [rdi], r10b

	inc			rdi
	inc			rsi
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
