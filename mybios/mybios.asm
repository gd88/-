section .text

start:

mov bx,0
mov al, 'w'
mov ah, 0x0e
int 0x10

mov al, 'o'
mov ah, 0x0e
int 0x10

mov al, 'n'
mov ah, 0x0e
int 0x10

mov al, 'g'
mov ah, 0x0e
int 0x10

mov al, 'y'
mov ah, 0x0e
int 0x10

mov al, 'o'
mov ah, 0x0e
int 0x10

mov ax,0x4c00
int 0x21