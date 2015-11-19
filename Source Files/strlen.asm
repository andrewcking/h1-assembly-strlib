strlen_$pc: ;takes a pointer to character
    ldc 0
    push
strwhile:
    ldr 2
    ldi
    jz endstr
    ldc 1
    addr 0
    str 0
    ldc 1
    addr 2
    str 2
    ja strwhile
endstr:
    pop
    ret
public strlen_$pc
