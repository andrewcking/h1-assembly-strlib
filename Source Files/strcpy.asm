count: dw 0
strcpy_$pcpc:
  ldc 0
  st count
  ja skip
word:
  ldc 1
  add count
  st count
skip:
  ldr 1
  add count
  ldi
  jz exit
  push
  ldr 3
  add count
  sti
  ja word
exit:
  ret
public strcpy_$pcpc
