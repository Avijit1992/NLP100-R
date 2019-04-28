#Create string
print("Hello World")

#Store the string in a variable
x<- "Hello World"

#use replicate() function to repet ceratin things multiple times
x2 <- paste(replicate(2, x), collapse = " ")

#concatinate multiple strings(use paste() function)
paste(x,x2)
x3 <- paste(x,"GAP",x2)

#extract string (Left, RIght, Mid (excel type functions))
#We use substr() funtion for that
#we will extract hellow from the "Hellow World" string
substr(x,1,5)
#indexing starts from 1, that is 1 is the first element

#we will create a vector of strings below

vs <- c("dog", "cat", "cow","cow","dog","cat", "dog","dog","cow")

#to see distribution of each element in the vector vs we will call
#table() function
table(vs)

#to see a plot of distribution of each element we will call plot() function
plot(table(vs))
barplot(table(vs))

#changing with place holder (i)
for(i in 1:4){
  print(paste(i,"rocking"))
}

#Reading webpage with rvest library

require(rvest)

url <- "https://en.wikipedia.org/wiki/Medium_(website)"
webpage <- read_html(url)
x <- html_text(webpage)
head(x)