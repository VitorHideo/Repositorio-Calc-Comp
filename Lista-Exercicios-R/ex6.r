set.seed(10)
vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)

frequencia <- table(vetorNumerico)

print(frequencia)

