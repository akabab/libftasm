; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strequ.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 20:50:14 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:12:46 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strequ
	extern		_ft_strcmp

; int   ft_strequ(char const *s1, char const *s2);

_ft_strequ:
	call		_ft_strcmp
	test		rax, rax
	jz			@true
	mov			rax, 0
	jmp			@done

@true:
	mov			rax, 1

@done:
	ret