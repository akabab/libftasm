; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:07:34 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:10:04 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isascii

; int			ft_isascii(int c);

_ft_isascii:
	cmp			rdi, 0
	jl			@false
	cmp			rdi, 127
	jg			@false
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0

@done:
	ret