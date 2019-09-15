offycol dw 0
offxrow dw 0
leny dw  0
lenx dw  0
len dw  0

proc draw_square
add sp, 2
;first push row, column, len
s:
pop len
pop offycol   ;column
pop offxrow   ;row

mov dx, offycol
mov cx, offxrow

inc dx ;offset fix


;mov cx, 0     ; column
;mov dx, 0     ; row

square_rows:
mov al, 11     ; blue
mov ah, 0ch    ; put pixel
int 10h

INC cx
mov ax, offxrow
add ax, len
cmp cx, ax
jle square_rows

jmp square_new_col

square_new_col:

INC DX
MOV cx, offxrow
mov ax, offycol
add ax, len
CMP Dx, ax
JLE square_rows

sub sp, 8
pop ax
add sp, 4
push ax
ret
ENDP draw_square


proc draw_key
add sp, 2
;first push row, column, len

l:
pop leny
pop lenx
pop offycol   ;column
pop offxrow   ;row

mov dx, offycol
mov cx, offxrow

inc dx ;offset fix


;mov cx, 0     ; column
;mov dx, 0     ; row

piano_rows:
mov al, 15     ; blue
mov ah, 0ch    ; put pixel
int 10h

INC cx
mov ax, offxrow
add ax, lenx
cmp cx, ax
jle piano_rows

jmp piano_new_col

piano_new_col:

INC DX
MOV cx, offxrow
mov ax, offycol
add ax, leny
CMP Dx, ax
JLE piano_rows

sub sp, 10
pop ax
add sp, 6
push ax
ret
ENDP draw_key


proc draw_pressed_key
add sp, 2
;first push row, column, len
k:
pop leny
pop lenx
pop offycol   ;column
pop offxrow   ;row

mov dx, offycol
mov cx, offxrow

inc dx ;offset fix


;mov cx, 0     ; column
;mov dx, 0     ; row

pressed_piano_rows:
mov al, 11     ; blue
mov ah, 0ch    ; put pixel
int 10h

INC cx
mov ax, offxrow
add ax, lenx
cmp cx, ax
jle pressed_piano_rows

jmp pressed_piano_new_col

pressed_piano_new_col:

INC DX
MOV cx, offxrow
mov ax, offycol
add ax, leny
CMP Dx, ax
JLE pressed_piano_rows

sub sp, 10
pop ax
add sp, 6
push ax
ret
ENDP draw_pressed_key
