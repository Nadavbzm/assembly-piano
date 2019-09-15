temp  dw  0
;first octave
do          equ     9121
do_diez     equ     8609
re          equ     8126
re_diez     equ     7670
mi          equ     7239
fa          equ     6833
fa_diez     equ     6449
sol         equ     6087
sol_diez    equ     5746
la          equ     5423
la_diez     equ     5119
si_         equ     4831
;second octave
do2         equ     4560
do_diez2    equ     4304
re2         equ     4063
re_diez2    equ     3834
mi2         equ     3619
fa2         equ     3416
fa_diez2    equ     3224
sol2        equ     3043
sol_diez2   equ     2873
la2         equ     2711
la_diez2    equ     2559
si2         equ     2415
;third octave
do3         equ     2280
do_diez3    equ     2152
re3         equ     2031
re_diez3    equ     1917
mi3         equ     1809
fa3         equ     1715
fa_diez3    equ     1612
sol3        equ     1521
sol_diez3   equ     1436
la3         equ     1355
la_diez3    equ     1292
si3         equ     1207
do4         equ     1140

play_sound:
mov     al, 182         ; Prepare the speaker for the
out     43h, AL         ;  note.
mov     ax, dx        ; Frequency number (in decimal)
                        ;  for middle C.
out     42h, al         ; Output low byte.
mov     al, ah          ; Output high byte.
out     42h, al
in      al, 61h         ; Turn on note (get value from
                               ;  port 61h).
or      al, 00000011b   ; Set bits 1 and 0.
out     61h, al         ; Send new value.
mov     bx, 10         ; Pause for duration of note.
pause1:
mov     cx, 25535
pause2:
dec     cx
jne     pause2
dec     bx
jne     pause1
in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
and     al, 11111100b   ; Reset bits 1 and 0.
out     61h, al         ; Send new value.
RET


play_minor_triad:
  CALL play_sound
  mov temp, 1
  mul temp, 3
  sub dx, temp
  CALL play_sound
  MOV temp, 941
  sub dx, temp
  CALL play_sound
  RET

play_major_triad:
  CALL play_sound
  sub dx, 941
  CALL play_sound
  sub dx, 863
  CALL play_sound
  RET
