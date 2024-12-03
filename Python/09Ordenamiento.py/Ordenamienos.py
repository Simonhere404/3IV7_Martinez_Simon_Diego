import time
import tkinter as tk
from tkinter import messagebox

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n-i-1):
            if lista[j] > lista[j+1]:
                lista[j], lista[j+1] = lista[j+1], lista[j]
    return lista

def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if lista[j] < lista[min_idx]:
                min_idx = j
        lista[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j+1] = lista[j]
            j -= 1
        lista[j+1] = key
    return lista

def merge(lista):
    if len(lista) > 1:
        mid = len(lista)//2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        merge(izquierda)
        merge(derecha)

        i = j = k = 0
        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[j]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[j]
                j += 1
            k += 1

        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1

        while j < len(derecha):
            lista[k] = derecha[j]
            j += 1
            k += 1
    return lista

def quick_sort(lista):
    if len(lista) <= 1:
        return lista
    pivote = lista[len(lista)//2]
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    return quick_sort(izquierda) + medio + quick_sort(derecha)

def ordenar():
    entrada = entry_lista.get()
    metodo = metodo_var.get()

    try:
        lista = list(map(int, entrada.split(',')))
        if len(lista) > 40:
            messagebox.showerror("Error", "Por favor, ingresa un máximo de 40 números.")
            return
    except ValueError:
        messagebox.showerror("Error", "Asegúrate de ingresar solo números separados por comas.")
        return

    lista_original = lista[:]
    inicio = time.time()
    if metodo == "Burbuja":
        lista_ordenada = burbuja(lista)
    elif metodo == "Selección":
        lista_ordenada = seleccion_sort(lista)
    elif metodo == "Inserción":
        lista_ordenada = insercion(lista)
    elif metodo == "Merge Sort":
        lista_ordenada = merge(lista)
    elif metodo == "Quick Sort":
        lista_ordenada = quick_sort(lista)
    else:
        messagebox.showerror("Error", "Selecciona un método de ordenamiento.")
        return
    fin = time.time()

    text_resultado.config(state="normal")
    text_resultado.delete("1.0", tk.END)
    text_resultado.insert(tk.END, f"Lista original: {lista_original}\n")
    text_resultado.insert(tk.END, f"Lista ordenada: {lista_ordenada}\n")
    text_resultado.insert(tk.END, f"Tiempo de ejecución: {fin - inicio:.6f} segundos\n")
    text_resultado.config(state="disabled")

ventana = tk.Tk()
ventana.title("Ordenamiento de listas")
ventana.geometry("500x400")
tk.Label(ventana, text="Ingresa una lista de números separados por comas (máximo 40):").pack(pady=10)
entry_lista = tk.Entry(ventana, width=50)
entry_lista.pack(pady=5)
tk.Label(ventana, text="Selecciona el método de ordenamiento:").pack(pady=10)
metodo_var = tk.StringVar()
metodos = ["Burbuja", "Selección", "Inserción", "Merge", "Quick Sort"]
for metodo in metodos:
    tk.Radiobutton(ventana, text=metodo, variable=metodo_var, value=metodo).pack(anchor="w")
    
tk.Button(ventana, text="Ordenar", command=ordenar, bg="lightblue").pack(pady=10)
tk.Label(ventana, text="Resultados:").pack(pady=10)
text_resultado = tk.Text(ventana, height=10, width=60, state="disabled")
text_resultado.pack()
ventana.mainloop()
