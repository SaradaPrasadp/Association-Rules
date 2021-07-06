                                      #Transaction detail

td <- read.csv(file.choose())

summary(td)

library(arules)

# making rules using apriori algorithm 
# taking support = 0.006 & confidence = 0.80

# Building rules using apriori algorithm.

arule <- apriori(td , parameter = list(support=0.006 , confidence = 0.80 , minlen = 2))
arule

#to view 1st some rules sorting them by their lift value.

inspect(head(sort(arule , by = "lift")))


#to visualize the data we have to call the package alulesviz.

library(arulesViz)

plot(arule)      #plot the scatter plot of the data.

windows()
plot(arule , method = "grouped") #plot the grouped matrix.
plot(arule ,  method = "graph") #shows the network analysis .
