
**** 		Data Dictionary - tidyData.txt		 ***

1. Brief Introduction
======================

This data file contains the experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

There are 10,299 observations and 69 variables in this data file.

EAch observation provides the following information:
- An identifier of the subject who carried out the experiment.
- Its activity label.
- A 66-mean/standard deviation features of the time and frequency domain variables. 
- An average of all 66-feature variable.


2. Variable Definitions
========================

Subject		type "integer"
	the ID of volunteers carrying the experiments
		1-30

Act.Label	type "character"
	the activity
		WALKING

		WALKING_UPSTAIRS
		
WALKING_DOWNSTAIRS
		
SITTING
		
STANDING

		LAYING

tBodyAcc-mean()-X	type "number"
	Mean of body acceleraion in X-axial (time domain)
		-1.0 to 1.0
tBodyAcc-mean()-Y	type "number"
	Mean of body acceleration in Y-axial (time domain)
		-1.0 to 1.0


tBodyAcc-mean()-Z	type "number"
	Mean of body acceleration in Z-axial (time domain)

tBodyAcc-std()-X	type "number"
	
Std of body acceleration in X-axial (time domain)
		-1.0 to 1.0

tBodyAcc-std()-Y	type "number"
	Std of body acceleration in Y-axial (time domain)
		-1.0 to 1.0

tBodyAcc-std()-Z	type "number"
	Std of body acceleration in Z-axial (time domain)
		-1.0 to 1.0

tGravityAcc-mean()-X	type "number"
	Mean of gravity acceleration in X-axial (time domain)
		-1.0 to 1.0


tGravityAcc-mean()-Y	type "number"
	Mean of gravity acceleration in Y-axial (time domain)
		-1.0 to 1.0


tGravityAcc-mean()-Z
	type "number"
	Mean of gravity accelration in Z-axial (time domain)
		-1.0 to 1.0

tGravityAcc-std()-X	type "number"
	Std of gravity acceleration in X-axial (time domain)
		-1.0 to 1.0

tGravityAcc-std()-Y
	type "number"
	Std of gravity acceleration in Y-axial (time domain)
		-1.0 to 1.0

tGravityAcc-std()-Z	type "number"
	Std of gravity acceleration in Z-axial (time domain)
		-1.0 to 1.0

tBodyAccJerk-mean()-X
	type "number"
	Mean of body acceleration Jerk signal in X-axial (time domain)
		-1.0 to 1.0

tBodyAccJerk-mean()-Y	type "number"
	Mean of body acceleration Jerk signal in Y-axial (time domain)
		-1.0 to 1.0


tBodyAccJerk-mean()-Z
	type "number"
	Mean of body acceleration Jerk signal in Z-axial (time domain)
		-1.0 to 1.0

tBodyAccJerk-std()-X	type "nubmer"
	Std of body acceleration Jerk signal in X-axial (time domain)
		-1.0 to 1.0
	

tBodyAccJerk-std()-Y
	type "number"
	Std of body acceleration Jerk signal in Y-axial (time domain)
		-1.o to 1.0

tBodyAccJerk-std()-Z	type "number"
	Std of body acceleration Jerk signal in Z-axial (time domain)
		-1.o to 1.0

tBodyGyro-mean()-X
	type "number"
	Mean of angular velocity in X-axial (time domain)
		-1.o to 1.0

tBodyGyro-mean()-Y	type "number"
	Mean of angular velocity in Y-axial (time domain)
		-1.0 to 1.0
	

tBodyGyro-mean()-Z	type "number"
	Mean of angular velocity in Z-axial (time domain)
		-1.0 to 1.0
	

tBodyGyro-std()-X	type "number"
	Std of angular velocity in X-axial (time domain)
		-1.0 to 1.0
	

tBodyGyro-std()-Y	type "number"
	Std of angular velocity in Y-axial (time domain)
		-1.0 to 1.0
		

tBodyGyro-std()-Z	type "number"
	Std of angular velocity in Z-axial (time domain)
		-1.0 to 1.0

tBodyGyroJerk-mean()-X	type "number"
	Mean of angular velocity Jerk signal (time domain)
		-1.0 to 1.0
	

tBodyGyroJerk-mean()-Y	type "number"

	Mean of angular velocity Jerk siganl (time domain)
		-1.0 to 1.0

tBodyGyroJerk-mean()-Z	type "number"
	Mean of angular velocity Jerk signal (time domain)
		-1.0 to 1.0
	

tBodyGyroJerk-std()-X	type "number"
	Std of angular velocity Jerk signal (time domain)
		-1.0 to 1.0
	

tBodyGyroJerk-std()-Y	type "number'
	Std of angular velocity Jerk signal (time domain)
		-1.0 to 1.0


tBodyGyroJerk-std()-Z	type "number"
	Std of angular velocity Jerk signal (time domain)
		-1.0 to 1.0

tBodyAccMag-mean()
	type "number"
	Mean of body acceleration magnitude (time domain)
		-1.0 to 1.0

tBodyAccMag-std()	type "number"
	Std of body acceleration magnitude (time domain)
		-1.0 to 1.0

tGravityAccMag-mean()
	type "number"
	Mean of gravity acceleration magnitude (time domain)
		-1.0 to 1.0

tGravityAccMag-std()	type "number"
	Std of gravity acceleration magnitude (time domain)
		-1.0 to 1.0

tBodyAccJerkMag-mean()	type "number"
	Mean of body acceleration Jerk signal magnitude (time domain)
		-1.0 to 1.0


tBodyAccJerkMag-std()	type "number"
	Std of body acceleration Jerk signal magnitude (time domain)
		-1.0 to 1.0

tBodyGyroMag-mean()
	type "number"
	Mean of angular velocity magnitude (time domain)
		-1.0 to 1.0

tBodyGyroMag-std()	type "number"
	Std of angular velocity magnitude (time domain)
		-1.0 to 1.0

tBodyGyroJerkMag-mean()
	type "number"
	Mean of angular velocity Jerk signal magnitude (time domain)
		-1.0 to 1.0

tBodyGyroJerkMag-std()	type "number"
	Std of angular velocity Jerk signal magnitude (time domain)
		-1.0 to 1.0

fBodyAcc-mean()-X
	type "number"
	Mean of body acceleration in X-axial (frequency domain)
		-1.0 to 1.0

fBodyAcc-mean()-Y
	type "number"
	Mean of body acceleration in Y-axial (frequency domain)
		-1.0 to 1.0

fBodyAcc-mean()-Z
	type "number"
	Mean of body acceleration in Z-axial (frequency domain)
		-1.0 to 1.0

fBodyAcc-std()-X
	type "number"
	Std of body acceleration in X-axial (frequency domain)
		-1.0 to 1.0

fBodyAcc-std()-Y
	type "number"
	Std of body acceleration in Y-axial (frequency domain)
		-1.0 to 1.0

fBodyAcc-std()-Z	type "number"
	Std of body acceleration in X-axial (frequency domain)
		-1.0 to 1.0

fBodyAccJerk-mean()-X	type "number"
	Mean of body acceleration Jerk signal in X-axial (frequency domain)
		-1.0 to 1.0
	

fBodyAccJerk-mean()-Y	type "number"
	Mean of body acceleration Jerk signal in Y-axial (frequency domain)
		-1.0 to 1.0
	

fBodyAccJerk-mean()-Z	type "number"
	Mean of body acceleration Jerk signal in Z-axial (frequency domain)
		-1.0 to 1.0
	

fBodyAccJerk-std()-X
	type "number"
	Std of body acceleration Jerk signal in X-axial (frequency domain)
		-1.0 to 1.0

fBodyAccJerk-std()-Y	type "number"
	Std of body acceleration Jerk signal in Y-axial (frequency domain)
		-1.0 to 1.0
	

fBodyAccJerk-std()-Z
	type "number"
	Std of body acceleration Jerk signal in Z-axial (frequencey domain)
		-1.0 to 1.0

fBodyGyro-mean()-X	type "number"
	Mean of angular velocity in X-axial (frequencey domain)
		-1.0 to 1.0
	

fBodyGyro-mean()-Y	type "number"
	Mean of angular velocity in Y-axial (frequency domain)
		-1.0 to 1.0
	

fBodyGyro-mean()-Z	type "number"
	Mean of angular velocity in Z-axial (frequency domain)
		-1.0 to 1.0
	

fBodyGyro-std()-X
	type "number"
	Std of angular velocity in X-axial (frequency domain)
		-1.0 to 1.0

fBodyGyro-std()-Y	type "number"
	Std of angular velocity in Y-axial (frequency domain)
		-1.0 to 1.0
	

fBodyGyro-std()-Z	type "number"
	Std of angular velocity in Z-axial (frequency domain)
		-1.0 to 1.0

fBodyAccMag-mean()	type "number"
	Mean of body acceleration Magnitude (frequency domain)
		-1.0 to 1.0
	

fBodyAccMag-std()	type "number"
	Std of body acceleration magnitude (frequencey domain)
		-1.0 to 1.0

fBodyBodyAccJerkMag-mean()
	type "number"
	Mean of body acceleration Jerk signal magnitude (frequency domain)
		-1.0 to 1.0

fBodyBodyAccJerkMag-std()	type "number"
	Std of body acceleraion Jerk signal magnitude (frequency domain)
		-1.0 to 1.0

fBodyBodyGyroMag-mean()		type "number"
	Mean of body angular velocity magnitude (frequency domain)
		-1.0 to 1.0
	

fBodyBodyGyroMag-std()	type "number"
	Std of body angular velocity magnitude (frequency domain)
		-1.0 to 1.0

fBodyBodyGyroJerkMag-mean()
	type "nubmer"
	Mean of body angular velocity Jerk signal magnitude (frequency domain)
		-1.0 to 1.0

fBodyBodyGyroJerkMag-std()	type "number"
	Std of body angular velocity Jerk signal magnitude (frequency domain)

Average		type "number"
	Average of the all the mean and standard deviation variables
		-1.0 to 1.0





