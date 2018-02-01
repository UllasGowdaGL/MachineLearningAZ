#Importing Data
dataset = read.csv('Data.csv')

# Splitting dataset
library(catTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)