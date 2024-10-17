
	// Vamos a crar un programa para calcular areas y perimetros
	//pero con un subproceso 
// vamos a crar el sub proceso del rectangulo
SubProceso Rectangulo(base,altura)
	Definir area,perimetro Como Real
	area=base*altura
	perimetro=2*(base+altura)
	Escribir "El area del rectangulo es: ", area ;
	Escribir "el perimetro del ractngulo es: ", perimetro;
FinSubProceso
SubProceso Triangulo(base,altura,lado1,lado2,lado3)
	Definir area,perimetro Como Real
	area=(base*altura)/2
	perimetro=lado1+lado2+lado3
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso Pentagono(apotema,lado,perimetro2)
	Definir area,perimetro Como Real
	perimetro=lado*5
perimetro2=perimetro
	area=(parimetro2*apotema)/2
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso











Algoritmo Calculadoradefiguras
	Definir opcion Como Caracter
	Definir base,altura,lado1,lado2,lado3 Como Real
	//vamos a crar el menu
	Escribir "selecciona una opcion: "
	Escribir "A Area y perimetro del rectangulo"
	Escribir "B Area y perimetro del triangulo"
	Escribir "C Area y perimetro del pentagono"
	Leer opcion
	Segun opcion Hacer
			//para el caso 1
		Caso "A":
			Escribir "Ingreso la base del ractangulo"
			Leer base
			Escribir "Ingreso la altura del ractangulo"
			Leer altura
			Rectangulo(base,altura)
		Caso "B":
			Escribir "Ingreso la base del triangulo"
			Leer base
			Escribir "Ingreso la altura del rtriangulo"
			Leer altura
			Escribir "ingresa lado 1"
			Leer lado1
			Escribir "ingresa lado 2"
			Leer lado2
			Escribir "ingresa lado 4"
			Leer lado3
			Triangulo(base,altura,lado1,lado2,lado3)
		Caso "C":
			Escribir "Ingresa un lado del pentagono"
			Leer lado
			Escribir "Ingresa el apotema del penatagono"
			Leer apotema
			Pentagono(apotema,lado,perimetro2)
			
		De Otro Modo:
			Escribir "Opcion no valida"
	
	Fin Segun
FinAlgoritmo
