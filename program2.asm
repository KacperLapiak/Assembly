[bits 32]

call nast					; wrzu� na stos adres 5, skocz do nast
nast:			
pop eax						; wrzu� adres 5 ze stosu do eax
push eax					; wrzu� eax na stos
add dword [esp], dane-nast	; dodaj r�nic� dane-nast do tego na co wskazuje esp
call [ebx+3*4]				; wywo�aj printf, skocz do danych z 14
add esp, 4					; posprz�taj po push

push 0						; 0 na stos
call [ebx]					; exit

dane:
db "hello world", 0xa, 0
