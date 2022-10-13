==================================================================
Modified version of Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Martin Rico

==================================================================

The modifications to original data set (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
are part of the final project for the Coursera Course : Getting and Cleaning Data
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 84-varibales with the value of the mean for the activity and subject groups


The script to execute the analisys include:
=========================================

- 'README.txt': bring information about the dataset generated and the scripts executed to generate it.

- 'bindTrainingAndTestData.R': 1. Merges the training and the test sets to create one data set.

- 'selectMeanAndStdCollumns.R': 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

- 'addActivityInfoToDataset.R': 3. Uses descriptive activity names to name the activities in the data set.

- 'renameSomeVariables.R': 4. Appropriately labels the data set with descriptive variable names..

- 'getMeanGroupingByActivityAndSubject.R': 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

- 'scriptToTidyFrame.R': script to modify some names columns

Execute the script in the next sequence: 
	1. bindTrainingAndTestData.R
	2. selectMeanAndStdCollumns.R
	3. addActivityInfoToDataset.R
	4. mergeActivityLabelsWithDataSet.R
	5. getMeanGroupingByActivityAndSubject.R

The following files have to be available on the same path. It will be the working directory of the project.

y_train.txt, 
y_test.txt, 
X_train.txt, 
X_test.txt, 
subject_train.txt, 
subject_test.txt,
features.txt,  
activity_labels.txt


