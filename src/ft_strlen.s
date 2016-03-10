; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:12:11 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:12:51 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strlen

; size_t		ft_strlen(char *str);

_ft_strlen:
	push		rdi
	sub			rcx, rcx
	sub			al, al
	not			rcx
	cld
	repne		scasb
	not			rcx
	pop			rdi
	lea			rax, [rcx-1]
	ret