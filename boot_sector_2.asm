[org 0x7c00]

mov bx,hello_world
call print_string

jmp $

print_string:
pusha
mov ah,0x0e

print_loop:
mov al,[bx]
cmp al,0
je print_string_done
int 0x10
add bx,1
jmp print_loop

print_string_done:
popa
ret

hello_world db "Abus first OS", 0

times 510-($-$$) db 0
dw 0xaa55
