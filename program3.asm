[bits 32]

mov eax, 0x12345678		; wrzu� warto�� do eax
xor eax, 0x78543123		; xor z warto�ci�, zapis w eax

push eax				; wrzu� eax na stos
call wypisz				; wrzu� adres 10 na stos, skocz do wypisz
db "%.8x", 0xa, 0

wypisz:								
call [ebx+3*4]			; printf, wypisz wynik XOR, szesnastkowo
add esp, 8				; posprz�taj po push i call

push 0					; wrzu� 0 na stods
call [ebx]				; exit
