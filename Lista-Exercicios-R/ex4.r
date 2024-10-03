set.seed(36)
dados <- data.frame(Nome = c("Ana", "Maria", "Henrique", "Paula", "Felipe",
                             "Carlos", "Cristiane"), 
                    Altura = sample(x = (150:190), size = 7, replace = TRUE)/100,
                    Peso = sample(x = 48:100, size = 7, replace = TRUE))

dados$IMC <- dados$Peso / (dados$Altura^2)

dados$Avaliacao <- ifelse(dados$IMC < 18.5, "Abaixo da normal",
ifelse(dados$IMC < 25, "Normal",
ifelse(dados$IMC < 30, "Sobrepeso",
ifelse(dados$IMC < 35, "Obesidade grau I",
ifelse(dados$IMC < 40, "Obesidade grau II", "Obesidade grau III")))))

dados$Recomendacao <- ifelse(dados$Avaliacao %in% c("Normal", "Abaixo da normal"), 
ifelse(dados$Avaliacao == "Abaixo da normal", "Suplementação", "Sem recomendação"),
"Dieta")

print(dados)