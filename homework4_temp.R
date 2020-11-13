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

cost.ins$JOB[is.na(cost.ins$JOB)]
levels(cost.ins$JOB)
cost.ins$JOB[cost.ins$JOB==""]
cost.ins[cost.ins$INDEX==445,]
cost.ins$JOB[cost.ins$INDEX==112] <- "Professional"
x
y

dim(training)


cost.ins$URBANICITY <- cost.ins$URBANICITY[ifelse(cost.ins$URBANICITY=="Highly Urban/ Urban", "U","R")]

ifelse(cost.ins$URBANICITY=="Highly Urban/ Urban", "U","R")
######################################################################################################
##Visualization
library(DataExplorer)
var.group1 <-data.frame(TARGET_AMT, KIDSDRIV, AGE, YOJ, INCOME, HOME_VAL, TRAVTIME, TIF, 
                        OLDCLAIM, BLUEBOOK, MVR_PTS, CAR_AGE)
plot_histogram(var.group1, ggtheme = theme_light())
ggplot(cost.ins, aes(x=EDUCATION)) + geom_bar()


ggplot(cost.ins, aes(CAR_TYPE)) + geom_bar()

ggplot(cost.ins, aes(JOB)) + geom_bar()


ggplot(cost.ins, aes(x=TARGET_FLAG, y=TARGET_AMT)) + geom_boxplot()


ggplot(cost.ins, aes(x=TARGET_AMT)) + geom_histogram(binwidth = 4000)

ggplot(income.group, aes(x=INCOME, y=BLUEBOOK, color = JOB)) + geom_point() + facet_grid(rows = vars(URBANICITY), cols = vars(EDUCATION))

ggplot(income.group, aes(x=BLUEBOOK, y=HOME_VAL, color = CAR_TYPE)) + geom_point() + facet_grid(rows = vars(JOB), cols = vars(EDUCATION))

ggplot(income.group, aes(x=MVR_PTS, y=log(TARGET_AMT), color = CLM_FREQ)) + geom_point() + facet_grid(cols = vars(REVOKED))



ggplot(income.group, aes(x=log(INCOME), y=log(BLUEBOOK), color = JOB)) + geom_point(position = position_jitter(), alpha=.3) + facet_grid(rows = vars(URBANICITY), cols = vars(EDUCATION))

cost.ins$JOB[cost.ins$JOB==""]

cost.ins$JOB

library(VIM)
aggr_plot <- aggr(ins.missing, col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE, labels=names(ins.missing), cex.axis=.7, gap=3, ylab=c("Histogram of missing data","Pattern"))library(VIM)
aggr_plot <- aggr(ins.missing, col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE, labels=names(ins.missing), cex.axis=.7, gap=3, ylab=c("Histogram of missing data","Pattern"))

trellis.par.set(theme1)
xyplot(resamps, what = "BlandAltman")
##########################################################################################################

logitFit$coefficients

#########################################################################################################

#linear regression
summary(gbmFit1)






