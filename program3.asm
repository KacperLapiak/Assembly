[bits 32]

mov eax, 0x12345678		; wrzuæ wartoœæ do eax
xor eax, 0x78543123		; xor z wartoœci¹, zapis w eax

push eax				; wrzuæ eax na stos
call wypisz				; wrzuæ adres 10 na stos, skocz do wypisz
db "%.8x", 0xa, 0

wypisz:								
call [ebx+3*4]			; printf, wypisz wynik XOR, szesnastkowo
add esp, 8				; posprz¹taj po push i call

push 0					; wrzuæ 0 na stods
call [ebx]				; exit
