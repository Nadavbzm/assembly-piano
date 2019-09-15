org 100h

;defining graphic mode
mov ah, 0
mov al, 13h
int 10h

temps dw 0
jmp main_draw 
jmp main_loop

main_loop:
MOV AH,00h
INT 16h
mov b.temps, al

cmp temps, 97
je do1
jne do1_2
do1:
call a_c
do1_2:

cmp temps, 119
je do2
jne do2_2
do2:
call w_c#
do2_2:

cmp temps, 115  
je do3
jne do3_2
do3:
call s_d
do3_2:

cmp temps, 101
je do4
jne do4_2
do4:
call e_d#
do4_2:

cmp temps, 100
je do5
jne do5_2
do5:
call d_e
do5_2:

cmp temps, 102
je do6
jne do6_2
do6:
call f_f
do6_2:

cmp temps, 116
je do7
jne do7_2
do7:
call t_f#
do7_2:

cmp temps, 103
je do8
jne do8_2
do8:
call g_g
do8_2:

cmp temps, 121
je do9
jne do9_2
do9:
call y_g#
do9_2:

cmp temps, 104
je do10
jne do10_2
do10:
call h_a
do10_2:

cmp temps, 117
je do11
jne do11_2
do11:
call u_a#
do11_2:

cmp temps, 106
je do12
jne do12_2
do12:
call j_b
do12_2:

cmp temps, 107
je do13
jne do13_2
do13:
call k_c_high
do13_2:

cmp temps, 9
jne main_loop
ret


a_c:
mov dx, do
call play_sound
RET

w_c#:
mov dx, do_diez
call play_sound
RET

s_d:
mov dx, re
call play_sound
RET

e_d#:
mov dx, re_diez
call play_sound
RET

d_e:
mov dx, mi
call play_sound
RET

f_f:
mov dx, fa
call play_sound
RET

t_f#:
mov dx, fa_diez
call play_sound
RET

g_g:
mov dx, sol
call play_sound
RET

y_g#:
mov dx, sol_diez
call play_sound
RET

h_a:
mov dx, la
call play_sound
RET

u_a#:
mov dx, la_diez
call play_sound
RET

j_b:
mov dx, si_
call play_sound
RET

k_c_high:
mov dx, do2
call play_sound
RET

main_draw:
;c half one
push 0 ;x
push 50 ;y
push 5 ;x len
push 30 ;y len
call draw_key

;c half two
push 0 ;x
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;d half one
push 12 ;x
push 50 ;y
push 5 ;x len
push 30 ;y len
call draw_key

;d half two
push 11 ;x (buffer of 2px)
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;e half one
push 24 ;x (prev+12)
push 50 ;y
push 7 ;x len
push 30 ;y len
call draw_key

;e half two
push 22 ;x
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key


;f half one
push 33 ;x
push 50 ;y
push 5 ;x len
push 30 ;y len
call draw_key

;f half two
push 33 ;x
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;g half one
push 45 ;x
push 50 ;y
push 5 ;x len
push 30 ;y len
call draw_key

;g half two
push 44 ;x (buffer of 2px) ;11, 12
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;a half one
push 57 ;x (prev+12)
push 50 ;y
push 5 ;x len
push 30 ;y len
call draw_key

;a half two
push 55 ;x
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;b half one
push 69 ;x (prev+12)
push 50 ;y
push 6 ;x len
push 30 ;y len
call draw_key

;b half two
push 66 ;x
push 80 ;y
push 9 ;x len
push 20 ;y len
call draw_key

;b half two
push 77 ;x
push 50 ;y
push 9 ;x len
push 50 ;y len
call draw_key

jmp main_loop

include 'draw.asm'
include 'notes.asm'