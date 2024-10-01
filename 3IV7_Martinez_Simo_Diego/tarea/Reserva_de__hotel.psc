Algoritmo Reserva_de__hotel
	Definir opcio Como Caracter
	Definir c Como Entero
	Escribir "Cuantas habitaciones tiene el hotel"
	Leer th
	Dimension habitaciones[th]

	Repetir
		


		Limpiar Pantalla

	//Menu
	Escribir "           Menu del hotel"
	Escribir "1         disponibilidad"
	Escribir "2            reservar"
	Escribir "3       cancelar resevacion "
	Escribir "4   gestion de habitaciones ocupadas "
	Escribir "0           salir"
	Escribir " elige una opcion " Sin Saltar
	Leer opcio
     
	Segun opcio Hacer
		"1":
			Limpiar Pantalla
			Escribir "opmcion de desiponibilidad del hotel"
			Escribir "Las habitaciones ocupadas son:"
			Para i <- 1 Hasta th Con Paso 1 Hacer
				Si habitaciones[i] <> 0 Entonces
					Escribir habitaciones[i]
				Fin Si
			FinPara
		
			Escribir "pulsa una tecla para continuar "
			Esperar Tecla
		"2":
			Limpiar Pantalla
			Escribir "esta es la opcion de reservacion "
			Escribir "ingrese el numero de la habitacion que desea reserva"
			leer hr
			si hr>th Entonces
				Escribir "la habitacion es mayor al las que hay "
			SiNo
				Escribir "ingres el dia de su reservacion"
				Leer dr
				Si dr > 31 Entonces
					Escribir "error el dia es mallor a 31"
					Dimension dias[dr]
				SiNo
					Escribir "ingrese el mes de la reservacion "
					Leer mr
					si mr >12 Entonces
						Escribir "erro el mes es mayor a 12 "
					SiNo
						
						Escribir "escribe el año de la reservacion"
						Leer ar
						Si ar < 2024 Entonces
							Escribir "error el año es menor al 2024"
						SiNo
							habitaciones[hr]<- hr
							
						Fin Si
						

					FinSi

				Fin Si
				
			FinSi
			
			
			Escribir "pulsa una tecla para continuar "
			Esperar Tecla
		"3":
			Limpiar Pantalla
			Escribir "esta es la pcion de calncelacion de reserca"
			Escribir "ingrese la habitacione que desea cancelar su reservacion"
			Leer hae
			habitaciones[hae] <- 0
			Escribir "pulsa una tecla para continuar "
			Esperar Tecla
		"4":
			Limpiar Pantalla
			Escribir "esta es la opcion de gestion de habitaciones ocupadas"
			Para i <- 1 Hasta th Con Paso 1 Hacer
				Si habitaciones[i] <> 0 Entonces
					
					po=(i*100)/th
					Escribir" el porcentaje de abitaciones ocupadas es ", po,"%"
				Fin Si
			FinPara
			Escribir "pulsa una tecla para continuar "
			Esperar Tecla
		"0":
			Escribir ""
			Escribir "addios"
		De Otro Modo:
			Escribir   opcio, "no es una opciom correcta"
			Escribir "pulsa una tecla para continuar"
			Esperar Tecla
	Fin Segun
	
Hasta Que (opcio=="0")


	
	
	
	

	
	
	
FinAlgoritmo
