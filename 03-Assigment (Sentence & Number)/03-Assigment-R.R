#Amine Ceyda TANDOGAN 2018555061 CEN429
library(tidyverse)
library(stringr)

set.seed(2018555061)

#Question 1.b:Function that finds prime factor
primeFactors<-function(number,div=2,factor_list=NULL){
  if(number<div) factor_list    #this is end 
  else if(number%%div==0) primeFactors(number/div,div,c(factor_list,div))
  else  primeFactors(number,div+1,factor_list)
}
#Question 1.a: Function that finds prime and non-prime numbers
question1<-function(numbers){
  prime<-vector("list",length(numbers)) 
  non_prime<-vector("list",length(numbers))
  
  for(i in seq_along(numbers)){
    div<-2
    flag<-0
    prime_factors<-NULL
    stopifnot(numbers[[i]]>0)         #to check if the incoming vector is positive or not
    if(numbers[[i]]>=2){              #If the number is less than 2, it will automatically be non-prime.
      while(div<numbers[[i]]){
        if(numbers[[i]]%%div==0){
          flag<-1
          break
        }
        div<-div+1
      }
      if(flag){
        prime_factors<-primeFactors(numbers[[i]])
        non_prime[[i]]<-list(numbers[[i]],f= prime_factors)
      }
      else{
        prime[[i]]<-numbers[[i]]
      }
    }else{
      
      non_prime[[i]]<-numbers[[i]]
    }
    
  }
  
  print("Prime Numbers:")
  print(unlist(prime))
  print("Non-Prime Numbers with their prime factors:")
  print(unlist(non_prime))
}


#Question 2 : A function that takes 6 sentences randomly from the Sentences data and finds the total number of words and sorts the words according to the letter number.
question2<-function(){
  str1ng<-function()sample(stringr::sentences,size=6) 
  
  str<-paste(str1ng(), collapse=" ")
  str<-str_split(str, boundary("word"))[[1]] # to split these sentences into words 
  
  vector_word<-unlist(str)
  print("Number of total word in paragraf :")
  print(length(vector_word))
  print("Ordered pragraf:")
  ordered_str<-vector_word[order(nchar(vector_word))]
  paste(ordered_str,collapse=" ")
  
}

##main##
numbers<-c(89,107, 597, 931, 1083)
question1(numbers)

question2()




