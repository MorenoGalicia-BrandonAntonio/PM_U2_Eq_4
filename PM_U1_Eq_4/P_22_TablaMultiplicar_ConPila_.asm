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

	main22 PROC
	
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

			push eax ; toma el valor de eax y lo guarda en la pila

			mul ebx ; eax = eax * ebx = contador * tabla

			call writedec ; imprime el resultado de la multiplicacion

			pop eax ; recupera el valor de la tabla almacenado en la pilo y lo coloca en eax

			inc eax  ; incrementa el contador en 1
			xchg eax, ebx ; intercambia los registros para que en eax = tabla y en ebx = contador
			call crlf

			cmp ebx, 10
			jle ciclo
		
		exit	
	
	main22 ENDP
	
	END main22
