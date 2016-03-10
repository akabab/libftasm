; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 20:58:09 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:12:12 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

segment .text
	global		_ft_strcmp
	extern		_ft_strlen

; int   ft_strcmp(char const *s1, char const *s2);

_ft_strcmp:
	call		_ft_strlen
	inc			rax
	mov			rcx, rax
	cld
	repe		cmpsb
	movzx		rax, byte [rdi-1]
	movzx		rdx, byte [rsi-1]
	sub			rax, rdx
	ret
