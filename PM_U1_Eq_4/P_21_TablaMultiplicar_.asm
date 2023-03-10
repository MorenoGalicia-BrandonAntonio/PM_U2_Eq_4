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

msg1_21 db " x ",0
msg2_21 db " = ",0
msg3_21 db "Que tabla quieres visualizar?:",0
.code

	main21 PROC
	
		;Lógica del Programa
		
		;desplegar la tabla de multiplicar indicada por el usuario...
		
		mov edx, offset msg3_21 ; de que tabla quieres el examen...
		call writestring
		

		call readint ; la tabla que se quiere visualizar
		mov ebx, 1 ; contador de la tabla
		call crlf
		ciclo: 

			call writedec ; imprime tabla

			mov edx, offset msg1_21
			call writestring ; X

			xchg eax, ebx
			call writedec

			mov edx, offset msg2_21
			call writestring ; =

			mov ecx, eax ; respalda valor del contador

			mul ebx ; eax = eax * ebx = contador * tabla

			call writedec

			mov eax, ecx ; recupera el valor de la tabla en eax

			inc eax
			xchg eax, ebx
			call crlf

			cmp ebx, 10
			jle ciclo
		
		exit	
	
	main21 ENDP
	
	END main21
