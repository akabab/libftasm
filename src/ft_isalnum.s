; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:06:19 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:09:01 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isalnum
	extern		_ft_isalpha
	extern		_ft_isdigit

; int			ft_isalnum(int c);

_ft_isalnum:
	call		_ft_isalpha
	cmp			rax, 1
	jge			@done
	call		_ft_isdigit

@done:
	ret