%define MACH_SYSCALL(nb)	0x2000000 | nb
%define READ				3 ; user_ssize_t read(int fd, user_addr_t cbuf, user_size_t nbyte);
%define WRITE				4 ; user_ssize_t write(int fd, user_addr_t cbuf, user_size_t nbyte);
%define OPEN				5 ; int open(user_addr_t path, int flags, int mode);
%define CLOSE				6 ; int close(int fd);

%define STDOUT				1

%define BUFF_SIZE			255

segment .bss
	buffer	resb	BUFF_SIZE

segment .text
	global		_ft_cat

; void			ft_cat(int fd)

_ft_cat:

	; prologue
	push rbp
	mov rbp, rsp

	mov			r12, rdi ; save fd

@loop:

@read:
	mov			rdi, r12 ; fd
	lea			rsi, [rel buffer] ; cbuf
	mov			rdx, BUFF_SIZE ; nbyte
	mov			rax, MACH_SYSCALL(READ)
	syscall

	jc			@error ; CF
	test		rax, rax ; test rax == 0 (EOF)
	jz			@done

@write:
	
	mov			rdi, STDOUT
	mov			rdx, rax ; nbytes = readen nbytes
	mov			rax, MACH_SYSCALL(WRITE)
	syscall

	jc			@error ; CF

	jmp			@loop

@error:
	; continue & return

@done:
	mov			rax, 0

	; epilogue
	mov rsp, rbp
	pop rbp

	ret