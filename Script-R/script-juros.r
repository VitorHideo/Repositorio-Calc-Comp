#Atividade de Juros simples e composto 

# JUROS SIMPLES
# Fórmula financeira - juros - J=C*i*t // montante final - M = C + j
#j = juros
#C = capital 
#i = taxa de juros 
#t = tempo da aplicação

juros <- 10.00

capital <- 100.00

tu <- juros/capital
tu

tp <- (juros/capital)*100
tp

#Exemplo de taxa 10%

capital <- 100

juros <- 10

meses <- 3

js <- capital + meses * juros

js

# JUROS COMPOSTO 
# Fórumula - M = c*(1+i%)**n
#M= montante final
#C = capital
#i = taxa de juros
#n = 3 meses de incidência juros e juros sobre juros 

#Exemplo de juros composto
Capital <- 100.00
#i <= 10% = 0.10
i <- 0.10

M = Capital*(1+10)**3
M
