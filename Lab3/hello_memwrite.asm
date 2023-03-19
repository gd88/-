; hello_memwrite.asm	written by kimwongyo

%include "colors.asm"
%include "ascii_codes.asm"

%include "init_segment_registers.asm"

main:
	mov byte [ypos], 8
	mov byte [xpos], 0
	call print_hello
end_loop:
	jmp end_loop


	
print_hello:
	mov bl, GREEN
	mov al, CHAR_H
	call memwrite_print_char
	add byte [xpos], 1
	mov bl, GREEN
	mov al, CHAR_e
	call memwrite_print_char
	add byte [xpos], 1
	mov bl, GREEN
	mov al, CHAR_l
	call memwrite_print_char
	add byte [xpos], 1
	mov bl, GREEN
	mov al, CHAR_l
	call memwrite_print_char
	add byte [xpos], 1
	mov bl, GREEN
	mov al, CHAR_o
	call memwrite_print_char
	add byte [xpos], 1
	mov al, CHAR_SPACE
	call memwrite_print_char
	add byte [xpos], 1
	ret
	
memwrite_print_char:
	mov ah, bl
	mov cx, ax
	movzx ax, byte [ypos]
	mov dx, 160
	mul dx
	movzx bx, byte [xpos]
	shl bx, 1
	mov di, 0
	add di, ax
	add di, bx
	
	mov ax, cx
	stosw
	
	ret
	
xpos db 0
ypos db 0
	
times 510-($-$$) db 0
dw 0AA55h
