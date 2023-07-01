#2018555061 Amine Ceyda TANDOGAN CEN morning
library(tidyverse)
set.seed(2018555061)
ourdata <- read.csv("covid-data-2020.csv")
newdata <-ourdata[sample(nrow(ourdata),1000),]       

# Question 1 --Calculate the five-number summary statistics (minimum-Q1-median-Q3-maximum) 
question1<-newdata %>% 
  group_by(location,month) %>% 
  summarise(min= min(new_cases),Q1 = quantile(new_cases, 0.25,na.rm=T),median = median(new_cases,na.rm=TRUE),Q3=quantile(new_cases, 0.75,na.rm =T),max= max(new_cases) )
question1

#Question 2 --Find the highest daily cases and deaths separately for each country.   
 question2 <- newdata %>% 
  group_by(location) %>% 
  summarise(max_death=max(new_deaths),max_case=max(new_cases))
question2

#Question 3 --Identify the month in which the mean daily cases is the highest for each country.
question3 <- newdata %>% 
  group_by(location,month) %>% 
  summarise(max_case=max(mean(new_cases)))
question3

#Question 4 --Select 3 country and plot the distribution of daily cases by month.
#Use location as clusters (i.e., color=location) to show the difference between countries.
question4 <- newdata %>% 
 filter(location == "Estonia" | location == "	Andorra" |location == "Belarus")
question4
ggplot(data = question4, mapping = aes(x = new_cases, y = month,color = location) ) +
  geom_boxplot()

