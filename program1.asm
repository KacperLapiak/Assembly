[bits 32]

call [ebx+2*4] 				; getchar, pobierz znak do eax
cmp eax, 'A'				; por�wnaj eax z liter� 'A'
jne dalej					; je�eli eax != 'A' skocz do dalej

call wypisz_hello			; wrzu� na stos adres 8, skocz do wypisz_hello
db 'hello world', 0xa, 0
wypisz_hello:	
call [ebx+3*4]				; printf, wypisz 'hello world'
add esp, 4					; posprz�taj po call
push 0						; wrzu� 0 na stos
call [ebx]					; exit

dalej:						
call wypisz_xyz				; wrzu� na stos adres 16, skocz do wypisz_xyz
db 'xyx', 0xa, 0
wypisz_xyz:					
call [ebx+3*4]				; printf, wypisz 'xyz'
add esp, 4					; posprz�taj po call
push 0						; wrzu� 0 na stos
call [ebx]					; exit
