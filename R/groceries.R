                                 #Groceries

gr <- read.csv(file.choose())

summary(gr)

library(arules)

# making rules using apriori algorithm 
# taking support = 0.006 & confidence = 0.80

# Building rules using apriori algorithm.

arule <- apriori(gr , parameter = list(support=0.008 , confidence = 0.80 , minlen = 2))
arule

#to view 1st some rules sorting them by their lift value.

inspect(head(sort(arule , by = "lift")))


#to visualize the data we have to call the package alulesviz.

library(arulesViz)

plot(arule)      #plot the scatter plot of the data.

windows()
plot(arule , method = "grouped") #plot the data as per rules.
plot(arule ,  method = "graph") #shows the network analysis .
