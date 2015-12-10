#Title: R basics
#Author: Paula A. Martinez
#Date: Dec 9th, 2015
#Description: My first R script with simple functions

#Where am I?
#getwd()

#Change directory?
#setwd()

#cite R
citation()

#variable
x <- 1:10
xpow <- x^2

#list objects
ls()

#remove objects
rm(xpow)

pop <- 10000000

# How to find help
help("mean")
?mean
example("mean")
apropos("mean")
args("mean")
#when using  packages
help.search("median")
help.search("clust")

#Data types
#What data type?
typeof()
is.numeric(x)
is.logical(x)
is.complex(x)
is.character(x)

#Data structures
#1. Vector
series <- 1:10
typeof(series)

series1 <- seq(99)
series1

design <- c("control","sample1","sample2","sample3")
design
typeof(design)
class(design)
is.character(design)
is.numeric(design)
is.vector(design)
length(design)
ls()
length(series1)
head(series1)
tail(series1)
tail(series1, n=2)
names(series1)
str(series1)

#data structure factor
#factors are integer references to one of the factor levels
sampledesign <- factor(c("no","yes","yes","yes"))
sampledesign
?str
str(sampledesign)
levels(sampledesign)
unique(sampledesign)

#data structure matrix
m <- matrix(1:16, nrow=4)
#by default R fill a matrix by columns
m <- matrix(1:100, nrow=10, byrow = TRUE)
m
?colnames
colnames(m) <- LETTERS[10:13]
m
colnames(m) <- c("col1","col2","col3","col4")
m
typeof(m)

#data structure List
#it can contain different data types
ls()

my.list <- list(design, x, m)
str(my.list)

#data structure data.frame
?data.frame
#each of the columns could be a list

L1 <- LETTERS[1:3]
L1
num <- 1:30
height <- rnorm(30, mean=1.70, sd=0.15)
df <- data.frame(id=num, height=height, cat=L1)
typeof(df)
is.data.frame(df)
str(df)
summary(df)
#ploting
barplot(df$height)
barplot(df$height, col=df$cat)
#order categories
dfordered <- df[order(df$cat),]
?order
df$cat
order(df$cat)
head(dfordered)
barplot(dfordered$height, col=dfordered$cat)

#adding a new column
df <- cbind(df, grade=10:12)
summary(df)
head(df)

#add row
df <- rbind(df,list(31,1.65,"A",10))
str(df)

#show folders and files with dir()
dir()
#list objects in the R environment
ls()
#remove objects from the environment
rm(list =ls())
#list files again
ls()
