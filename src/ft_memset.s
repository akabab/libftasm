; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:11:51 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:11:10 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_memset

; void		*ft_memset(void *b, int c, size_t n);

_ft_memset:
	push		rdi
	mov			rcx, rdx
	mov			al, sil
	cld
	rep			stosb
	pop			rax
	ret