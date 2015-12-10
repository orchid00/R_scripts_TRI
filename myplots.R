#! /usr/bin/Rscript 
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

#how to install a package in R
install.packages("ggplot2", repos='http://cran.us.r-project.org')
#call a package
library(ggplot2)

#create a function called makemyplot it receives as input
# a filename and a name to save the picture

makemyplot <- function(filename, pictname){
  #Read the data frame
  gapminder <- readmyfile(filename)
  #save my plot in a .png format
  png(paste(pictname,".png",sep = ""))
  #A plot using ggplot and colours
  
  print(ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) + geom_point())
  #close the png canvas
  dev.off()
}

#Call arguments
arg <- commandArgs(TRUE)
#try(makemyplot("data/gapminder-FiveYearData.csv","plots/Outsideplot"))
try(makemyplot(arg[1],arg[2]))








