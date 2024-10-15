Algoritmo Conversiones
	Definir j Como Entero
	Repetir
		

	Escribir " conversiones "
	Escribir "elije la opcion que deseas"
	Escribir "1. Pulgadas"
	Escribir "2. Yardas"
	Escribir "3. centimetros"
	Escribir "4. metros "
	Escribir "0. salir"
	Escribir "ingresa la opcion que desas convertir "
	Leer  j
	
	Segun j  Hacer
		1:
			Limpiar Pantalla
			Escribir "ingrese el numero que desea convertir de pies  "
			Leer p
			Si p > 0 Entonces
			t=p*12
			Escribir "el numero ingresado fue ",p, " se convirtio a ",t," pulgadas"
			Escribir " apreta una tecla para reiniciar"
			Esperar Tecla
			t=0
			p=0
		SiNo
			Escribir "no se haceptan negatibos"
		FinSi
		
			
		2:
			Limpiar Pantalla
			Escribir "ingrese el numero que desea convertir de pies  "
			Leer p
			Si p > 0 Entonces
			t=p*0.333333
			Escribir "el numero ingresado fue ",p, " se convirtio a ",t," yardas"
			Escribir " apreta una tecla para reiniciar"
			Esperar Tecla
			t=0
			p=0
		SiNo
			Escribir "no se haceptan negatibos"
		FinSi
		3:
			Limpiar Pantalla
			Escribir "ingrese el numero que desea convertir de pies  "
			Leer p
			Si p > 0 Entonces
			t=p*30.48
			Escribir "el numero ingresado fue ",p, " se convirtio a ",t," centimetros"
			Escribir " apreta una tecla para reiniciar"
			Esperar Tecla
			t=0
			p=0
		SiNo
			Escribir "no se haceptan negatibos"
		FinSi
		4:
			Limpiar Pantalla
			Escribir "ingrese el numero que desea convertir de pies  "
			Leer p
			Si p > 0 Entonces
			t=p*0.3048
			Escribir "el numero ingresado fue ",p, " se convirtio a ",t," metros "
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
