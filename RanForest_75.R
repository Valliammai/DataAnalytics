randomForest_75.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\CA121314_datasets\\RanForestCAYearlyRmNA121314_75%.csv", header = T)

randomForest_75.csv[, 'LCA_CASE_WAGE_RATE_FROM'] <- as.factor(randomForest_75.csv[, 'LCA_CASE_WAGE_RATE_FROM'])


attach(randomForest_75.csv)

str(randomForest_75.csv)

names(randomForest_75.csv)

install.packages("caret")

install.packages("ggplot2")

install.packages("randomForest")

install.packages("e1071")

library(caret)

library(ggplot2)

library(randomForest)

library(e1071)

ranForModel <- train(randomForest_75.csv$SALARY.RANGE ~ ., data = randomForest_75.csv, method = 'rf', prox = TRUE)

ranForModel

getTree(ranForModel$finalModel, k = 2)
