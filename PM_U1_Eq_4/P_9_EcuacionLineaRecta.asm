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
msj1 db "Ingrese el valor m:", 0
msj2 db "Ingrese el valor x:", 0
msj3 db "Ingrese el valor b:", 0
msj4 db "El valor de y es:", 0


.code

	main9 PROC
	
		;Lógica del Programa
		
		
		mov edx, offset msj1
		call writestring
		call readint ; readint almacena en eax
		call crlf

		mov ecx, eax ; respaldar en ecx el valor de eax

		mov edx, offset msj2
		call writestring
		call readint
		call crlf
		
		mul ecx ; eax que multiplica a ecx = a m que multiplica a x
		mov ecx, eax

		mov edx, offset msj3
		call writestring
		call readint
		call crlf
		
		add eax, ecx
		
		call crlf
		mov edx, offset msj4
		call writestring
		call writeint
		call crlf
		
		exit	
	
	main9 ENDP
	
	END main9
