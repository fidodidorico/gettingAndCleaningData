## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#join trainining an test data for subject
subjectTestdata<-read.table("subject_test.txt", header = FALSE, sep = "")
subjectTrainingData<-read.table("subject_train.txt", header = FALSE, sep = "")
mergeDataSubject<-rbind(subjectTestdata, subjectTrainingData)
colnames(mergeDataSubject)<-c("subjectCode")

#add the las info the df_complete dataframe
df_summarizeMean<-cbind(df_withActivityLabelsRenamed, mergeDataSubject)%>% 
  group_by(activityLabel,subjectCode)%>% 
  summarize_all(mean)


setwd(originalwd)