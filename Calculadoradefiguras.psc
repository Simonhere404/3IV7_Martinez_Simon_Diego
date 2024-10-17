
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
SubProceso rombo(Diagonalmallor,Diagonalmenor,lado)
	Definir area,perimetro Como Real
area=(Diagonalmallor*Diagonalmenor)/2
perimetro=lado*5
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso romboide(base,haltura,lado1,lado2)
	Definir area,perimetro Como Real
	area=base*haltura
	perimetro=(lado1*2)+(lado2*2)
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso Hexagono(lado,apotema)
	Definir area,perimetro Como Real
	perimetro=lado*6
	area=(perimetro*apotema)/2
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso Hoctagono(lado,apotema)
	Definir area,perimetro Como Real
	perimetro=lado*8
	area=(perimetro*apotema)/2
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso Decagono(lado,apotema)
	Definir area,perimetro Como Real
	perimetro=lado*10
	area=(perimetro*apotema)/2
	Escribir "El area del area es: ", area ;
	Escribir "el perimetro del are es: ", perimetro;
FinSubProceso
SubProceso Dodecagono(lado,apotema)
	Definir area,perimetro Como Real
	perimetro=lado*12
	area=(perimetro*apotema)/2
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
	Escribir "C Area y perimetro de un Rombo"
	Escribir "D Area y perimetro de un Romboide"
	Escribir "E Area y perimetro de un Hexagono"
	Escribir "F Area y perimetro de un Hoctagono"
	Escribir "G Area y perimetro de un Decagono"
	Escribir "H Area y perimetro de un Dodecágono"
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
			Escribir "Ingresa la diagonal mallo";
			Leer Diagonalmallor
			Escribir "Ingresa la diagonal menor";
			Leer Diagonalmenor
			Escribir "Ingresa un lado "
			Leer lado
			rombo(Diagonalmallor,Diagonalmenor,lado);
		Caso "D":
			Escribir "Ingresa uno de los lados iguales"
			Leer lado1
			Escribir "Ingresa el otro lado de los lado iguales"
			Leer lado2
			Escribir "ingresa la altura "
			Leer haltura
			Escribir "Ingresa la base "
			Leer base
			romboide(base,haltura,lado1,lado2);
		Caso "E":
			Escribir "Ingresa un lado"
			Leer lado
			Escribir "ingresa la apotema"
			Leer apotema
			Hexagono(lado,apotema)
		Caso "F":
			Escribir "Ingresa un lado"
			Leer lado
			Escribir "ingresa la apotema"
			Leer apotema
			Hoctagono(lado,apotema)
		Caso "G":
			Escribir "Ingresa un lado"
			Leer lado
			Escribir "ingresa la apotema"
			Leer apotema
			Decagono(lado,apotema)
		Caso "H":
			Escribir "Ingresa un lado"
			Leer lado
			Escribir "ingresa la apotema"
			Leer apotema
			Dodecagono(lado,apotema)
		De Otro Modo:
			Escribir "Opcion no valida"
	
	Fin Segun
FinAlgoritmo
