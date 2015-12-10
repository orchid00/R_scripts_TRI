#a test file to make 3 plots in one function

#first call ggplot2
library(ggplot2)

#a new function
plot_histograms <- function(df){
  nm <- names(df)
  for(i in 4:6){
    png(paste("../plots/Histogram_",nm[i],".png",sep = ""))
    print(ggplot(df,aes_string(x=nm[i]))+
            geom_histogram(alpha=.5, fill="royalblue"))
    dev.off()
  }
}
plot_histograms(gapminder)
