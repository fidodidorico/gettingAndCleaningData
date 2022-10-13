##step for tidy dataframe
# 1. remove the parenthesis present on some names ("fBodyBodyGyroMag-meanFreq()")
# 2. some var names have the -body- word repited ("fBodyBodyGyroMag-std()")
# 3. remove (-) from the names
# 4. to lower

withoutParenthesis<-gsub("()","", names(df_summarizeMean), fixed = TRUE)
withoutBodyDuplicated<-gsub("BodyBody","Body", withoutParenthesis, fixed = TRUE)
withoutScore<-gsub("-","",withoutBodyDuplicated, fixed = TRUE)%>%tolower()
colnames(df_summarizeMean)<-withoutScore
