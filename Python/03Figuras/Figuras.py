import math 

#Vamos a crar una funcion para calcular el are y perimetro

def rectangulo(base,altura):
    are= base * altura 
    perimetro = 2*(base + altura)
    return are,perimetro
def triangulo(base,altura):
    are= (base * altura)/2
    perimetro = lado1 + lado2 + lado3 
    return are,perimetro
def esfera(radio):
    vlumen= (4/3)*math.pi*radio**3
    return volumen 

def menu():
 print("Hola bienvenido a python con funciones ")
 print("Elija una opcion")
 print("A.-Area y perimetro de rectangulo")
 print("B.-Area y perimetro del Triangulo")
 print("C.-volumen de esfera")

#programa 
menu()
opcion = input("Intruduce la opcion a desear").upper()

if opcion == "A":
    base = float(input("Introuce la base del rectangulo"))
    Altura = float(input("Introuce la altura"))
    area, perimetro = rectangulo(base,Altura)
    print("El area es de: ", area )
    print("El perimetro es de: ", perimetro )
if opcion == "B":
    base = float(input("Introuce la base del rectangulo"))
    Altura = float(input("Introuce la altura"))
    lado1 = float(input("Introuce el lado 1"))
    lado2 = float(input("Introuce el lado 2"))
    lado3  = float(input("Introuce el lado 3"))
    area,perimetro = triangulo(base,Altura,lado1,lado2,lado3)
    print("El area es de: ", area )
    print("El perimetro es de: ", perimetro )
if opcion == "C":
    radio = float(input("Introuce el radio"))
    volumen = esfera(radio)
    print("El area es de: ", radio)
    print("El perimetro es de: ", volumen )
else:
    print("Opcion no valida")

#eJERCICIO DEBEN DE RALIZAR EL RPOGRAMA DE CONVERTIR UN NUMERO de decimal a binario y de binario en decimal 

