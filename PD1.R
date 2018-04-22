
set.seed(100)

list1=list(x=c(35:6, 6:35),
           y=c(rep(LETTERS[1:5],each=12),"e"),
           mat = matrix(rexp(16, rate = 5),nrow = 4, ncol = 4),
           
           list2=list(t=25,
           d=data.frame(gender = c("male","male","female"),
                        age = c(23,48,37)))
          
            )
list1$mat[c(1,2),c(1,2)]

data = list1$list2$d

data[data$gender=="female", 2]