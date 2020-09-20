[bits 32]

push 'h'		; litera 'h' na stos
call [ebx+4] 	; putchar
add esp, 4		; posprz¹taj po push

push 0			; 0 na stos
call [ebx]		; exit
