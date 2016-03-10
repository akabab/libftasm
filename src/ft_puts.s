; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ycribier <ycribier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/08 21:04:49 by ycribier          #+#    #+#              ;
;    Updated: 2016/03/10 20:11:47 by ycribier         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4


section .data
	newline	db		10
	null    db      "(null)", 10

segment .text
	global		_ft_puts
	extern		_ft_strlen

; int			ft_puts(const char *str);

_ft_puts:
	mov			r10, rdi

	cmp			rdi, 0
	je			@null_str

	call		_ft_strlen

@msg_str:
	mov			rdi, STDOUT
	mov			rsi, r10
	mov			rdx, rax
	mov			rax, MACH_SYSCALL(WRITE)
	syscall
	cmp			rax, 0
	jl			@error
	jmp			@new_line

@null_str:
	mov			rdi, STDOUT
	lea			rsi, [rel null]
	mov			rdx, 7
	mov			rax, MACH_SYSCALL(WRITE)
	syscall
	cmp			rax, 0
	jl			@error
	jmp			@success

@new_line:
	mov			rdi, STDOUT
	lea			rsi, [rel newline]
	mov			rdx, 1
	mov			rax, MACH_SYSCALL(WRITE)
	syscall
	cmp			rax, 0
	jl			@error
	jmp			@success

@error:
	mov			rax, -1
	jmp			@done

@success:
	mov			rax, 1
	jmp			@done

@done:
	ret