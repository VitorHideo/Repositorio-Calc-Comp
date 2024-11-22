install.packages("ggplot2")
install.packages("cubature")
install.packages("CCA")
install.packages("vegan")

library(ggplot2)
library(cubature)
library(CCA)
library(vegan)

a<- -1
b<- -2
c<- 1

x1<- (-b -sqrt(b^2 -4*a*c))/(2*a)
x2<- (-b +sqrt(b^2 -4*a*c))/(2*a)
y<- function(x){a*x**2+b*x +c}
data.frame("Root"=c(x1,x2), "Value"=c(y(x1),y(x2)))

abs(x1)
abs(x2)

ggplot2::diamonds

data("diamonds")
names(diamonds)

niceDiamonds <- diamonds[diamonds$cut =="Premium" | diamonds$cut =="Ideal", ]
View(diamonds)

summary((niceDiamonds))

ggplot(niceDiamonds, aes(x=price, fill=cut)) +
  geom_density(alpha = .3, color=NA)

ggplot(niceDiamonds, aes(x=log10(price), fill=cut))+
  geom_density(alpha = .3, color=NA)

modelanova<-aov(price ~ cut, data=diamonds)
modelanova

income<-rlnorm(4000, meanlog = 4, sdlog = 0.7)
summary(income)

hist(income, breaks=500, xlab="income", main="Histograma de Renda")

plot(density(log10(income), adjust=0.5),
     main="Distribuição de Renda (escala log)")

integrand <- function(x) {1/((x+1)*sqrt(x))}
integrate(integrand, lower = 0, upper = Inf)

f <- function(x) {1/sqrt(2*pi)*exp(-x^2/2)}
integrate(f, lower = -1.96, upper = 1.96)

f <- function(x) { 2/3 * (x[1] + x[2] + x[3]) } # "x" is vector
adaptIntegrate(f, lowerLimit = c(0, 0, 0), upperLimit = c(0.5, 0.5,0.5))

rm(list = ls())
bioData <- read.csv("http://msekce.karlin.mff.cuni.cz/~maciak/NMST539/bioData.csv",
                     header = T)
bioData

chemData <- read.csv("http://msekce.karlin.mff.cuni.cz/~maciak/NMST539/chemData.csv",
                     header = T)

chemData

head(bioData)
head(chemData)

ind <- match(chemData[,1], bioData[,1])
data <- data.frame(bioData[ind, ], chemData[, 2:8])
X <- data[,2:9]
Y <- data[,19:25]

correl <- matcor(X, Y )
img.matcor(correl, type = 2)

cc1 <- cancor(X, Y)
cc2 <- cc(X, Y)
cc1$cor
cc2$cor

par(mfrow = c(1,2))

barplot(cc1$cor, main = "Canonical correlations for 'cancor()'", col = "gray")
barplot(cc1$cor, main = "Canonical correlations for 'cancor()'", col = "gray")

cc1$xcoef
cc2$xcoef

plt.cc(cc2, var.label = TRUE, ind.names = data[,1])

cc3 <- cca(X, Y)
plot(cc3, scaling = 1)

data(varespe)
library(vegan)

data(varespec)
View(varespec)
especie.dist<-vegdist(varespec,"euclidean")
clusterUPGMA<-hclust(especie.dist,method="average")
clusterUPGMA

plot(clusterUPGMA)
