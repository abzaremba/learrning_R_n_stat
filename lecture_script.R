x<-1
print(x)
x
msg<-"hello"
print(msg)

x<-1:20
x
x[1:5]

v<-vector()
help(append)
v=append(v,1)
v
attributes(v) # NULL now

append(1:5, 0:1, after = 3)

1  # is numeric
1L # is an integer!

x <- c(0.5,0.6)
x <- c(T,F) # T,F shortcuts for logic!
x <- c("a", "b", "c")
x <- 9:19
x <- c(1+0i, 2+4i)

# using the vector() funciton
x <- vector("numeric", length = 10)
# note! the default value is zero for numeric

y <- c(1.7, "a")
typeof(y)
y <- c(TRUE, 2) # note! TRUE will be seen as 1
typeof(y)

x<- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

x = c("a", "b", "c")
as.numeric(x) #no way you can change leters to numeric!

x <- list(1, "a", TRUE, 1+4i)
x # element of a list will have double brackets

m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
# matrix constructed columnwise
m <- matrix(1:6, nrow = 2, ncol = 3)
m

m <- 1:10
m
dim(m) <- c(2,5)
m
# so you can get the matrix by defining the dimension

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)
