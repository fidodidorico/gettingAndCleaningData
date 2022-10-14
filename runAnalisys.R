#put all the files in the same path and then change the working directory to that phat

#all the files are:
# y_train.txt, y_test.txt, X_train.txt, X_test.txt, subject_train.txt, subject_test.txt,
# features.txt,  activity_labels.txt

#setup the working directory where the files are saved

## 1. Merges the training and the test sets to create one data set.

##read the file to merge
#read X_test data (2947 obs. of 561 var)
#read X_train data (7352 obs. of 561 var)

originalwd<-getwd()
setwd("C:/Users/martinelias.rico/dataScient/JHCourses/ReadingAndCleaningCourse/files")

XtestData<-read.table("X_test.txt", header = FALSE, sep = "")
XtrainData<-read.table("X_train.txt", header=FALSE, sep="")
XData<-rbind(XtestData,XtrainData)

#read var names from feature.txt file and assign as column names of dataset
namesColumn<-read.table("features.txt", header = FALSE, sep = "")
vectorNamesColums<-namesColumn[,2]
colnames(XData)<-as.vector(vectorNamesColums)

ytestData<-read.table("y_test.txt", header = FALSE)
ytrainData<-read.table("y_train.txt", header = FALSE)
codeActivity<-rbind(ytestData,ytrainData)
colnames(codeActivity)<-c("codeactivity")

subjectTestdata<-read.table("subject_test.txt", header = FALSE, sep = "")
subjectTrainingData<-read.table("subject_train.txt", header = FALSE, sep = "")
codeSubject<-rbind(subjectTestdata, subjectTrainingData)
colnames(codeSubject)<-c("codesubject")

dataSetCompleted<-cbind(XData,codeActivity,codeSubject)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

#select the vars which name include 'mean' or 'std' string and select them to create a new dataset
#new data frame with only the measurements for mean and std (10299 obs. of 79 vars)
library(dplyr)
stdAndMeanVariables<-grep("mean|std|codesubject|codeactivity",names(dataSetCompleted),value = TRUE)
XDataSubSet<-select(dataSetCompleted,as.vector(stdAndMeanVariables))

## 3. Uses descriptive activity names to name the activities in the data set

activityDescriptionFrame<-read.table("activity_labels.txt", header = FALSE, sep = "")
XDataSubSet_withActivityLabels<-merge(XDataSubSet,activityDescriptionFrame,by.x = "codeactivity", by.y = "V1", all = FALSE)

## 4. Appropriately labels the data set with descriptive variable names.

XDataSubSet_varRenamed<-rename(XDataSubSet_withActivityLabels, activityLabel=V2)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

df_summarizeMean<-group_by(XDataSubSet_varRenamed,activityLabel,codesubject)%>% 
  summarize_all(mean)

#script to tidy the dataset

columnames <-gsub("()","", names(df_summarizeMean), fixed = TRUE)
columnames <-gsub("BodyBody","Body", columnames, fixed = TRUE)
columnames <-gsub("-","",columnames, fixed = TRUE)
columnames <- gsub("^f", "frequencyDomain", columnames)
columnames <- gsub("^t", "timeDomain", columnames)
columnames <- gsub("Mag", "Magnitude", columnames)
columnames <- gsub("Freq", "Frequency", columnames)
columnames <- gsub("mean", "Mean", columnames)
columnames <- gsub("Acc", "Accelerometer", columnames)
columnames <- gsub("Gyro", "Gyroscope", columnames)
columnames <- gsub("std", "StandardDeviation", columnames)

colnames(df_summarizeMean)<-columnames




