#Variavel de populacao e amostra
n = 20000
p = 200000
set.seed(1234)

#Criando a idade
idade <- abs(round(rnorm(n, 35, 7),0))
summary(idade)
idade
hist(idade, col = 'red')

#Criando a altura
set.seed(1234)
altura <- abs(round(rnorm(n, 1.50, 0.1), 2))
hist(altura, col = 'yellow')

#Criando o peso
set.seed(1234)
peso <- abs(round(rnorm(n, 55, 4), 2))
hist(peso, col = 'blue')

#Criando a imc
imc <- round(peso/altura^2, 2)
summary(imc)
hist(imc, col = 'purple')

table(idade)
idade
plot(table(idade))

#Criando o salario
salario <- abs(round(rnorm(n, 3000, 400), 2))
summary(salario)
hist(salario, col = 'green')

#Criando a qtdCarros
pop.carros <- rep(c(0,1,2,3), p)
pop.carros
carro <- sample(pop.carros, n)
table(carro)

#Criando a qtdfilhos
pop.filhos <- rep(c(0,1,2),p)
pop.filhos
filho <- sample(pop.filhos, n)
table(filho)


#Criando a escolaridade
pop.escolaridade <- rep(c(0, 1, 2, 3, 4, 5, 6), p)
escolaridade.temp <- sample(pop.escolaridade, n)
escolaridade <- factor(escolaridade.temp,
  levels = c(0, 1, 2, 3, 4, 5, 6),
  labels = c("Analfabeto", "1º Grau", "2º Grau", "3º Grau",
  "Mestrado", "Doutorado", "PósDoc"),
  ordered = TRUE)
  
escolaridade
table(escolaridade)
str(escolaridade)

#Criando é fumante?
set.seed(1234)
fumante.n <- rbinom(n, 1, .40)

fumante <- factor(fumante.n,
  levels = c(0, 1),
  labels = c("não", "sim"),
  ordered = TRUE)

fumante

table(fumante)
mean(fumante.n)

#Criando o genero
pop.sexo <- rep(c(1, 2), p)
sexo.temp <- sample(pop.sexo, n)

sexo <- factor(sexo.temp,
  levels = c(1, 2),
  labels = c("M", "F"),
  ordered = FALSE)

table(sexo)

#Criando a profissao
pop.profissao <- rep(0:2, p)
profissao.temp <- sample(pop.profissao, n)
profissao <- factor(profissao.temp,
  levels = c(0, 1, 2),
  labels = c("Humanas", "Exatas", "Biológicas"),
  ordered = FALSE)

summary(profissao)

#Criando o dataframe

df <- data.frame(id = 1:n,
altura,
peso,
imc,
sexo,
escolaridade,
profissao,
fumante,
fumante.n,
salario,
carro,
filho
)

str(df)
