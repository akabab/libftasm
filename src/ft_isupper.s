; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:15:41 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:10:57 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isupper

; int			ft_isupper(int c);

_ft_isupper:
	cmp			rdi, 'A'
	jl			@false
	cmp			rdi, 'Z'
	jg			@false
	mov			rax, 1
	jmp			@done

@false:
	mov			rax, 0

@done:
	ret