## 4. Appropriately labels the data set with descriptive variable names.
#On the data frame "df_withActivityLabels" created on the addACtivityInfoToDataset script
#exist two variables which the name is not descriptive. V1 and V2 correspond to 
# activityCode and activityLabel
df_withActivityLabelsRenamed<-rename(df_withActivityLabels, activityCode=V1, activityLabel=V2)
