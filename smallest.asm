.686
.model flat

.code

_smallest PROC
	push ebp
	mov ebp,esp ;stack pointer to ebp
	
	mov ebx,[ebp+8] ; address of first array element
	mov ecx,[ebp+12]
	mov ebp,0
	mov edx,0
	mov eax,[ebx]

loopMe:
	cmp ebp,ecx
	je allDone
	
	cmp eax,[ebx+edx]
	jl continue ; jump less than, changed from jump greater than

	mov eax,[ebx+edx]

continue:
	add edx,4
	add ebp,1
	jmp loopMe

allDone:
	
	pop ebp
	ret


_smallest ENDP

END