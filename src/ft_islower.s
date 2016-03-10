; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/10 20:10:29 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:10:34 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_islower

; int			ft_islower(int c);

_ft_islower:
	cmp			rdi, 'a'
	jl			@false
	cmp			rdi, 'z'
	jg			@false
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0

@done:
	ret