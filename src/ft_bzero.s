; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/10 19:59:48 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:08:34 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_bzero
	extern		_ft_memset

; void		ft_bzero(void *s, size_t n);

_ft_bzero:
	mov			rdx, rsi
	mov			rsi, 0
	call		_ft_memset

@done:
	ret