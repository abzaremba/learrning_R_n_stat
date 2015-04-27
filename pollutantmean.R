pollutantmean <- function(directory, pollutant, id = 1:332) {  
  p0 = getwd()
  p1 = paste(p0,"/",directory,"/", sep = "")
  big_table = NULL
  for (i in id){
    number = i
    while(nchar(number)<3){number = paste("0",number, sep = "")}
    pathname = paste(p1,number,".csv", sep = "")
    table = read.table(pathname, header = TRUE, sep=",")
    bad<-is.na(table[pollutant])
    temp_table = table[pollutant][!bad]
    big_table  = c(big_table, temp_table)
  }
  mean(big_table)
}