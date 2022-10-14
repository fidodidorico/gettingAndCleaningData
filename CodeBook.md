variables 
===========

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that are available in the dataset are: 
===========

- mean(): Mean value
- std(): Standard deviation

Transformation
===========
 - create a new dataset joining test and training data. Include subjectCode and ActivityDescription
 - select vars that include information about the mean ad standart desviation
 - assign description of activities to the records
 - renames vars
 - summarize grouping by activity and subject
 - tidy column names

The complete list of variables (82) for the dataset is:
===========

"activityLabel"
"codesubject"
"codeactivity"
"timeDomainBodyAccelerometerMeanX"
"timeDomainBodyAccelerometerMeanY"
"timeDomainBodyAccelerometerMeanZ"
"timeDomainBodyAccelerometerStandardDeviationX"
"timeDomainBodyAccelerometerStandardDeviationY"
"timeDomainBodyAccelerometerStandardDeviationZ"
"timeDomainGravityAccelerometerMeanX"
"timeDomainGravityAccelerometerMeanY"
"timeDomainGravityAccelerometerMeanZ"
"timeDomainGravityAccelerometerStandardDeviationX"
"timeDomainGravityAccelerometerStandardDeviationY"
"timeDomainGravityAccelerometerStandardDeviationZ"
"timeDomainBodyAccelerometerJerkMeanX"
"timeDomainBodyAccelerometerJerkMeanY"
"timeDomainBodyAccelerometerJerkMeanZ"
"timeDomainBodyAccelerometerJerkStandardDeviationX"
"timeDomainBodyAccelerometerJerkStandardDeviationY"
"timeDomainBodyAccelerometerJerkStandardDeviationZ"
"timeDomainBodyGyroscopeMeanX"
"timeDomainBodyGyroscopeMeanY"
"timeDomainBodyGyroscopeMeanZ"
"timeDomainBodyGyroscopeStandardDeviationX"
"timeDomainBodyGyroscopeStandardDeviationY"
"timeDomainBodyGyroscopeStandardDeviationZ"
"timeDomainBodyGyroscopeJerkMeanX"
"timeDomainBodyGyroscopeJerkMeanY"
"timeDomainBodyGyroscopeJerkMeanZ"
"timeDomainBodyGyroscopeJerkStandardDeviationX"
"timeDomainBodyGyroscopeJerkStandardDeviationY"
"timeDomainBodyGyroscopeJerkStandardDeviationZ"
"timeDomainBodyAccelerometerMagnitudeMean"
"timeDomainBodyAccelerometerMagnitudeStandardDeviation"
"timeDomainGravityAccelerometerMagnitudeMean"
"timeDomainGravityAccelerometerMagnitudeStandardDeviation"
"timeDomainBodyAccelerometerJerkMagnitudeMean"
"timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
"timeDomainBodyGyroscopeMagnitudeMean"
"timeDomainBodyGyroscopeMagnitudeStandardDeviation"
"timeDomainBodyGyroscopeJerkMagnitudeMean"
"timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"
"frequencyDomainBodyAccelerometerMeanX"
"frequencyDomainBodyAccelerometerMeanY"
"frequencyDomainBodyAccelerometerMeanZ"
"frequencyDomainBodyAccelerometerStandardDeviationX"
"frequencyDomainBodyAccelerometerStandardDeviationY"
"frequencyDomainBodyAccelerometerStandardDeviationZ"
"frequencyDomainBodyAccelerometerMeanFrequencyX"
"frequencyDomainBodyAccelerometerMeanFrequencyY"
"frequencyDomainBodyAccelerometerMeanFrequencyZ"
"frequencyDomainBodyAccelerometerJerkMeanX"
"frequencyDomainBodyAccelerometerJerkMeanY"
"frequencyDomainBodyAccelerometerJerkMeanZ"
"frequencyDomainBodyAccelerometerJerkStandardDeviationX"
"frequencyDomainBodyAccelerometerJerkStandardDeviationY"
"frequencyDomainBodyAccelerometerJerkStandardDeviationZ"
"frequencyDomainBodyAccelerometerJerkMeanFrequencyX"
"frequencyDomainBodyAccelerometerJerkMeanFrequencyY"
"frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"
"frequencyDomainBodyGyroscopeMeanX"
"frequencyDomainBodyGyroscopeMeanY"
"frequencyDomainBodyGyroscopeMeanZ"
"frequencyDomainBodyGyroscopeStandardDeviationX"
"frequencyDomainBodyGyroscopeStandardDeviationY"
"frequencyDomainBodyGyroscopeStandardDeviationZ"
"frequencyDomainBodyGyroscopeMeanFrequencyX"
"frequencyDomainBodyGyroscopeMeanFrequencyY"
"frequencyDomainBodyGyroscopeMeanFrequencyZ"
"frequencyDomainBodyAccelerometerMagnitudeMean"
"frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"
"frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"
"frequencyDomainBodyAccelerometerJerkMagnitudeMean"
"frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
"frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"
"frequencyDomainBodyGyroscopeMagnitudeMean"
"frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"
"frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"
"frequencyDomainBodyGyroscopeJerkMagnitudeMean"
"frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"
"frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"
