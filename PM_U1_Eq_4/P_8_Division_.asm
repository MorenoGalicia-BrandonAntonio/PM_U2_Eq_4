TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
var1_8 dword 2d
.code

	main8 PROC
	
		;L�gica del Programa
	
		;La division siempre debe usarse entre eax y un operando
		; cociente se almacena en eax
		; el residuo se almacena en edx
		; se recomienda limpiar el reg eax siempre que se vaya a realizar una divisi�n
		;

		mov eax, 10
		
		mov edx, 0 ; limpieza del registro

		div var1_8 ; eax = 10/2

		call writeint

		;ejemplo 2
		call crlf

		mov eax, 9
		mov edx, 0
		div var1_8
		call writeint
		call crlf

		; mov eax, edx ; sobreescribir el cociente ;opcion 1
		xchg eax, edx ; intercambia el valor de los reg ;opcion 2
		call writeint

		exit	
	
	main8 ENDP
	
	END main8
