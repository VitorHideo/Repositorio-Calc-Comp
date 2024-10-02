mean(dataset2$core1)

cpumedia <- mean(dataset2$core1)

cpuformatada <- round((cpumedia / 10**6),1)

cpuformatada

summary(dataset2$temp1)
hist(dataset2$temp1,col = 'red')

hist(dataset2$core1, col = 'blue')

list(dataset2$temp1)

data.frame(dataset2$temp1)

alt <- c(3,4,3,2,5,2,3,1,3,2,6,5,4,8,6,3,5,3,7,8)
luminosidade <- rep(c("muita","pouca"),each=10)
dados <- data.frame(alt,luminosidade)
dados

str(dados)

class(alt)
class(luminosidade)
class(data.frame)

fol<-c(19,21,18,18,16,21,23,21,25,22,9,7,6,7,12,9,12,2,9,4)
dados$fol<-fol
dados

names(dados)
names(dados) <-c("altura", "luz", "folhas")
dados

dados$folhas

head(dados)
tail(dados)

dados[1,]
dados[5:7,]

dados[c(3,9,15),]

dados[,2]
dados[8,3]

dados1 <- data.frame(dados)
dados1$altura <- NULL
dados1

subset(dados, luz =='muita')

dados[dados$altura > 7 & dados$luz =="pouca", ]

subset(dados,altura > 3 & luz == "muita" & folhas > 20)

dados[1,1] <- 4
dados

dados[7,1] <- 20

dados[dados$altura > 3,1]

dados[dados$luz == "pouca",2]

dados[dados$altura > 3,1]<-10
dados


# Comando para entrada de dados 

foi<-scan()

foi

readline()

readline(prompt = "Qual o seu nome? ")
