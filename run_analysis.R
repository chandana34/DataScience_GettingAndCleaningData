run_analysis <- function(){
  
#Step 1: import data(features, activities, testdata, traindata) into R
features<-read.table("./features.txt",header = FALSE,col.names = c("SERNO","FEATURES"))
activities<-read.table("./activity_labels.txt",header = FALSE,col.names = c("SERNO","ACTIVITY"))
xtest<-read.table("./test/X_test.txt",col.names = features$FEATURES,header = FALSE)
xtrain<-read.table("./train/X_train.txt",col.names = features$FEATURES,header = FALSE)

xtest<-cbind(read.table("./test/subject_test.txt",header = FALSE,col.names = "SUBJECT"),read.table("./test/y_test.txt",header = FALSE,col.names = "ACTIVITY"),xtest)
xtrain<-cbind(read.table("./train/subject_train.txt",header = FALSE,col.names = "SUBJECT"),read.table("./train/y_train.txt",header = FALSE,col.names = "ACTIVITY"),xtrain)

#Step 2: bind train and test data
x<-rbind(xtrain,xtest)

#Step 3: use pattern matching, break down the data set to columns of only mean and std of features
x<-x[,c(1,2,grep(paste(c("mean\\.\\.","std\\.\\."), collapse = "|"),colnames(x)))]

#Step 4: naming all the activities
x$ACTIVITY<-activities$ACTIVITY[x$ACTIVITY]

library(plyr)
library(dplyr)

#Step 5: group data based on subject and activity, find mean of each feature
meandata<-ddply(x, .(SUBJECT, ACTIVITY), function(x) colMeans(x[, 3:68]))

#Step 6: write the tidy data to a file
write.table(meandata, "MeanData.txt", row.name=FALSE)

}