library(rvest)
#read html page
art <- html("http://news.bbc.co.uk/2/hi/health/2284783.stm")
#see text of html page
art_txt <- html_text(art)
#create token
library(tokenizers)
options(max.print = 20) #reduce the max print to 20
#charecter token
tokenize_characters(art_txt)
#word token
t_w <-  tokenize_words(art_txt)
#n gram tokenization, token of minimum 3 word and maximum 5 word
tokenize_ngrams(art_txt, n = 5, n_min = 3)

str <- "I Love NLP"
#lower string
tolower(str)
#upper string
toupper(str)

#we will use sringr package for following part
library(stringr)
#remove spl charecter, replace with space. we will use sringr package
spl <- "My love@you#rocking%disco.hey!rama"
str_replace_all(spl, "[[:punct:]]", " ")

#split
splt <- "baba@you@are@beautiful"
str_split(splt,"@")
#find specific string position
str_detect(splt,'@')
str_locate(splt,"@")
str_locate_all(splt,"@")

#call dictionary of words
words[1]

#return values ends with "ed"
for (i in 1:length(words)){
  ifelse(str_detect(words[i],'ed$')==TRUE,print(words[i]),"")
}
#alternet code
sapply(words, function(x){ifelse(str_detect(x,'ed$')==TRUE,print(x),"")})

#return values starts with "ab"
for (i in 1:length(words)){
  ifelse(str_detect(words[i],'^ab')==TRUE,print(words[i]),"")
}
#alternet code
sapply(words, function(x){ifelse(str_detect(x,'^ab')==TRUE,print(x),"")})

#return values  with 3dr word "c"
for (i in 1:length(words)){
  ifelse(str_detect(words[i],'^..c')==TRUE,print(words[i]),"")
}
#alternet code
sapply(words, function(x){ifelse(str_detect(x,'^..c')==TRUE,print(x),"")})

#return comples string
for (i in 1:length(words)){
  ifelse(str_detect(words[i],'^..c...t$')==TRUE,print(words[i]),"")
}
#alternet code
sapply(words, function(x){ifelse(str_detect(x,'^..c...t$')==TRUE,print(x),"")})
