#Amine Ceyda TANDOGAN 
library(tidyverse)
library(dplyr)

#Question1
starwarsDF1 <- starwars %>% 
  select(name,starships) %>% 
  filter(starships !="character(0)" )
nlist<-starwarsDF1$name
print("List the names of the characters having at least one starship:")
nlist


#question2
starwarsDF2 <- starwars %>% 
  group_by(eye_color) %>% 
  summarise(frequency_ = n_distinct(name)) %>% 
  arrange(desc(frequency_))
starwarsDF2

#Question3
starwarsDF3<-starwars %>%
  group_by(species) %>%
  summarise(avg = mean(birth_year, na.rm=TRUE)) %>%
  arrange(desc(avg))
starwarsDF3
print("Three oldest species")
starwarsDF3$species[1:3]

#Question4
starwarsDF4 <- starwars %>% 
  add_row(name="Amine Ceyda Tandogan",height=167,mass=49,hair_color="brown",skin_color="white",eye_color="brown",birth_year=198, sex="male",gender="feminine",homeworld="Tatooine ",species="Human") 

l<-length(starwarsDF4$films)

starwarsDF4$films[l]<-c("The Empire Strikes Back")
starwarsDF4$vehicles[l]<-c("Zephyr-G swoop bike")
starwarsDF4$starships[l]<-c("	X-wing")


#Question5
starwarsDF4 <- starwarsDF4  %>% 
  mutate(bmi=(mass)/((height/100)^2)) %>% 
  mutate(bmi_group = ifelse(bmi<18.5, "underweight",(ifelse(bmi>18.4 & bmi<25,"healthy",ifelse(bmi>29.9 & bmi<30,"overweight","obese")))))

bmi_ <-starwarsDF4 %>% 
  select(bmi,bmi_group)
bmi_

#Question6
ggplot(data = starwarsDF4 %>% filter(birth_year<100)) +
  geom_point(mapping = aes(x = bmi_group, y=birth_year)) 

#Question7
ggplot(data = starwarsDF4 ) +
  geom_point(mapping = aes(x = bmi, y = birth_year)) +
  geom_smooth(mapping = aes(x = bmi, y = birth_year))

ggplot(data = starwarsDF4 %>% filter(birth_year<100,bmi<100)) +
  geom_point(mapping = aes(x = bmi, y = birth_year)) +
  geom_smooth(mapping = aes(x = bmi, y = birth_year))




