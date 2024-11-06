#Atividade de Regressão Linear - simples e múltipla

#Instalando as bibliotecas necessarias
install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packeges("ggpubr")
install.packages("ggpmisc")
install.packages("tidyverse")

#Utilizando as bibliotecas
library("ggplot2")
library("dplyr")
library("broom")
library("ggpubr")
library("ggpmisc")
library("tidyverse")

#Caso 1 - Regressão linear simple - income.data

#Removendo a coluna de id
income.data$X <- NULL

#sumario do dataframe
summary(income.data)

#histograma da coluna de felicidade
hist(income.data$happiness)

#LM - da felicidade
income.happiness.lm <- lm(happiness ~ income, data = income.data)

#sumario do lm de felicidade
summary(income.happiness.lm)

#platando o gráfico linear de felicidade
plot(income.happiness.lm)

#platando o gráfico linear de felicidade
par(mfrow=c(2,2))
plot(income.happiness.lm)
par(mfrow=c(1,1))

#regressao linear
income.graph <- ggplot(income.data, aes(x= income, y= happiness)) + geom_point()
income.graph

#plotando a linha
income.graph <- income.graph + geom_smooth(method="lm" , col= "black")
income.graph

income.graph <- income.graph + stat_regline_equation(label.x = 3, label.y = 7)
income.graph

income.graph + theme_bw() + labs(title = "Reported happiness as a function of income",
                                 x = "Income (x$10,000)",
                                 y = "Happiness score (0 to 10)")

#Caso 2 - Regressão linear múltipla - heart.data

#sumario do dataframe
summary(heart.data)

#Comando para visulizar o relacionamento entre as variaveis independentes - X
cor(heart.data$biking, heart.data$smoking)

#histograma de doenças do coração
hist(heart.data$heart.disease)

#gráfico linear de ciclismo e doenças do coração
plot(heart.disease ~ biking, data=heart.data)

#grafico linear de fumantes e doenças do coração
plot(heart.disease ~ smoking, data=heart.data)

#Criando modelo para regressao múltipla
heart.disease.lm<-lm(heart.disease ~ biking + smoking, data = heart.data)

#sumario do modelo
summary(heart.disease.lm)

#Graficos de regressao múltipla
par(mfrow=c(2,2))
plot(heart.disease.lm)
par(mfrow=c(1,1))

plotting.data<-expand.grid(
  biking = seq(min(heart.data$biking), max(heart.data$biking), length.out=30),
  smoking=c(min(heart.data$smoking), mean(heart.data$smoking), max(heart.data$smoking)))

plotting.data$predicted.y <- predict.lm(heart.disease.lm, newdata=plotting.data)

plotting.data$smoking <- round(plotting.data$smoking, digits = 2)

plotting.data$smoking <- as.factor(plotting.data$smoking)

heart.plot <- ggplot(heart.data, aes(x=biking, y=heart.disease)) +
  geom_point()

heart.plot

heart.plot <- heart.plot +
  geom_line(data=plotting.data, aes(x=biking, y=predicted.y, color=smoking), size=1.25)

heart.plot

heart.plot <- 
  heart.plot +
  theme_bw() +
  labs(title = "Rates of heart disease (% of population) /n as a function of biking to work and smoking",
       x = "biking to work (% of population)",
       y = "Heart disease (% of population)" ,
       color = "Smoking /n (% of population)")

heart.plot

heart.plot + annotate(geom="text", x=30, y=1.75, label=" = 15 + (-0.2*biking) + (0.178*smoking)")
