segment .text
	global		_ft_memcpy

_ft_memcpy:

; rdi, rsi, rdx
; dst, src, len

loop:
	cmp			rdx, 0
	je			done
	mov byte	r8b, [rsi]
	mov	byte	[rdi], r8b 
	inc			rsi
	inc			rdi
	dec			rdx
	jmp			loop

done:
	ret