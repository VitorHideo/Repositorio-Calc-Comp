a=12
b=2
c=3
z=c(a,b,c)
z

rep(2)
rep(200)
rep(100,10)

seq(100,10)
seq(20,3)
seq(1,20)

xvector <- c(1,2,3,4,5)
xvector

yvector <- ('cpu,memoria,disco')
yvector

restricvector <- c(1,2,'cpu','memoria')
restricvector

xvector <- c(1,2,3,4,5)
yvector <- c(10,20,30,40,50)
print(c(xvector,yvector))

ls()

mean(xvector)

summary(xvector)

xvector <- c(1,2,3,4,5,NA)
mean(xvector)

mean(xvector,na.rm=TRUE)

x <- (1:5)
x

cat("Números de 1 a 5:",x)

m <- matrix(2:30,nrow = 5,ncol = 6)

m <- matrix(1:30,nrow = 5,ncol = 6)
m

numberlines <- nrow(m)
numbercol <- ncol(m)
matrixt <- length(m)

cat(paste('\n',numberlines,'\n',numbercol,'\n',matrixt))

print(dim(m))

array1 <- array(1:20,dim=c(4,4,4))
print(array1)