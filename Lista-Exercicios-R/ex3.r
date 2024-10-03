# Exercicio 3
library(ggplot2)

vendedores <- c("Ana", "Flavia", "Pedro", "Mariana", "Ana", "Flavia", "Pedro", "Mariana")
dias <- c(1, 1, 1, 1, 2, 2, 2, 2)
produtos <- c("saia", "casaco", "vestido", "meia", "calçaFlaire", "calçaSkinny", "calçaSkinny", "manta")
quantidades <- c(1, 2, 1, 5, 3, 0, 3, 4)

precos <- data.frame(
  Produto = c("calça", "vestido", "blusa", "manta", "saia", "casaco", "meia"),
  Preco_Unitario = c(240, 320, 98, 69, 145, 289, 39))

preco_produto <- c(145, 289, 320, 39, 240, 240, 240, 69)

faturamento <- quantidades * preco_produto

df <- data.frame(Vendedor = vendedores, PAroduto = produtos, Quantidade = quantidades, Faturamento = faturamento)

faturamento_vendedor <- aggregate(Faturamento ~ Vendedor, data = df, sum)

ggplot(faturamento_vendedor, aes(x = Vendedor, y = Faturamento, fill = Vendedor)) +
  geom_bar(stat = "identity") +
  labs(title = "Faturamento por Vendedor", x = "Vendedor", y = "Faturamento (R$)") +
  theme_minimal()

