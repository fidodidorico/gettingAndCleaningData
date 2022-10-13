## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

#read var names from feature.txt file
namesColumn<-read.table("features.txt", header = FALSE, sep = "")
vectorNamesColums<-namesColumn[,2]

#assign as column names of dataset
#mergeData : dataset build in the bindTrainingAndTestData.R script
colnames(mergeData)<-as.vector(vectorNamesColums)

#select the vars which name include 'mean' or 'std' string
stdAndMeanVariables<-grep("mean|std",vectorNamesColums,value = TRUE)

#new data frame with only the measurements for mean and std (10299 obs. of 79 vars)
dataFrameFilter<-select(mergeData,as.vector(stdAndMeanVariables))
