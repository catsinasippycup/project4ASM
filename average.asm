.686
.model flat

.code

_average PROC

push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12]
	mov ebp,0
	mov edx,0
	mov eax,0

loopMe:
	cmp ebp,ecx
	je allDone
	
	add eax,[ebx+edx]
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	pop ebp
	ret
_test ENDP


_average ENDP

END