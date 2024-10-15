Algoritmo Conversiones
	Definir j Como Entero
	Repetir
		
		
		Escribir " conversiones "
		Escribir "elije la opcion que deseas"
		Escribir "1. celsius"
		Escribir "2. kelvine"
		Escribir "3. rankine"
		Escribir "0. salir"
		Escribir "ingresa la opcion que desas convertir "
		Leer  j
		
		Segun j  Hacer
			1:
				Limpiar Pantalla
				Escribir "ingrese el numero que desea convertir de grados fahrenheit  "
				Leer p
				Si p > 0 Entonces
					t=((p-32)*5)/9
					k=t+273.15
					Escribir "el numero ingresado fue ",p, " se convirtio a ",k," celsius"
					Escribir " apreta una tecla para reiniciar"
					Esperar Tecla
					t=0
					p=0
				SiNo
					Escribir "no se haceptan negatibos"
				FinSi
				
				
			2:
				Limpiar Pantalla
				Escribir "ingrese el numero que desea convertir de grados fahrenheit  "
				Leer p
				Si p > 0 Entonces
					t=((p-32)*5)/9
					
					Escribir "el numero ingresado fue ",p, " se convirtio a ",t," kelvine"
					Escribir " apreta una tecla para reiniciar"
					Esperar Tecla
					t=0
					p=0
				SiNo
					Escribir "no se haceptan negatibos"
				FinSi
			3:
				Limpiar Pantalla
				Escribir "ingrese el numero que desea convertir de grados fahrenheit  "
				Leer p
				Si p > 0 Entonces
					t=p+459.67
					Escribir "el numero ingresado fue ",p, " se convirtio a ",t," rankine"
					Escribir " apreta una tecla para reiniciar"
					Esperar Tecla
					t=0
					p=0
				SiNo
					Escribir "no se haceptan negatibos"
				FinSi

			De Otro Modo:
				Limpiar Pantalla
				Escribir "no se úedo realizar la conversion "
				Escribir " apreta una tecla para reiniciar"
				Esperar Tecla
				t=0
				p=0
		Fin Segun
	Hasta Que j=0
FinAlgoritmo
