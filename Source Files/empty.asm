empty_$pc:
  ldr 1
  jz true
  ldc 0
  ret
true: ldc 1
  ret
public empty_$pc
