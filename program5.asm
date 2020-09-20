[bits 32]

call xyz
db "argument a dla func", 0xa, 0
call func

push 0
call [ebx]

func:
xyz:
call [ebx+3*4]
add esp, 4		; callee czyœci stos
ret
