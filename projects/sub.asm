;PENGURANGAN
.model SMALL
.code
org 100h

proses:
	jmp tambah
	teks db '5 - 2 = $'
	angka1 db 35h
	angka2 db 2

tambah:
	mov ah,09h
	lea dx,teks
	int 21h
	mov al,angka1
	sub al,angka2
	mov ah,2
	mov dl,al
	int 21h
	int 20h

end proses