set.seed(123) 

dados_temp <- DadosFreqTemp$Core1.Temp

amostra1 <- sample(dados_temp, 200)
amostra2 <- sample(dados_temp, 200)
amostra3 <- sample(dados_temp, 200)
amostra4 <- sample(dados_temp, 200)

# Amostra 1
dados <- amostra1
variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2
variancia1 <- mean(variacaoDados)
desvio1 <- sqrt(variancia1)

# Amostra 2
dados <- amostra2
variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2
variancia2 <- mean(variacaoDados)
desvio2 <- sqrt(variancia2)

# Amostra 3
dados <- amostra3
variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2
variancia3 <- mean(variacaoDados)
desvio3 <- sqrt(variancia3)

# Amostra 4
dados <- amostra4
variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2
variancia4 <- mean(variacaoDados)
desvio4 <- sqrt(variancia4)


resultados <- data.frame(
  Amostra = c("Amostra 1", "Amostra 2", "Amostra 3", "Amostra 4"),
  Variancia = c(variancia1, variancia2, variancia3, variancia4),
  Desvio = c(desvio1, desvio2, desvio3, desvio4)
)

print(resultados)