data(iris)

names(iris)

install.packages("caret")

install.packages("ggplot2")

install.packages("randomForest")

install.packages("e1071")

library(caret)

library(ggplot2)

library(randomForest)

library(e1071)

inTrain <- createDataPartition(y = iris$Species, p = .7, list = FALSE)

training <- iris[inTrain,]

testing <- iris[ - inTrain,]

modFit <- train(Species ~ ., data = training, method = 'rf', prox = TRUE)

modFit

getTree(modFit$finalModel, k = 2)

iris[105,]


#predicting the Testing set

pred <- predict(modFit, testing)

pred

testing$predRight <- pred == testing$Species

table(pred, testing$Species)

qplot(Petal.Width,Petal.Length,colour=predRight,data=testing,main='Predictions')
