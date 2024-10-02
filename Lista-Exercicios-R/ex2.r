set.seed(20)
notas <- data.frame(Matricula = sample(x = 011475:012990, size = 30, replace = FALSE),
                    ac1 = sample(x = 1:10, size = 30, replace = TRUE),
                    ac2 = sample(x = 1:10, size = 30, replace = TRUE),
                    prova_final = sample(x = 1:10, size = 30, replace = TRUE))

notas$media <- (notas$ac1 * 0.4) + (notas$ac2 * 0.4) + (notas$prova_final * 0.2)

notas$aprovado <- ifelse(notas$media >= 7, "Sim", "Não")

aprovados <- notas[notas$aprovado == "Sim", ]
reprovados <- notas[notas$aprovado == "Não", ]

contagem <- data.frame(Aprovado = c("Sim", "Não"), Contagem = c(nrow(aprovados), nrow(reprovados)))

library(ggplot2)

ggplot(contagem, aes(x = "", y = Contagem, fill = Aprovado)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y") +
  labs(x = "", y = "", title = "Alunos Aprovados e Reprovados") +
  theme_void() +
  theme(legend.position = "none") +
  geom_text(aes(label = paste0(Contagem, "\n(", round(Contagem/sum(Contagem)*100, 2), "%)")), position = position_stack(vjust = 0.5))