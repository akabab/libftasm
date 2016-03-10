; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:07:45 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:09:43 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_isalpha
	extern		_ft_islower
	extern		_ft_isupper

; int			ft_isalpha(int c);

_ft_isalpha:
	call		_ft_islower
	cmp			rax, 1
	jge			@done
	call		_ft_isupper

@done:
	ret