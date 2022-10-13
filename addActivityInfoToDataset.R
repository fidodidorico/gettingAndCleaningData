## 3. Uses descriptive activity names to name the activities in the data set

#merge YTestData and YTrainData
ytestData<-read.table("y_test.txt", header = FALSE)
ytrainData<-read.table("y_train.txt", header = FALSE)
mergeDataCodeActivity<-rbind(ytestData,ytrainData) #(10299 obs. of 561 var)

#add mergeDataActivity dataFrame to the 'dataFrameFilter'
dfWithActivityInformation<-cbind(dataFrameFilter, mergeDataCodeActivity)

activityDescriptionFrame<-read.table("activity_labels.txt", header = FALSE, sep = "")
df_withActivityLabels<-merge(dfWithActivityInformation,activityDescriptionFrame,by.x = "V1", by.y = "V1", all = FALSE)
