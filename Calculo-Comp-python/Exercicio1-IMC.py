#Exercicio 01
peso=float(input('Quanto você pesa em kg? (kg)'))
altura=float(input('Qual sua altura em M? (M)'))

IMC = peso / (altura**2)

print('O seu IMC é de {:.1f}'.format(IMC))
