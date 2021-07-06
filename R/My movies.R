                                #My Movies

mm <- read.csv(file.choose())

mm1 <- mm[ , 1:5]

summary(mm1)

library(arules)

# making rules using apriori algorithm 
# taking support = 0.01 & confidence = 0.75

# Building rules using apriori algorithm.

arule <- apriori(mm1 , parameter = list(support=0.2 , confidence = .95 , minlen = 3))

arule

#to view 1st some rules sorting them by their lift value.

inspect(sort(arule , by = "lift"))



#to visualize the data we have to call the package alulesviz.

library(arulesViz)

plot(arule)      #plot the scatter plot of the data.

windows()
plot(arule , method = "grouped") #plot the grouped matrix
plot(arule ,  method = "graph") #shows the network analysis .
