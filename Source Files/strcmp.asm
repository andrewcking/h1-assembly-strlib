str1: dw 0
str2: dw 0
diff: dw 0
strcmp_$pcpc: ;; pcpc because it takes two characters (pointers to characters)
  ldr 1
  ldi
  st str1
  ldr 2
  ldi
  st str2
  ld str1
  sub str2
  st diff
  ld str1
  jz return
  ld str2
  jz return
  ld diff
  jnz return
increment:
  ldc 1
  addr 1
  str 1
  ldc 1
  addr 2
  str 2
  ja strcmp_$pcpc
return:
  ld diff
  ret
public strcmp_$pcpc
