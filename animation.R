#Maureen Ngetich
#Health Data Visualization in R
#covid 19 prevalence worldwide
#install.packages("ggthemes")
#install.packages('gifski')  #for gif output
#install.packages('av') #for video output
library(ggplot2)
library(dplyr)
library(ggthemes)
library(plotly)
library(readr)
data <- read_csv("data.csv")
show_col_types  = FALSE
graph1<- ggplot(data, aes(x= cumulative_count, y = rate_14_day, 
   color = continent, size = population, frame= year_week))+
  geom_point(alpha = 0.7, stroke = 0)+
  theme_classic()+
  scale_x_log10()+
  scale_y_continuous(limits = c(0, 2500))+
  theme(panel.grid = element_blank())+
  labs(title = 'Covid-19 Prevalence Rate')

graph1
ggplotly(graph1)
