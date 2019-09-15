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

RET

include 'draw.asm'
