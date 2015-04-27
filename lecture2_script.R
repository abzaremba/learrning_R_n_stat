Qdata=read.csv("C:/Users/Ania/Learning/learrning_R_n_stat/rprog_data_quiz1_data/hw1_data.csv")

summary(Qdata)
attributes(Qdata)

initial <- read.table("C:/Users/Ania/Learning/learrning_R_n_stat/rprog_data_quiz1_data/hw1_data.csv", header = TRUE, nrows=100, sep=",")
classes <- sapply(initial, class)
classes
tabAll <- read.table("C:/Users/Ania/Learning/learrning_R_n_stat/rprog_data_quiz1_data/hw1_data.csv", header = TRUE, sep=",")


x<- c("a", "b", "c", "a")
x[1]
x[2]
x[1:4]

# logical index
x[x>"a"]
u <- x > "a"
u
x[u]

x<- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x["bar"]
x[["bar"]]

x<- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]

name <- "foo"
x[name]
x[[name]]
x$name
x$foo

x<- list(a=list(10,12,14),b = c(3.14,2.81))
x[[c(1,3)]]
#note! youc an't write: x[[1,c]]

x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1,]
x[1,2,drop=FALSE]
x[1,]
x[1, , drop=FALSE]

x<- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

x<-c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]

y<- c("a", "b", NA, "d", NA, "f")
good <-complete.cases(x,y)
good
x[good]
y[good]


# from the previously used data!
airquality[1:6,]
good <- complete.cases(airquality)
airquality[good, ][1:6, ]


x<- 1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y

x<- matrix(1:4, 2,2)
y<-matrix(rep(10,4),2,2)
x*y # elementwise! multiplication
x/y
x%*%y # columnwise! multiplication

if(2>2){z<-2} else {z<-3}
z
for(i in 1:10){
  print(i)
}
x<-c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}
for (i in seq_along(x)){
  print(x[i])
}

for (letter in x) print(letter)

x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count<-0
while (count<10) {
  print(count)
  count <- count+1
}

z<-5
while(z>=3 && z<=10){
  print(z)
  coin <- rbinom(1,1,0.5)
  
  if(coin == 1) { ## random walk
    z <- z+1
  } else {
    z <- z-1
  }
}

x0 <- 1
tol <- 1e-8
repeat{
  x1 <- computeEstimate()
  if(abs(x1-x0) < tol) {
    break
  } else {
    x0 <- x1
  }
}

for (i in 1:100){
  if(i<=20){
    ## skip first 20
    next
  }
  ## do nothing here, hehe
}

formals(columnmean)mydata <- rnorm(100)

mydata <- rnorm(100)
sd(mydata)
mydata
sd(x=mydata, na.rm=FALSE)

args(lm)
lm(data=mydata,y~x, model=FALSE, 1:100) #doesn't work
lm(y~x, mydata,1:100) # doesn't work...
help(lm)

ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
summary(lm.D9)


initial <- read.table("/rprog_data_specdata/specdata/1.csv", header = TRUE,sep=",")


for (i in id){
  number = id[i]
  print(i)
  print(number)
}