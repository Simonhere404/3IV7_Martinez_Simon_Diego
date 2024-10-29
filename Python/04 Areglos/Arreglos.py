#Vamos  a crar una funcion que se encargue de sumar 2 arreglos 
def sumar_arreglos(arreglo1,arreglo2):
    if len(arreglo1) != len(arreglo2):
        print("Error, Los arreglos deben de tener a misma longitud")
        return None
    else:
        suma = []
        for i in range(len(arreglo1)):
            suma.append(arreglo1[i] + arreglo2[i])
        return suma


#Primero definimos los arreglos
arreglo1 = []
arreglo2 = [] 
n = int(input("Introduce el tamaño de los arrelgos"))

print("Introduce los elementos del primer arreglo")
for i in range(n):
    num = float(input(f"Ingresa el elemto ", {i+1} ))
    arreglo1.append(num)
    print("Introduce los elementos del primer arreglo")
    
print("Introduce los elementos del primer arreglo")
for i in range(n):
    num = float(input(f"Ingresa el elemto ; {i+1} "))
    arreglo2.append(num)
    resulado = sumar_arreglos(arreglo1,arreglo2)

#mostar el resultado
if resulado is not None:
    print("La suma de los dos arreglos es: ", resulado)