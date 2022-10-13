#put all the files in the same path and then change the working directory to that phat

#all the files are:
# y_train.txt, y_test.txt, X_train.txt, X_test.txt, subject_train.txt, subject_test.txt,
# features.txt,  activity_labels.txt

#setup the working directory where the files are saved
originalwd<-getwd()
setwd("C:/Users/martinelias.rico/dataScient/JHCourses/ReadingAndCleaningCourse")

##read the file to merge
#read X_test data (2947 obs. of 561 var) and X_train data (7352 obs. of 561 var)

XtestData<-read.table("X_test.txt", header = FALSE, sep = "")
XtrainData<-read.table("X_train.txt", header=FALSE, sep="")

## 1. Merges the training and the test sets to create one data set.
#merge the 2 dataset (10299 obs. of 561 var)

mergeData<-rbind(XtestData,XtrainData)
