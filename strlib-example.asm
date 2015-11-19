s1:	dw "cat"
s2: dw "cat is a longer string with non-alpha 12345 characters!"
s3: dw 100 dup 0
s4: dw "cat"

s5: dw "B"
s6: dw "oing!"
s7: dw 100 dup 0

s8: dw 0
s9: dw "characters!"
s10: dw "longer"
s11: dw 100 dup 0
s12: dw "TeSt of WILL and of sTrEnGtH!"
s13: dw 100 dup 0
s14: dw 100 dup 0
s15: dw "    tasdf t  3   dd     3"
s16: dw 100 dup 0

m1:	dw "The length of s1 is "
m2: dw "The length of s2 is "
m3: dw "The length of s3 is "
m4: dw "The length of s4 is "
m5: dw "strcmp(s2, s9) returned "
m6: dw "streq(s13, s9) returned "
m7: dw "substr(s2,0,2,s3); s3 = "

m8: dw "concat(s5,s6,s7); s7 = "
m9: dw "charat(s7, 4) returned = "
m10: dw "empty(s6) returned = "
m11: dw "empty(s8) returned = "
m12: dw "endswith(s12,s9) returned = "
m13: dw "endswith(s2,s9) returned = "
m14: dw "startswith(s1,s2) returned = "
m15: dw "startswith(s2,s9) returned = "
m16: dw "index(s2,s10) returned = "
m17: dw "npos(s2,s10) returned = "
m18: dw "strcpy(s2,s11) s11 returned = "
m19: dw "tolower(s12,s13) s13 returned = "
m20: dw "toupper(s12,s14) s14 returned = "
m21: dw "trim(s15,s16) s16 returned = "

main:
	ldc m1
	sout
	ldc s1
	push
	call strlen_$pc
	dloc 1
	dout
	ldc '\n'
	aout

	ldc m2
	sout
	ldc s2
	push
	call strlen_$pc
	dloc 1
	dout
	ldc '\n'
	aout

	ldc m3
	sout
	ldc s3
	push
	call strlen_$pc
	dloc 1
	dout
	ldc '\n'
	aout

	ldc m4
	sout
	ldc s4
	push
	call strlen_$pc
	dloc 1
	dout
	ldc '\n'
	aout

	ldc m5
	sout
	ldc s1
	push
	ldc s2
	push
	call strcmp_$pcpc
	dloc 2
	dout
	ldc '\n'
	aout

	ldc m6
	sout
	ldc s1
	push
	ldc s2
	push
	call streq_$pcpc
	dout
	ldc '\n'
	aout

	ldc m7
	sout
	ldc s3
	push
	ldc 2
	push
	ldc 0
	push
	ldc s2
	push
	call substr_$pciipc
	dloc 4
	ldc s3
	sout
	ldc '\n'
	aout

	ldc m8
	sout
	ldc s7
  push
  ldc s6
  push
  ldc s5
  push
  call concat_$pcpcpc
  dloc 2
  ldc s7
  sout
	ldc '\n'
	aout

	ldc m9
	sout
	ldc 4
	push
	ldc s7
	push
	call charat_$pci
	dloc 2
	aout
	ldc '\n'
	aout

	ldc m10
	sout
  ldc s6
  push
  call empty_$pc
	dloc 1
  dout
	ldc '\n'
	aout

	ldc m11
	sout
	ldc s8
	push
	call empty_$pc
	dloc 1
	dout
	ldc '\n'
	aout


	ldc m12
	sout
	ldc s9
	push
	ldc s12
	push
	call endswith_$pcpc
	dloc 2
	dout
	ldc '\n'
	aout

	ldc m13
	sout
	ldc s9
  push
  ldc s2
  push
  call endswith_$pcpc
  dloc 2
  dout
	ldc '\n'
	aout

	ldc m14
	sout
	ldc s1
	push
	ldc s2
	push
	call startswith_$pcpc
	dloc 2
	dout
	ldc '\n'
	aout

	ldc m15
	sout
	ldc s9
	push
	ldc s2
	push
	call startswith_$pcpc
	dloc 2
	dout
	ldc '\n'
	aout

	ldc m16
	sout
	ldc s10
	push
	ldc s2
	push
	call index_$pcpc
	dloc 2
	dout
	ldc '\n'
	aout

	ldc m17
	sout
	ldc s10
  push
  ldc s2
  push
  call npos_$pcpc
  dloc 2
  dout
	ldc '\n'
	aout

	ldc m18
	sout
	ldc s11
  push
  ldc s2
  push
  call strcpy_$pcpc
  dloc 2
  ldc s11
  sout
	ldc '\n'
	aout

	ldc m19
	sout
	ldc s13
	push
	ldc s12
	push
	call tolower_$pcpc
	dloc 2
	ldc s13
	sout
	ldc '\n'
	aout

	ldc m20
	sout
	ldc s14
	push
	ldc s12
	push
	call toupper_$pcpc
	dloc 2
	ldc s14
	sout
	ldc '\n'
	aout

	ldc m21
	sout
	ldc s16
	push
	ldc s15
	push
	call trim_$pcpc
	dloc 2
	ldc s16
	sout
	ldc '\n'
	aout

	halt
	end main

extern charat_$pci
extern concat_$pcpcpc
extern empty_$pc
extern endswith_$pcpc
extern index_$pcpc
extern npos_$pcpc
extern startswith_$pcpc
extern strcmp_$pcpc
extern strcpy_$pcpc
extern streq_$pcpc
extern strlen_$pc
extern substr_$pciipc
extern tolower_$pcpc
extern toupper_$pcpc
extern trim_$pcpc
