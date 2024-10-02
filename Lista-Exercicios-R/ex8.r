set.seed(10)
vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)

frequencia <- table(vetorNumerico)

categorias <- ifelse(as.numeric(rownames(frequencia)) %% 2 == 0, "Par", "Ímpar")

library(ggplot2)

df <- data.frame(Número = as.numeric(rownames(frequencia)), Frequência = as.numeric(frequencia), Categoria = categorias)

ggplot(df, aes(x = Número, y = Frequência, fill = Categoria)) +
  geom_bar(stat = "identity") +
  labs(x = "Número", y = "Frequência", title = "Números Pares e Ímpares") +
  theme_classic() +
  scale_fill_manual(values = c("Par" = "cyan", "Ímpar" = "red"))
