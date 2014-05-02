library(glmnet)

trainingData = read.csv("train.csv", header=T)

model = lm(formula=label~., data=trainingData, )

