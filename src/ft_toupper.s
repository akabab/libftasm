; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:13:14 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:13:48 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_toupper
	extern		_ft_islower

; int			ft_toupper(int c);

_ft_toupper:
	call		_ft_islower
	cmp			rax, 0
	je			@done
	sub			rdi, 32

@done:
	mov			rax, rdi
	ret