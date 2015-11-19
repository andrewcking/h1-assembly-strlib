;i need to work on my naming conventions
count: dw 0
count2: dw 0
flag: dw 0 ;indicates if the first spaces have been removed or not
wordc: dw 0
@1:   dw 1
@32:  dw 32
trim_$pcpc:
  ldc 0
  st count
  ja skip
preouter:
  push
  ld flag
  jz postflag
  ld count2
deccount:  ;;insert space or spaces in between words
  jz postdeccount
  ldc ' '
  push
  ldr 4
  add wordc
  sti
  ld wordc
  add @1
  st wordc
  ld count2
  sub @1
  st count2
  ja deccount
postdeccount:
  ldr 3
  add wordc
  ja cont
postflag:
  ldr 3
cont:
  sti
  ld wordc
  add @1
  st wordc
  ldc 1
  st flag
  ldc 0
  st count2
outer:
  ldc 1
  add count
  st count
skip:
  ldr 1
  add count
  ldi
  jz exit
  sub @32
  jz inner
  add @32
  ja preouter
inner:
  ldc 1
  add count2
  st count2
  ja outer
exit:
  ret
public trim_$pcpc
