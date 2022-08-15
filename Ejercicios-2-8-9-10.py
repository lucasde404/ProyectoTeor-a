#----------------------------------------Ejercicio N°2------------------------------------------------------------

datos = ["DNI", "Nombre", "Apellido", "Teléfono", "Dirección"]
elementos = [23546987, "María", "Perez", 4789689, "Pueyrredon 811"]

Dueño2 = [["DNI", 23546987],["Nombre","María"],["Apellido","Perez"],["Teléfono", 4789689],["Dirección", "Pueyrredon 811"]]

print("Datos del Dueño de un Perro:")
print (Dueño2)

print()

for i in Dueño2:
    i = [["Nombre","María"],["Teléfono", 4789689], ["Dirección", "Pueyrredon 811"]]
    print ("Datos del Dueño de un Perro sin DNI y Apellido:")
    print (i)
    
    break

print ()



#----------------------------------------Ejercicio N°8------------------------------------------------------------

#Determinar el Valor Mínimo.

def valor_min ():
    
    Historial4 = (7510, 7960, 76180, 800, 4100)
    print ("Valor minimo:", min(Historial4))
    
valor_min()


print ()



#----------------------------------------Ejercicio N°9------------------------------------------------------------

#Determinar el Valor Máximo.

def valor_max ():
    
    Historial5 = (8520, 9510, 7530, 3570, 1590)
    print ("Valor maximo:", max(Historial5))
    
valor_max()


print()



#----------------------------------------Ejercicio N°10------------------------------------------------------------

# "Clientes” con los nombres de los diferentes  dueños de Perros.

# Desornados
Clientes = ["Juan", "Mario", "Ariel", "Josefina", "Marianella"]
print ("Desordenados")
print (Clientes)

print()

# Ordenados Alfabeticamente
Clientes.sort()
print("Ordenados Alfabeticamente")
print (Clientes)

print()

print ("Gracias!!!")

