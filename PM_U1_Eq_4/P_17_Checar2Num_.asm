TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;           Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

mayorA_17 db "A es mayor que B ",0
mayorB_17 db "B es mayor que A ",0
iguales_17 db "A y B son iguales. ",0

msg1_17 db "Ingresa el valor de A: ",0
msg2_17 db "Ingresa el valor de B: ",0

.code

	main17 PROC
	
		;Lógica del Programa
	
		mov edx, offset msg1_17
		call writestring
		call crlf

		call readint ; eax ; valor de A

		
		mov edx, offset msg2_17
		call writestring
		call crlf
		
		mov ebx, eax ; respalda el valor de eax en ebx
		call readint ; eax ; valor de B

		; eax = B y en ebx = A
		
		cmp ebx, eax ; comparamos a A con B

		jz igual
		jl menor

		mov edx, offset mayorA_17
		call writestring
		call crlf

		jmp salir

		menor:

		mov edx, offset mayorB_17
		call writestring
		call crlf
		
		jmp salir

		igual: 

		mov edx, offset iguales_17
		call writestring
		call crlf
		
		salir:

		exit	
	
	main17 ENDP
	
	END main17
