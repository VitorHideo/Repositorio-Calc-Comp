produtos <- c("calça", "vestido", "blusa", "manta", "saia", "casaco", "meia")
preco_unitario <- c(240, 320, 98, 69, 145, 289, 39)
custo_unitario <- c(210, 160, 60, 39, 89, 144, 15)

quadro2 <- data.frame(Produto = produtos, Preco_Unitario = preco_unitario, Custo_Unitario = custo_unitario)

quadro2$Custo_Reajustado <- quadro2$Custo_Unitario * 1.05

print(quadro2)