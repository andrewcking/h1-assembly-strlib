globalcount: dw 0
count: dw 0
concat_$pcpcpc:
  ldc 0
  st count
  ja skip
word1:
  ldc 1
  add count
  st count
skip:
  ldr 1
  add count
  ldi
  jz init
  push
  ldr 4
  add count
  sti
  ja word1
init:
  ld count
  st globalcount
  ldc 0
  st count
  ja skip2
word2:
  ldc 1
  add count
  st count
  ldc 1
  add globalcount
  st globalcount
skip2:
  ldr 2
  add count
  ldi
  jz exit
  push
  ldr 4
  add globalcount
  sti
  ja word2
exit:
  ret
public concat_$pcpcpc
