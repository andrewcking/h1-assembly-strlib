@97: dw 97
@32: dw 32
count: dw 0
toupper_$pcpc:
  ldc 0
  st count
  ja skip
for:
  ldc 1
  add count
  st count
skip:
  ldr 1
  add count
  ldi
  jz exit
  sub @97 ;check and jump if lowercase
  jn catch
  add @97
  sub @32 ;check and jump for non-alpha character sub 64
  sub @32
  jn catch2
  jz catch2
  add @32 ;restore
  add @32
  sub @32 ;add 32 to convert to lowercase... yes this could be simplified
recur:
  push
  ldr 3
  add count
  sti
  ja for
catch:
  add @97
  ja recur
catch2:
  add @32
  add @32
  ja recur
exit:
  ret
public toupper_$pcpc
