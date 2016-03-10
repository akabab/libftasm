; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:06:53 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:10:43 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isprint

; int			ft_isprint(int c);

_ft_isprint:
	cmp			rdi, 32
	jl			@false
	cmp			rdi, 126
	jg			@false
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0

@done:
	ret