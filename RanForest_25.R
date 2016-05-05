randomForest_25.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\CA121314_datasets\\RanForestCAYearlyRmNA121314_25%.csv", header = T)

attach(randomForest_25.csv)

str(randomForest_25.csv)

names(randomForest_25.csv)

randomForest_25.csv[, 'LCA_CASE_EMPLOYER_NAME'] <- as.numeric(randomForest_25.csv[, 'LCA_CASE_EMPLOYER_NAME'])

randomForest_25.csv[, 'LCA_CASE_EMPLOYER_CITY'] <- as.numeric(randomForest_25.csv[, 'LCA_CASE_EMPLOYER_CITY'])

randomForest_25.csv[, 'LCA_CASE_EMPLOYER_POSTAL_CODE'] <- as.numeric(randomForest_25.csv[, 'LCA_CASE_EMPLOYER_POSTAL_CODE'])

randomForest_25.csv[, 'LCA_CASE_JOB_TITLE'] <- as.numeric(randomForest_25.csv[, 'LCA_CASE_JOB_TITLE'])

randomForest_25.csv[, 'CODE'] <- as.numeric(randomForest_25.csv[, 'CODE'])


install.packages("caret")

install.packages("ggplot2")

install.packages("randomForest")

install.packages("e1071")

library(caret)

library(ggplot2)

library(randomForest)

library(e1071)

ranForModel <- train(randomForest_25.csv$SALARY_RANGE ~ ., data = randomForest_25.csv, method = 'rf', prox = TRUE)

ranForModel

getTree(ranForModel$finalModel, k = 2)


