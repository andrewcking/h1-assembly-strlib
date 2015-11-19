count: dw 0
count2: dw 0
temp: dw 0
@n1: dw -1
index_$pcpc:
  ldc 0
  st count
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
  sub count2
  ret
exit:
  ld @n1
  ret
public index_$pcpc
