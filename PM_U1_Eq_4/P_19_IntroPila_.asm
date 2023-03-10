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



.code

	main19 PROC
	
		;Lógica del Programa
	
		mov edx, 10 ; colocando en el reg edx el valor 10
		; este se pudo obtener de muchas formas o resultado de una operación

		; se requiere utilizar al registro edx, sin embargo, no se quiere perder su valor
		; entonces, se refiere a la pila para almacenar temporalmente el valor del reg

		push edx ; almacenar el valor de edx en la pila

		mov edx, 5 ; cambia el valor de edx, y pone en este el nuevo valor

		mov eax, edx ; se coloca en eax el valor de edx para poder imprimirlo en consola

		call writedec
		call crlf 

		pop eax ; recupera el ultimo valor que se guardo en la pila,
				; en este caso, el valor de edx al comienzo del programa.

		call writedec
		call crlf 

		exit	
	
	main19 ENDP
	
	END main19
