Matriz_cores<- array(c(3,2,-1,2,-2,0.5,-1,4,-1), dim=c(3,3))

Matriz_cores

b<-c(750,500,250)
b
solve(Matriz_cores,b)

resultamat<-solve(Matriz_cores,b)

resultamat1<-round(resultamat,1)

resultamat1
c1<- -750.0
c2<-2333.3
c3<-1666.7

Processador1<- 3*c1 +2*c2 -1*c3
Processador1

Processador2<- 2*c1 - 2*c2 + 4*c3
Processador2

Processador3<- -1*c1 + 0.5*c2 - 1*c3
Processador3


graficosl<-(c(Processador1,Processador2,Processador3))
graficosl

barplot(graficosl)

graficosfinal<-(c(graficosl,resultamat1))

barplot(graficosfinal,xlab = "Processadores Cores", ylab = "Frequênca
em MHz",col=c("darkgreen","seagreen3","green3","yellow","red", "red4" ))
