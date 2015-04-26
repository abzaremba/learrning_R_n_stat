#following the video: https://www.youtube.com/watch?v=jwBgGS_4RQA
x = c(2,7,5)
x
y = seq(from=4, length=3, by=3)
?seq
y
x+y
x/y
x[2]
x[2:3]
x[-2]
x
x[-c(1,2)]
z=matrix(seq(1,12),4,3)
z[,1]
z[,1,drop=FALSE]
ls()

# random numbers, uniform and normal
x = runif(50)
x
y=rnorm(50)
y
plot(x,y)
plot(x,y,xlab="Random Uniform", ylab="Random normal", pch="*", col="blue")
par(mfrow=c(2,1))
plot(x,y)
hist(y)
par(mfrow=c(1,1))

# get the data from http://www-bcf.usc.edu/~gareth/ISL/data.html
Auto=read.csv("C:/Users/anna/PhD/phd/other/learrning_R_n_stat/Auto.csv")
names(Auto)
dim(Auto)
class(Auto)
summary(Auto)

plot(Auto$cylinders,Auto$mpg)
attach(Auto)
search()
plot(cylinders,mpg)
cylinders=as.factor(cylinders)

a <- available.packages()
a
head(rownames(a), 3)

.libPaths()
 
find.package("devtools")
install.packages("devtools")
library(devtools)
find_rtools()
find_rtools(debug=TRUE)
# I actually get TRUE for the find_rtools(), which suggests it's there...
# no idea what's the problem with the below:
install.packages("Rtools","C:/Users/anna/Learning_other/DataScience/R_resources")


install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

install.packages("KernSmooth")
library(KernSmooth)
