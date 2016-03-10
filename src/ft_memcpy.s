; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:08:56 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:11:04 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_memcpy

; void		*ft_memcpy(void *dst, const void *src, size_t n);

_ft_memcpy:
	push		rdi
	mov			rcx, rdx
	rep			movsb

@done:
	pop			rax
	ret