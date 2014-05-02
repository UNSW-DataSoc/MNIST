libary(FNN)

rawTrainingData = read.csv("train.csv", header=T)
rawTestData= read.csv("test.csv", header=T)

isTrain = sample(c(T,F), size=42000, replace=T,prob=c(0.7, 0.3))

trainData = rawTrainingData[isTrain,]
testData = rawTrainingData[!isTrain,]


#submission 1
knn.pred = knn (trainData[,-1], testData[,-1], trainData[,1], 10)
mean(knn.pred==testData[,1]) # 0.9594776

knn.pred = knn (rawTrainingData[,-1], rawTestData, rawTrainingData[,1], 10)
mean(knn.pred==testData[,1]) # 0.9594776