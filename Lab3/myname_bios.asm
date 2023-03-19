; myname_bios.asm	written by kimwongyo

%include "colors.asm"
%include "ascii_codes.asm"

%include "init_segment_registers.asm"

main:
	call print_wongyo
end_loop:
	jmp end_loop


	
print_wongyo:
	mov bl, GREEN
	mov al, CHAR_w
	call bios_print_char
	mov bl, GREEN
	mov al, CHAR_o
	call bios_print_char
	mov bl, GREEN
	mov al, CHAR_n
	call bios_print_char
	mov bl, GREEN
	mov al, CHAR_g
	call bios_print_char
	mov bl, GREEN
	mov al, CHAR_y
	call bios_print_char
	mov bl, GREEN
	mov al, CHAR_o
	call bios_print_char
	mov al, CHAR_SPACE
	call bios_print_char
	ret
	
bios_print_char:
	mov ah, 0x0E
	Int 0x10
	ret
	
	
times 510-($-$$) db 0
dw 0AA55h
