

pedazos <- function(n){
  if (n == 0){
    pedazos = 1
    } else {
      pedazos(n-1) + n
  
    }
}

pedazos(9)

n = 20
cortes = c(1:n)
pedacitos <- sapply(cortes,pedazos)



#Guess
n <- 100
x <- rep(NA, n)
x[1] <- 2
for(i in 2:n){ x[i] <- x[i-1] + i}
z <- 1:n
plot(z, x, xlab = "cortes", ylab = "pedazos", type = "b", lwd = 2, col = 4)

#OLS
int <- rep(1,n)
Z <- cbind(int, z, z^2)
beta <- matrix(solve(t(Z)%*%Z)%*%t(Z)%*%x, ncol = 1)
x.hat <- Z%*%beta
x.error <- x - x.hat
