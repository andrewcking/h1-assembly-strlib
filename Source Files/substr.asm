ptr: dw 0
substr_$pciipc:
  ldr 1
  addr 2
  st ptr
while:
  ldr 1
  addr 3
  sub ptr
  jn endwhile
  ld ptr
  ldi
  push
  ldr 5
  sti
  ldc 1
  add ptr
  st ptr
  ldc 1
  addr 4
  str 4
  ja while
endwhile:
  ldc 0
  push
  ldr 5
  sti
  ret
public substr_$pciipc
