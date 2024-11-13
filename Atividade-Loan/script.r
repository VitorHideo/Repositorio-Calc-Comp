install.packages("devtools")
install.packages("ggplot2")

library("devtools")
library("ggplot2")

devtools::install_github("tidyverse/ggplot2")

Enter one or more numbers, or an empty line to skip
updates:1 library(ggplot2)




dados<-data.frame(tempo=c(96,92,106,100,98,104,110,101,116,106,109,100,112,105,118,108,113,112,
                          127,117),idade = c(20,20,20,20,25,25,25,25,30,30,30,30,35,35,35,35,40,40,40,40))

dados


ggplot(dados, aes(x = idade, y =
                    tempo))+  geom_point()

modelo <-lm(data = dados, formula = tempo ~idade)

modelo$coefficients

summary(modelo)


ggplot(dados, aes(x = idade, y=tempo)) + geom_point()+ geom_smooth(method =lm, se = FALSE)

predict(modelo)


valor_aj<-predict(modelo)
valor_aj


valor_aj<-data.frame(predict(modelo))
valor_aj

dados$id<-(c(1:20))
dados

library(dplyr)

dados<-dados %>%
   select(id,
           tempo,idade) > dados

valor_aj$id<-(c(1:20))
valor_aj

valor_aj<-valor_aj %>%
   select(id,predict.modelo.) 

valor_aj$calculado<-80.5 +0.9*dados$idade
valor_aj

plot(valor_aj)


dados1_model<-merge(dados,valor_aj)
dados1_model


ggplot(dados1_model,aes(x=idade,y=calculado))
  geom_point()+
   geom_smooth(method = lm,se =FALSE)


par(mfrow = c(2,2))
plot(modelo, which=c(1:4),pch=20)


# parte 2


library(tidyverse) # trabalha com vários tipos de estruturas de dados
library(ggthemes) # pacotes de temas e escalas aplicados a financeiro
library(corrplot)# pacote gráfico de matrix de correlação
library(GGally)# combina dados de matrix em interações geométricas
library(DT)# matrizes ou data frame que podem ser representados em HTML
library(caret)# simplificação de modelos preditivos


# Já importei o dataset direto pelo R - manualmente no botão import Dataset
view(loan)

colnames(loan)


loanteste1 = loan %>%
  select(Loan_Status, LoanAmount, Credit_History, Gender, ApplicantIncome, Loan_Am
           ount_Term)

loanteste1

sapply(loanteste1 , function(x) sum(is.na(x)))


loanteste2 = loanteste1 %>%
   filter(!is.na(Loan_Amount_Term),
            !is.na(LoanAmount),
            !is.na(Credit_History))

loanteste2

loan1<-na.omit(loan)
loan1

sapply(loan1 , function(x) sum(is.na(x)))


loanteste2 %>%
  count(Loan_Status) %>%
  ggplot(aes(x = reorder(Loan_Status , desc(n)), y = n , fill = n )) +
  geom_col() +
  coord_flip() +
  labs(x = 'Status Empréstimo', y = 'Count')

ggplot(loan, aes(x = Education, y = ApplicantIncome, fill = Education)) +
   geom_boxplot() +
   theme_gray()+
   labs(y='Renda Requerente', x= 'Graduação')


loanteste3 = loan %>%
   select(Loan_Status, LoanAmount,Credit_History,
           Gender, ApplicantIncome,Loan_Amount_Term, Education)

loanteste3

loansubset1

loansubset1<-na.omit(loanteste3)
loansubset1

summary(loansubset1)

loansubset2<-loansubset1[loansubset1$ApplicantIncome>80000,]
loansubset2

loansubset1$id<-c(1:529)
loansubset1

loansubset2<-loansubset1[loansubset1$ApplicantIncome>80000,]
loansubset2

loanremove<-loansubset1[-352,]
summary(loanremove)

loansubset2<-loansubset1[loansubset1$ApplicantIncome>40000,]
loansubset2

loanremove1<-loansubset1[-352,]
loanremove2<-loanremove1[-285,]
loanremove3<-loanremove2[-144,]
loanremove3

library(Amelia)
missmap(loanremove3,main = "valores ausentes")

glm(loanremove3$Credit_History ~loanremove3$Gender, family = binomial(link = logit))

glm(loanremove3$Credit_History ~loanremove3$Gender + loanremove3$Education, family = binomial(link = logit))

glm(loanremove3$Credit_History ~loanremove3$Gender + loanremove3$Education +
      loanremove3$ApplicantIncome, family = binomial(link = logit))







  
