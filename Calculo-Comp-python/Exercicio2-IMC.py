#Exercicio 02

peso=float(input('Quanto você pesa em kg? (kg)'))
altura=float(input('Qual sua altura em M? (M)'))

IMC = peso / (altura**2)

print('O seu IMC é de {:.1f}'.format(IMC)) 

if IMC <= 18.5:
  print('Diagnóstico: Abaixo do peso normal')
elif IMC >= 18.5 and IMC <25:
  print('Diagnóstivo: Peso normal')
elif IMC >= 25 and IMC <30:
  print('Diagnóstico: Sobrepeso')
elif IMC >= 30 and IMC <40:
  print('Diagnóstico: Obeso')
elif IMC >= 40:
  print('Diagnóstico: Obesidade Mórbida')