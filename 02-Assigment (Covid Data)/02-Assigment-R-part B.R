#2018555061 Amine Ceyda TANDOGAN CEN morning

library(tidyverse)

sample_<-sample(stringr::sentences,size=100)    #random sample of 100 sentences from this data
str<-paste(sample_, collapse="")
str<-str_replace_all(str, "[.,]", " ")
list_str<-str_split(str, " ")                   # to split these sentences into words 
vector_word<-unlist(list_str)                   # to take each word as a member of a vector
vector_word<-unique(vector_word)                #to remove duplicated words

newSdata <-vector_word     #new string data
newSdata

#Question 1 --Find words which are starting with "a" and ending with "e".
question1 <- tibble(word = newSdata) %>%
  filter (str_detect(newSdata, "^a")  & str_detect (newSdata, "e$"))
print(question1)

#Question 2 --Calculate the number of words which have more than 3 vowels.
question2<-tibble(length = str_length(newSdata) ) %>% 
  filter(length >3)

question2<-as.list(question2$length)
print("number of words which have more than 3 vowels:")
length(question2)

#Question 3 --List the five longest word in your data
question4 <-newSdata 
question4<-question4[order(nchar(question4),decreasing = T)]
print("5 Longest word in my data:")
question4[1:5]

#Question 4 --Try to find word(s) which contain any of these words: age, any, day, exp, her, pro, the.
question4 <- tibble(word = newSdata) %>%
  filter (str_detect(newSdata, "age")|str_detect (newSdata, "any")|str_detect (newSdata, "day")|str_detect (newSdata, "exp")|str_detect (newSdata,"her")|str_detect (newSdata, "pro")|str_detect (newSdata, "the"))
print(question4)


