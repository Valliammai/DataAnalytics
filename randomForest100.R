ranFor100.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\CA121314_datasets\\RanForest100.csv", header = T)

attach(ranFor100.csv)

str(ranFor100.csv)

names(ranFor100.csv)

ranFor100.csv[, 'LCA_CASE_EMPLOYER_NAME'] <- as.numeric(ranFor100.csv[, 'LCA_CASE_EMPLOYER_NAME'])

ranFor100.csv[, 'LCA_CASE_EMPLOYER_CITY'] <- as.numeric(ranFor100.csv[, 'LCA_CASE_EMPLOYER_CITY'])

ranFor100.csv[, 'LCA_CASE_EMPLOYER_POSTAL_CODE'] <- as.numeric(ranFor100.csv[, 'LCA_CASE_EMPLOYER_POSTAL_CODE'])

ranFor100.csv[, 'LCA_CASE_JOB_TITLE'] <- as.numeric(ranFor100.csv[, 'LCA_CASE_JOB_TITLE'])

ranFor100.csv[, 'CODE'] <- as.numeric(ranFor100.csv[, 'CODE'])


install.packages("caret")

install.packages("ggplot2")

install.packages("randomForest")

install.packages("e1071")

library(caret)

library(ggplot2)

library(randomForest)

library(e1071)

ranForModel <- train(ranFor100.csv$SALARY.RANGE ~ ., data = ranFor100.csv, method = 'rf', prox = TRUE)

ranForModel

getTree(ranForModel$finalModel, k = 2)

p <- predict(ranForModel, testing)
