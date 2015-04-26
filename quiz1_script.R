Qdata=read.csv("C:/Users/anna/Learning_other/DataScience/learrning_R_n_stat/rprog_data_quiz1_data/hw1_data.csv")
attributes(Qdata)

colnames(Qdata)
Qdata[1:2,]
Qdata[152:153,]
Qdata$Ozone[47]
Qdata[47,1]
sum(is.na(Qdata))
nas <- as.numeric(is.na(Qdata$Ozone))
sum(nas)
mean(Qdata$Ozone)
mean(Qdata$Ozone, na.rm=TRUE)

subsQd <- subset(Qdata, !(Ozone %in% 1:31))
subsQd2 <- subset(subsQd, (Temp>90))
mean(subsQd2$Solar.R)
subsQdna <- subset(Qdata, !(is.na(Ozone)))
subsQdna1 <- subset(subsQdna, !(Ozone %in% 1:31))
subsQdna2 <- subset(subsQdna1, (Temp>90))
subsQdna2
mean(subsQdna2$Solar.R)

subsQd6 <- subset(Qdata, (Month==6))
subsQd6
mean(subsQd6$Temp)
subsQd5 <- subset(Qdata, (Month==5))
summary(subsQd5$Ozone)
