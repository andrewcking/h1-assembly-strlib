count: dw 0
count2: dw 0
temp: dw 0
length: dw 0
endswith_$pcpc:
  ldc 0
  st count
  ldr 1
  push
  call strlen_$pc
  dloc 1
  st length
  ja skip
preouter:
  ld count
  sub count2
  ldc 0
  st count2
outer:
  ldc 1
  add count
  st count
skip:
  ldr 2
  add count2
  ldi
  st temp
  jz success
  ldr 1
  add count
  ldi
  jz exit
  sub temp
  jnz preouter
inner:
  ldc 1
  add count2
  st count2
  ja outer
success:
  ld count
  sub length
  jnz exit
  ldc 1
  ret
exit:
  ldc 0
  ret
public endswith_$pcpc
extern strlen_$pc
