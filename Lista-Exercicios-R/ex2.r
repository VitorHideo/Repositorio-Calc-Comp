set.seed(20)
notas <- data.frame(Matricula = sample(x = 011475:012990, size = 30, replace = FALSE),
                    ac1 = sample(x = 1:10, size = 30, replace = TRUE),
                    ac2 = sample(x = 1:10, size = 30, replace = TRUE),
                    prova_final = sample(x = 1:10, size = 30, replace = TRUE))

notas$media <- (notas$ac1 * 0.4) + (notas$ac2 * 0.4) + (notas$prova_final * 0.2)

notas$aprovado <- ifelse(notas$media >= 7, "Sim", "Não")

contagem <- data.frame(Aprovado = c("Sim", "Não"), Contagem = c(nrow(aprovados), nrow(reprovados)))

aprovados <- notas[notas$aprovado == "Sim", ]
reprovados <- notas[notas$aprovado == "Não", ]

barplot(contagem$Contagem, names.arg = contagem$Aprovado, 
        main = "Contagem de Alunos Aprovados e Reprovados", 
        xlab = "Aprovado/Reprovado", ylab = "Alunos", col = c('blue','red'))
