set.seed(10)
vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)

numerosPares <- vetorNumerico[vetorNumerico %% 2 == 0]
numerosImpares <- vetorNumerico[vetorNumerico %% 2 != 0]

contagemPares <- length(numerosPares)
contagemImpares <- length(numerosImpares)

cat("Número de pares:", contagemPares, "\n")
cat("Número de ímpares:", contagemImpares, "\n")