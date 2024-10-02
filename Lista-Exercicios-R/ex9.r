set.seed(10)
vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)

categorias <- ifelse(vetorNumerico %% 2 == 0, "Par", "Ímpar")

dados <- data.frame(Numeros = vetorNumerico, Categoria = categorias)

print(dados)