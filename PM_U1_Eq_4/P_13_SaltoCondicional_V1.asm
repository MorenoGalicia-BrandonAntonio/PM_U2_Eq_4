TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

var1_13 dword 10d


message1_13 db "Mensaje 1 ",0
message2_13 db "Mensaje 2 ",0
message3_13 db "Mensaje 3 ",0

.code

	main13 PROC
	
		;Lógica del Programa

		;desplegaremos el mensaje2 solo cuando el valor leido sea 1
		call readint ;lee un numero y lo almacena en eax
		mov edx, offset message1_13
		call writestring
		call crlf

		call dumpregs  ;volcado de registros
		cmp eax, 1; compara si eax es 1----las reglas de compraracion respetan las usadas por mov
					;cmp compara con una resta que espoues de realizarse se deshace pero si altera a las banderas
		
		call dumpregs

jz soniguales		; salta si es 0 ;realizael salto a la localidad de la etiqueta si la bandera de Zero esta activa
					;la bandera de Zero se activa si la comparacion de dos numeros son iguales

jmp continuar		; salto incondicional

soniguales:

		mov edx, offset message2_13
		call writestring
		call crlf

continuar: ;etiqueta

		mov edx, offset message3_13
		call writestring
		call crlf
		
		
	
		
		exit	
	
	main13 ENDP
	
	END main13
