; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:12:55 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:13:42 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_tolower
	extern		_ft_isupper

; int			ft_tolower(int c);

_ft_tolower:
	call		_ft_isupper
	cmp			rax, 0
	je			@done
	add			rdi, 32

@done:
	mov			rax, rdi
	ret