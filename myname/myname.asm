org 0x100
section .text

start:

mov dx,hello
mov ah,9

int 0x21

mov ax,0x4c00

int 0x21 

section .data

hello db 'kimwongyo', 13, 10, '$'