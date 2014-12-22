# CodeBook for Tidy Data set: Maytrics-Tidy-MeanSTDEV
## Coursera: Getting and Cleaning Data; Course Project; December 2014
## Author: Maytrics

The data set described in this codebook is derived from  the [dataset]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), which is described at the [original source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

First two columns contain subjects and activities.
* Subject - Participant in the experiement (Subject)
* Activity - Activities performed by the subject. 

Rest of the columns contain means or standard deviation measurements, averaged by each subject and each activity performed by that subject. The measurements are for Acceleroemeter and Gyroscope, and the columns names so indicate.

* tBodyAccelerometer.mean.X
* tBodyAccelerometer.mean.Y
* tBodyAccelerometer.mean.Z
* tBodyAccelerometer.std.X
* tBodyAccelerometer.std.Y
* tBodyAccelerometer.std.Z
* tGravityAccelerometer.mean.X
* tGravityAccelerometer.mean.Y
* tGravityAccelerometer.mean.Z
* tGravityAccelerometer.std.X
* tGravityAccelerometer.std.Y
* tGravityAccelerometer.std.Z
* tBodyAccelerometerJerk.mean.X
* tBodyAccelerometerJerk.mean.Y
* tBodyAccelerometerJerk.mean.Z
* tBodyAccelerometerJerk.std.X
* tBodyAccelerometerJerk.std.Y
* tBodyAccelerometerJerk.std.Z
* tBodyGyroscope.mean.X
* tBodyGyroscope.mean.Y
* tBodyGyroscope.mean.Z
* tBodyGyroscope.std.X
* tBodyGyroscope.std.Y
* tBodyGyroscope.std.Z
* tBodyGyroscopeJerk.mean.X
* tBodyGyroscopeJerk.mean.Y
* tBodyGyroscopeJerk.mean.Z
* tBodyGyroscopeJerk.std.X
* tBodyGyroscopeJerk.std.Y
* tBodyGyroscopeJerk.std.Z
* tBodyAccelerometerMag.mean
* tBodyAccelerometerMag.std
* tGravityAccelerometerMag.mean
* tGravityAccelerometerMag.std
* tBodyAccelerometerJerkMag.mean
* tBodyAccelerometerJerkMag.std
* tBodyGyroscopeMag.mean
* tBodyGyroscopeMag.std
* tBodyGyroscopeJerkMag.mean
* tBodyGyroscopeJerkMag.std
* fBodyAccelerometer.mean.X
* fBodyAccelerometer.mean.Y
* fBodyAccelerometer.mean.Z
* fBodyAccelerometer.std.X
* fBodyAccelerometer.std.Y
* fBodyAccelerometer.std.Z
* fBodyAccelerometer.meanFreq.X
* fBodyAccelerometer.meanFreq.Y
* fBodyAccelerometer.meanFreq.Z
* fBodyAccelerometerJerk.mean.X
* fBodyAccelerometerJerk.mean.Y
* fBodyAccelerometerJerk.mean.Z
* fBodyAccelerometerJerk.std.X
* fBodyAccelerometerJerk.std.Y
* fBodyAccelerometerJerk.std.Z
* fBodyAccelerometerJerk.meanFreq.X
* fBodyAccelerometerJerk.meanFreq.Y
* fBodyAccelerometerJerk.meanFreq.Z
* fBodyGyroscope.mean.X
* fBodyGyroscope.mean.Y
* fBodyGyroscope.mean.Z
* fBodyGyroscope.std.X
* fBodyGyroscope.std.Y
* fBodyGyroscope.std.Z
* fBodyGyroscope.meanFreq.X
* fBodyGyroscope.meanFreq.Y
* fBodyGyroscope.meanFreq.Z
* fBodyAccelerometerMag.mean
* fBodyAccelerometerMag.std
* fBodyAccelerometerMag.meanFreq
* fBodyAccelerometerJerkMag.mean
* fBodyAccelerometerJerkMag.std
* fBodyAccelerometerJerkMag.meanFreq
* fBodyGyroscopeMag.mean
* fBodyGyroscopeMag.std
* fBodyGyroscopeMag.meanFreq
* fBodyGyroscopeJerkMag.mean
* fBodyGyroscopeJerkMag.std
* fBodyGyroscopeJerkMag.meanFreq

### Example:
Subject	Activity		Measurement Variable 1

1	LAYING			AverageValue

1	SITTING			AverageValue

1	STANDING		AverageValue

1	WALKING			AverageValue

1	WALKING_DOWNSTAIRS	AverageValue

1	WALKING_UPSTAIRS	AverageValue


