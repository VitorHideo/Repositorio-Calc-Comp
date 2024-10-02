from math import pow

#Exercicio 01
print("exercicio 01")

a = 2

potencia_ao_quadrado = a**2
potencia_ao_cubo = a**3
potencia_a_quarta = a**4

print('a=',a)
print('a ao quadrado =', potencia_ao_quadrado)
print('a ao cubo =',potencia_ao_cubo)
print('a a quarta =', potencia_a_quarta)

print('\n'*1)


#Exercicio 01 - V2
print("exercicio 01 - com uso de biblioteca")
c = 4
d = 5
c_elevado_ao_quadrado = pow (c,2)
c_elevado_ao_cubo = pow (c,3)
c_elevado_a_quarta = pow (c,4)
c_elevado_a_d = pow(c,d)
print ('c elevado ao quadrado =', c_elevado_ao_quadrado)
print ('c elevado ao cubo =', c_elevado_ao_cubo)
print ('c elevado a quarta =', c_elevado_a_quarta)
print ('c elevado a d =', c_elevado_a_d)

print('\n'*1)


#Exercicio 02
print("exercicio 02")

x = 512

raiz_quadrada_de_x = x**(1/2)
raiz_cubica_de_x = x**(1/3)
raiz_quarta_de_x = x**(1/4)

print('x=',x)
print('raiz quadrada de x =', raiz_quadrada_de_x)
print('raiz cúbica de x =', raiz_cubica_de_x)
print('raiz quarta de x =', raiz_quarta_de_x)

print('\n'*1)



#Exercicio 03
print("exercicio 03")

from math import floor
from math import ceil

w = 3345.61

piso = floor (w)
teto = ceil (w)
arredondamento = round (w)

print('w=',w)
print('o piso de w =',piso)
print('o teto de w =',teto)
print('o arredondamento de w =',arredondamento)

print('\n'*1)


#Exercicio 04
print("exercicio 04")

arredondamento_1 = round (w,1)
arredondamento_2 = round (w,2)

print(arredondamento_1)
print(arredondamento_2)
#O Round (w,1) funciona para você determinar uma valor de casas decimais que você quer que o programa faça o arredondamento do número, nós exemplos foram com 1 e 2 casas

print('\n'*1)


#Exercicio 05
print("Exercicio 05")

x1 = 1.456
x2 = 3.678
x3 = 7.5

arredondamento_x1 = round (x1)
arredondamento_x2 = round (x2)
arredondamento_x3 = round (x3)

print('x1 =', x1)
print('x2 =', x2)
print('x3 =', x3)

print('x1 arredondado =', arredondamento_x1)
print('x2 arredondado =', arredondamento_x2)
print('x3 arredondado =', arredondamento_x3)


print('\n'*1)


#Exercicio 06
print("exercicio 06")

num = 1.456

piso2 = int(floor(num))
teto2 = int(ceil(num))

print(piso2)
print(teto2)


