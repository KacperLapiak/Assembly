[bits 32]

call nast					; wrzuæ na stos adres 5, skocz do nast
nast:			
pop eax						; wrzuæ adres 5 ze stosu do eax
push eax					; wrzuæ eax na stos
add dword [esp], dane-nast	; dodaj ró¿nicê dane-nast do tego na co wskazuje esp
call [ebx+3*4]				; wywo³aj printf, skocz do danych z 14
add esp, 4					; posprz¹taj po push

push 0						; 0 na stos
call [ebx]					; exit

dane:
db "hello world", 0xa, 0
