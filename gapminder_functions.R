#Title: Gapminder test
#Author: Paula A. Martinez
#Date: 10 dec, 2015

#create a function that reads a file
#it is call readmyfile and needs a file name as input
readmyfile <- function(filename){
  #this is the body of the function
  #Generic way to read a data table
  #assign to df and reads the filename
  df <- read.table(file=filename, header = TRUE, sep=",")
  return(df)
}

#create a function that explores a data frame
#it is call exploredf and needs a dataframe as input
exploredf <- function(mydata){
  #this is the body of the function
  #which explores my data frame
  #str(mydata)
  #add a heading
  #print(class(mydata))
  print(names(mydata))
  #t(summary(mydata))
  #print(dim(mydata))
  print(paste("This is the number of columns:",ncol(mydata), sep=" "))
  print(paste("This is the number of rows:",nrow(mydata), sep=" "))
}

#call my function readmyfile
gapminder <- readmyfile("data/gapminder-FiveYearData.csv")
exploredf(gapminder)
exploredf(gapminder[1:3,1:2])
Australia <- subset(gapminder,country=="Australia")
exploredf(Australia)

