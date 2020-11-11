?mice
??plot.histogram
?merge
?varImp()
?order

plsFit <- train(TARGET_AMT ~., data=training, method="pls", preProc=c("center", "scale"))
summary(plsFit)

plsFit1 <- train(TARGET_AMT~., data=training, method = "pls", 
                 tuneLength=15, metric="RMSE", 
                 trControl=(trainControl(method="repeatedcv", repeats=3, 
                                         classProbs=FALSE)),  
                 preProc=c("center","scale"))
plsFit1

X
x
y

dim(training)
