peso <- c(60,55,70,45,80,35,65,50,75,40,85,30,60,55,70,45,80)
idade <- c(25,40,55,35,60,20,45,30,50,25,65,18,40,35,55,40,60)
altura <-c(175,165,180,160,185,155,170,165,180,160,185,155,175,165,180,160,185)
genero <- rep(c('Masculino', 'Feminino'), length(peso))
genero

df = data.frame(peso, genero, idade, altura)

plot(df$peso~df$altura)

modelo1<-lm(df$peso~df$altura)
modelo1
abline(-196.651,1.498)

predict(modelo1)

install.packages("ggplot2")
library("ggplot2")

ggplot(mapping = aes(df$peso, df$altura)) +
   geom_point() +
   geom_smooth(method = "lm")