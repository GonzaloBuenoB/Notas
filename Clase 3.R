
download.file("https://github.com/franciscorosales-marticorena/ApplStatsR/raw/master/Others/pricedata.csv",destfile = "pricedata.csv")
data=read.table("pricedata.csv",header = TRUE)


x11();plot(data[,2],type="l")
for(i in 1:ncol(data)){
    lines(data[,1],col = i)
}

#image(matrix(rnorm(100),ncol=10))

#source("xxx.R") <- carga un script
#load("xxx.RData") <- carga un workspace
#dir() <- elementos del enviroment

write.csv(data,"data2.csv",row.names = FALSE)

#librería pryr
require(pryr)   #library(pryr)
install.packages("pryr")

object_size(1:10)
object_size(mtcars)
object_size(data)

sseq = function(n){object_size(seq_len(n))}
sizes = sapply(1:50, sseq)        #EN LUGAR DE FOR (SAPPLY) APLICA EL VECTOR 1:50 A SSEQ
plot(1:50, sizes, xlab = "Lenght", ylab = "Size (bytes)", type = "s")
# X, Y, LABEL X, LABEL Y, TIPO

#guess
n<-100
x<-rep(NA,n)
x[1]<-2
for(i in 2:n){x{i}<-x[i-1]+i}
z<-1:n
plot(z,x,xlab="cuts",ylab="slices",type="b")










