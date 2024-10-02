""""
conjunto_processador = {'CPU', 'Registrador','Core'}
print(conjunto_processador)
print(type(conjunto_processador))
conjunto_processador.add('Cache')
print(conjunto_processador)
conjunto_processador.remove('Cache')
print(conjunto_processador)
conjunto_processador.discard('Registrador')
print(conjunto_processador)
conjunto_processador.clear()
print(conjunto_processador)
del conjunto_processador
#print(conjunto_processador)
"""

""""
conjunto_processador = set(['CPU', 'Registrador', 'Core'])
print(conjunto_processador)
"""

"""
lista_processador = {'CPU', 'Registrador', 'Core', 'CPU'}
conjunto_processador = set(lista_processador)
print(conjunto_processador)
"""

user_Thor = {'mysql', 'CPU', 'RAM', 'SSD1', 'Google'}
user_Thanos = {'LoL', 'RAM', 'CPU', 'HD', 'Google'}
user_CA = {'mysql', 'LOL', 'RAM', 'CPU', 'Firefox'}
user_TS = {'mysql', 'CPU', 'RAM', 'SSD1', 'Google'}
inventario1 = user_Thor | user_CA
print(inventario1)

inventario2 = user_Thor | user_Thanos | user_CA | user_TS
print(inventario2)

inventario3 = user_Thor.union(user_CA)
print(inventario3)

inventario4 = user_Thor.union(user_Thanos) | user_CA.union(user_TS)
print(inventario4)

inventario5 = user_Thor & user_CA
print(inventario5)

inventario6 = user_Thor.intersection(user_Thanos)
print(inventario6)

inventario7 = user_Thanos.intersection(user_Thor) & user_CA.intersection(user_TS)
print(inventario7)

inventario8 = user_Thor - user_Thanos
print(inventario8)

inventario9 = user_Thor - user_Thanos.intersection(user_CA - user_TS)
print(inventario9)

x = 'CPU' in user_TS
print(x)

y = 'Firefox' in user_Thanos
print(y)

print('---------------------------')

print('LoL' not in user_Thor)
print('LoL' not in user_Thanos)

z = 'Google' in user_Thanos & user_CA & user_TS & user_Thor
print(z)

print('---------------------------')

print(user_Thor.issubset(user_Thanos))
print(user_Thor.issubset(user_TS))
# issubset ou issuperset  ||  <= ou >= 

print('---------------------------')

print(user_TS == user_Thor)
print(user_TS != user_Thor)
print(user_TS == user_CA)
print(user_TS != user_CA)




