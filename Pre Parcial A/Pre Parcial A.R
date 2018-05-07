#A
#Torres de Hanoi

rega <- function(x){
  if (x == 1) {
    output = 1
    } else {
      output = rega(x-1)*2+1
    }
  return(output)
}
  
rega(8)

#B
a <- matrix(c(1,0,0,0,1,0,1,0,1), ncol = 3)
b <- matrix(c(0,0,1,0,1,0,1,0,1), ncol = 3)
c <- matrix(c(1,0,1,0,1,0,1,0,0), ncol = 3)
d <- matrix(c(1,0,1,0,0,0,1,0,1), ncol = 3)

#a) a*j = b
det(a)
j <- solve(a)%*%b
image(a%*%j)

#b)
menos <- matrix(c(1,0,1,1,0,1,1,0,1), ncol = 3)
m <- solve(a)%*%menos

#c) a - d
l <- solve(a)%*%d
image(a%*%l)




