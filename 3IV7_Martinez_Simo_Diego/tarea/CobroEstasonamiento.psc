Algoritmo CobroEstasonamiento
	Definir horaentrada,minutoentrada,segundosalida,segundoentrada,horasalida,minutosalida Como real
	Definir totalHoras,totalMinutos,totalsegundos,minutostotalescuenta Como real
	Definir totalcobro Como real
	//entrada de datos
	Escribir "Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrada (formato de 0 a 59 minutos)"
	Leer minutoentrada
	Escribir "ingresar los segundos de entrada(formato de 0 a 59 segundos)"
	Leer segundoentrada
	Escribir "Ingrese la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "Ingrese los minutos de esalida (formato de 0 a 59 minutos)"
	Leer minutosalida
	Escribir "ingresar los segundos de salida( fromato de 0 a 59 segundos )"
	Leer segundosalida
	//Proceso 
	
	//calcular el timepo total en minutos
	
	
	totalHoras=horasalida-horaentrada
	totalMinutos=minutosalida-minutoentrada
	totalsegundos=segundosalida-segundoentrada
	
	//empesara ebaluar los casos 
	// si los minutos de salida son menores que los de entrada ajustar los minutos 
	Si totalMinutos <0 Entonces
		totalMinutos = totalMinutos+60
		totalHoras =totalHoras -1
	Fin Si
	
	Si totalsegundos <0 Entonces
		totalsegundos=totalsegundos+60
		totalMinutos=totalMinutos-1
	FinSi
	//convertir todo a minutos 
	totalMinutos=(totalHoras *60)+totalMinutos
	totalsegundos=(totalMinutos*60)+totalsegundos
	//calcular cobro
	totalcobro=0
	
	//calcular el cobro por la hora completa
	
	Si totalMinutos >=60 Entonces
		totalcobro =totalcobro+(totalMinutos/60)*15
		
	Fin Si
	Si totalsegundos >=60 Entonces
		totalcobro =totalcobro+(totalsegundos/60)*0.01666
		
	Fin Si
	//Calcular el cobro de cada fraccion 

	minutosrestantes=totalMinutos%60
	segundosrestates=totalsegundos%60
	Si minutosrestantes>0   Entonces
		
		fracciones15min=minutosrestantes // a qui se obtiene los 15
		
		//cobrar cada fraccion 
		totalcobro=totalcobro+fracciones15min*4
	Fin Si
	Si segundosrestates>0 Entonces
		fraccionde15segundos=segundosrestates
		totalcobro=totalcobro+fraccionde15segundos+4

	Fin Si

	
	//mostrar el resultado
	Escribir "El total a pagar es de ", totalcobro , " pesos"
	
	
	
	
	
FinAlgoritmo
