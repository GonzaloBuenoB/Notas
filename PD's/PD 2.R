#4.1

my_factorial <- function(n){
  #factorial(n)
  if(n >= 0 & is.wholenumber(n)==TRUE){
    if(n==0){
      output=1
    }else{
      output=prod(1:n)
    }
  }else if(n<0){
    stop("no pes kauzita")
    }else{
      stop("mano, ya pues")
  }

  return(output)
}

is.wholenumber = function(x){
  output=(x-round(x)==0)
  return(output)
}

my_binomial <- function(n,k){
  a=my_factorial(n)
  b=my_factorial(k)
  c=my_factorial(n-k)
  output=a/b*c
  return(output)
}


#4.2

running_mean=function(k,x){
  #x>=k
  1/k*sum(x[1:k])
}

#3.1
knee = read.table("knee.txt",header = TRUE)
knee = read.table("knee.txt",header = TRUE,
                  colclasses = c(NA,"character", "factor", "numeric", "factor"))
names(knee)
head(knee)
str(knee)
summary(knee)
