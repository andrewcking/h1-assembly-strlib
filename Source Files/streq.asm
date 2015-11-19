;string equals
streq_$pcpc:
  ldr 2
  push
  ldr 2
  push
  call strcmp_$pcpc
  dloc 2
  jz ret1
  ldc 0
  ret
ret1:
  ldc 1
  ret
public streq_$pcpc
extern strcmp_$pcpc
