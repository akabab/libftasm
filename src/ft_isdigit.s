; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:07:25 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:10:21 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isdigit

; int			ft_isdigit(int c);

_ft_isdigit:
	cmp			rdi, '0'
	jl			@false
	cmp			rdi, '9'
	jg			@false
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0

@done:
	ret