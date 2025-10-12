PUBLIC xbegin
PUBLIC xend
PUBLIC mfence
.code

xbegin PROC
    mov eax, -1
    db 0C7h, 0F8h, 00h, 00h, 00h, 00h 
    ret
xbegin ENDP

xend PROC
    db 0x0F, 0x01, 0xD5
    ret
xend ENDP

mfence PROC
    mfence
mfence ENDP
END
