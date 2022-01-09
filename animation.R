#install.packages("gganimate")
#install.packages("ggthemes")
#install.packages('gifski')  #for gif output
#install.packages('av') #for video output
library(gganimate)
library(ggplot2)
library(dplyr)
library(ggthemes)
library(plotly)
data<- read.csv("C:/Users/maure/Downloads/data (1).csv")
graph1<- ggplot(data, aes(x= cumulative_count, y = rate_14_day, 
   color = continent, size = population, frame= year_week, ids =ï..country))+
  geom_point(alpha = 0.7, stroke = 0)+
  scale_x_log10()+
  scale_color_brewer(palette = 'Paired')+
  theme_dark()+
  labs(title = 'Covid-19 Prevalence Rate')

graph1
ggplotly(graph1)
