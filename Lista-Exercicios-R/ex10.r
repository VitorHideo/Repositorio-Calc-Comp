set.seed(50)

vendas <- data.frame(
  Qtd = sample(x = 28:52, size = 30, replace = TRUE),
  DiaMes = seq(from = as.Date("2021-09-01"), to = as.Date("2021-09-30"), by = "day"),
  DiaSemana = weekdays(seq(from = as.Date("2021-09-01"), to = as.Date("2021-09-30"), by = "day"))
)

plot(vendas$DiaMes, vendas$Qtd, main = "Frequência da Qtd de vendas",xlab = "Dia", ylab =
       "Qtd vendas")


varmes <- max(vendas$Qtd) - min(vendas$Qtd)
print(varmes)

medven<- round(mean(vendas$Qtd))
print(medven)

hist(vendas$Qtd, main = "Frequência da Qtd de vendas", xlab = "Qtd vendas", ylab = "Frequência", col = "green")
