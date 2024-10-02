cities <- c('Bahia', 'São paulo', 'Americana')
cities

for (i in cities) {
  print(i)
}

mymat <- matrix(nrow = 20, ncol = 20)
mymat

for (i in 1:dim(mymat)[1]) {
  for (j in 1:dim(mymat)[1]) {
    mymat[i,j] = i*j
  }
}

plot(mymat)

barplot(mymat, main="Matrix Empilhada", horiz = FALSE, col = 'blue')

pilhamaior <- sum(mymat[20,])
pilhamaior

pilhamaior <- sum(mymat[10,])
pilhamaior

hist(mymat, col = c('blue','cyan'))

curve(x+10, from = -10, to = 10, main = "x")

curve(x+5, from = -10, to = 10, main = "x")

i <- 1
while (i <= 6) {
  print(i)
  i = i+1
}

x <- 1
repeat {
  print(x)
  x = x+1
  if (x ==6) {
    break
  }
}

x <- 1:5 
for (val in x) {
  if (val == 3) {
    break
  }
  print(val)
}

x <- 1:5
for (val in x) {
  if (val ==3) {
    next
  }
  print(val)
}
