#Title: Gapminder test
#Author: Paula A. Martinez
#Date: 10 dec, 2015

#selecting a country
Australia <- subset(gapminder,country=="Australia")
Australia

#subsetting by row number
gapminder[61:72,]

gapminder[1,1]
gapminder[1,]
gapminder[2:10, 2:3]
names(gapminder)

gapminder[3]
#select by index of the column
head(gapminder[3])
#select by name of the column
head(gapminder["pop"])
#select using subset
head(subset(gapminder, select="pop"))
#using the $ to select
head(gapminder$pop)
#what class is this?
class(head(gapminder$pop))

Cuba <- subset(gapminder,country=="Cuba")
Cuba

Kenya <- subset(gapminder,country=="Kenya")
Kenya

Cambodia <- subset(gapminder,country=="Cambodia")
Cambodia

Paraguay <- subset(gapminder,country=="Paraguay")
Paraguay

Haiti <- subset(gapminder,country=="Haiti")
Haiti

#select country and year from observationbs collected on 1957
obs1957 <- gapminder[gapminder$year==1957,]
dim(obs1957)
obs1957 <- gapminder[gapminder$year==1957,c(1,2)]
dim(obs1957)
head(obs1957)
#?cbind

year_select <-subset(gapminder[1:2],year==1957)
year_select

dim(year_select)
head(year_select)

a <- subset(gapminder, year==1957, select = c("country", "year"))
dim(a)
head(a)





