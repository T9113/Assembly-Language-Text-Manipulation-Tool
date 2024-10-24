.model small
.stack 100h
.data    
    msg db 10,13,10,13,"Plese enter",10,13,"1 -> lowercase to uppercase",10,13,"2 -> capitalcase to lowercase", 10,13,"3 -> Sentence", 10,13,"4 -> First letter capital", 10,13,"5 -> Toggle case", 10,13,"6 -> Exit", 10,13,  "$"
    msglo db 10,13,"Enter lower letters: $"
    msgca db 10,13,"Enter capital letters: $"
    msgl db 10,13,"You entered lowercase letters, converted to uppercase -> $"
    msgc db 10,13,"You entered uppercase letters, converted to lowercase -> $"
    msgse db 10,13,"Enter Sentence: $"
    msgto db 10,13,"Enter alphabet: $"
    msggout db 10,13,"Output -->  $"
    ex_it db 10,13,"Exit $"
    va db 35 dup ('$')
.code
main proc 
    mov ax, @data
    mov ds, ax        

 main_p:
    mov ah, 09h        
    lea dx, msg        
    int 21h        
    mov bx, offset va

	mov ah,01h
	int 21h
	;mov dl,al
	cmp al,49
	je to_smal1
	cmp al,50
	je to_capi2
	cmp al,51
	je to_senten
	cmp al,52
	je to_flet
	cmp al,53
	je to_tog
	cmp al,54
	je to_exit
to_tog:
	mov ah,09h
	lea dx,msgse
	int 21h
	mov cx,32
to_toggle:
	mov ah,01h
	int 21h
	cmp al,13
	je output3
	cmp al,97
	jl to_togs
	cmp al,'Z'
	jg to_togc
	loop to_toggle

to_togs:
	add al,32
	mov [bx],al
	inc bx
	jmp to_toggle
to_togc:
	sub al,32
	mov [bx],al
	inc bx
	jmp to_toggle
to_smal1:
	jmp to_smal

to_senten:
	mov ah,09h
	lea dx,msgse
	int 21h
	mov cx,32
	mov ah,01h
	int 21h
	sub al,32
	mov [bx],al
	inc bx
to_sentence:
	mov ah,01h
	int 21h
	cmp al,13
	je output3
	mov [bx],al
	inc bx
	loop to_sentence
to_exit:
	jmp to_exit2

to_capi2:
	jmp to_capi

to_flet:
	mov ah,09h
	lea dx,msgse
	int 21h
	mov cx,32
	mov ah,01h
	int 21h
	sub al,32
	mov [bx],al
	inc bx
to_fletter:
	mov ah,01h
	int 21h
	cmp al,13
	je output3
	cmp al,32
	je to_flc
	mov [bx],al
	inc bx
	loop to_fletter

to_flc:
	mov [bx],al
	inc bx
	mov ah,01h
	int 21h
	sub al,32
	mov [bx],al
	inc bx
	jmp to_fletter


output3:
	mov ah,09h
	lea dx,msggout
	int 21h
	jmp r_output

to_smal:
	mov ah,09h
	mov dx,offset msglo
	int 21h
	mov cx, 8
to_small:
    mov ah, 01h
    int 21h
    sub al, 20h
    mov [bx], al
    inc bx
    loop to_small
    jmp output1

to_capi:
	mov ah,09h
	mov dx,offset msgca
	int 21h
	mov cx, 8
to_capital:
    mov ah, 01h
    int 21h
    add al, 20h
    mov [bx], al
    inc bx
    loop to_capital
    jmp output2

output1: 
   mov ah, 09h        
    mov dx,offset msgl
    int 21h        
    jmp r_output

output2: 
   mov ah, 09h        
    lea dx, msgl
    int 21h   
    jmp r_output

r_output:
    mov ah, 09h
    mov DX,OFFSET va
    int 21h    
    jmp main_p      

to_exit2:
    mov ah,09h
    mov dx,offset ex_it
    int 21h   
    mov ah, 04Ch
    int 21h
main endp
end main
