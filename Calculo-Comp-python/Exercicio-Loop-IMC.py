#Desafio loop

while True:
    peso = float(input('Quanto você pesa em kg? (kg) '))
    altura = float(input('Qual sua altura em M? (M) '))

    IMC = peso / (altura ** 2)

    print('O seu IMC é de {:.1f}'.format(IMC))

    if IMC < 18.5:
        print('Diagnóstico: Abaixo do peso normal')
    elif 18.5 <= IMC < 25:
        print('Diagnóstico: Peso normal')
    elif 25 <= IMC < 30:
        print('Diagnóstico: Sobrepeso')
    elif 30 <= IMC < 40:
        print('Diagnóstico: Obeso')
    elif IMC >= 40:
        print('Diagnóstico: Obesidade Mórbida')

    pergunta = input("Deseja calcular o IMC novamente? (s/n): ")
    if pergunta != 's':
        print("Ok, obrigado")
        break


# Nesse caso o programa está em loop infinito, a unica maneira que parar a execução é utilizando o CRTL + C no terminal !!!
