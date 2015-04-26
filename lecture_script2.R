x <- factor(c("yes", "yes", "no","yes", "no" ))
x
x <- factor(c("yes", "yes", "no","yes", "no" ), levels=c("yes", "no"))



# there is a difference between NA and NAN
x<-c(1,2,NA,10.3)
is.na(x)
is.nan(x)

x<-c(1,2,NA,NaN,10.3)
is.na(x)   # finds both NA and NaN
is.nan(x)  # finds only NaN

Qdata=read.csv("C:/Users/anna/Learning_other/DataScience/learrning_R_n_stat/rprog_data_quiz1_data/hw1_data.csv")
row.names(Qdata)
colnames(Qdata)

# data frames can be read with: read.table(), read.csv or converted with data.matrix()

x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x


# give names to stuff
x <- 1:3
names(x)= c("foo", "bar", "a")
names(x)
x

m <- list(a = 1, b = 2, c = 3)
m

m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m


# reading data with the following functions:
# read.table, read.csv - for tabular
# readLines - for text (lines)
# source
# dget
# load 
# unserialize

# writing data, analogous to those writing functions above
# write.table
# write.Lines
# dump
# dput
# save
# serialize
