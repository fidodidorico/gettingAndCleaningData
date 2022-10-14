variables 
===========

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

mean(): Mean value
std(): Standard deviation

Transformation
===========
1 - create a new dataset joining test and training data. Include subjectCode and ActivityDescription
2 - select vars that include information about the mean ad standart desviation
3 - assign description of activities to the records
4 - renames vars
5 - summarize grouping by activity and subject
6 - tidy column names

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
