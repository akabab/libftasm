; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/10 20:59:05 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:59:41 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strchr
	extern		_ft_strlen

; char *		ft_strchr(const char *s, int c);

_ft_strchr:
	call		_ft_strlen

	cmp			rsi, 0
	je			@null_char

	mov			rcx, rax
	inc			rcx
	mov			al, sil
	repne		scasb
	test		rcx, rcx
	jz			@not_found
	dec			rdi
	mov			rax, rdi
	jmp			@done

@null_char:
	add			rdi, rax ; add str length
	mov			rax, rdi
	jmp			@done

@not_found:
	mov			rax, 0

@done:
	ret
