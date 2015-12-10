#Title: Gapminder test
#Author: Paula A. Martinez
#Date: 10 dec, 2015

#this script will be use to read the gapminder data set

#. 1 How to read a csv file
#?read.csv
#gm <- read.csv(file = "data/gapminder-FiveYearData.csv")

#Generic way to read a data table
gapminder <- read.table(file="data/gapminder-FiveYearData.csv",
                        header = TRUE, sep=",")

#to prove the same data has been read
#identical(gm, gapminder)

#delete objects
#rm(list=ls())

#exploring data.frame
#what data structure is it?
str(gapminder)
class(gapminder)
summary(gapminder)
dim(gapminder)
ncol(gapminder)
nrow(gapminder)

#explorirative plots for the gapminder data set

boxplot(pop~year, data=gapminder)
#adding labels
boxplot(pop~year, data=gapminder, 
        main="Population growth by year", xlab="year", ylab="population")

#histogram
hist(gapminder$lifeExp)

