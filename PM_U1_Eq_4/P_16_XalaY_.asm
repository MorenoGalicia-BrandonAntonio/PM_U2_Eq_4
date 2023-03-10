TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

msg1_X_16 db "Ingresa el valor de X: ",0
msg2_Y_16 db "Ingresa el valor de Y: ",0
msg3_Final_16 db "La potencia es: ",0
.code

	main16 PROC
	
		;Lógica del Programa
	
		mov edx, offset msg1_X_16 
		call writestring
		call readint ; leemos un valor y lo guardamos en eax ;BASE
		call crlf
		mov ebx, eax 

		mov edx, offset msg2_Y_16 
		call writestring
		call readint ; leemos un valor y lo guardamos en eax ;POTENCIA
		call crlf
		mov ecx, eax ; ecx respalda la potencia

		mov eax, ebx ; se regresa la base a eax

		repite:
			mul ebx
			sub ecx, 1
			cmp ecx, 1
			jg repite

		mov edx, offset msg3_Final_16 
		call writestring
		call writedec
		call crlf


		exit	
	
	main16 ENDP
	
	END main16
