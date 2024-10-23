def decimalbinario(decimal):
    return bin(decimal).replace("0b", "")
def binariodecimal(binario):
    return int(binario, 2)
opcion = input("Escribe '1' para convertir de decimal a binario o '2' para convertir de binario a decimal: ")
if opcion == '1':
    decimal = int(input("Ingresa el numero decimal que deseas convertir a binario: "))
    print("La convercion de",decimal,"en binaro es :",decimalbinario(decimal) )
elif opcion == '2':
    binario = input("Ingresa el número binario que deseas convertir a decimal: ")
    print("La convercion de",binario,"a decimal es :", binariodecimal(binario) )
else:
    print("Opción no válida. Por favor, elige '1' o '2'.")
