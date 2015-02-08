
## First created a working directory and have all the required datasets in that place
## Set the working directory where the data files are stored

## setwd("D:/Coursera/Getting and Cleaning Data/Course Project/Working Directory")

## There are two set of data files: training and test files

## Here are the steps of the analysis in this script including getting and cleaning the data
## Step 1: Get, clean and combine the training data files
## Step 2: Get, clean and combine the test data files
## Step 3: Combine the training and test datasets into one single dataset
## Step 4: Extract only the measurements on mean and standard deviation for each measurement
## Step 5: Use the descriptive activity names to name the activities in the dataset
## Step 6: Give descriptive names to the variables
## Step 7: Create a new tidy dataest with the average of each varaiable per Subject and per Activity


## Here we go!!!

## Step 1: Get and clean the training data files
## X.train.txt, y_train.txt, subject_train.txt

X_train.df<-read.table("X_train.txt")

## Always good to look at the structure of the data first

str(X_train.df)  
## It has 7352 observations and 561 variables

y_train.df<-read.table("y_train.txt")

str(y_train.df)   
## It has 7352 observations and 1 variable

## Rename variable V1 to "Act.Label" first as "V1" exists in X_training.df
names(y_train.df)<-"Act.Label"   

subject_train.df<-read.table("subject_train.txt")

str(subject_train.df)
## It has 7352 observations and 1 variable

## Rename variable V1 to "Subject" first
names(subject_train.df)<-"Subject"

## Don't worry about missing values for now.  It depends on which variables we want to analyse
## Don't decompose any columns for now. Keep the variables intac.
## Now all 3 data frames have the same number of rows and merge them by column
## Intuitively, Subject first, Activity second and Measurements last

trainingData<-cbind(subject_train.df, y_train.df, X_train.df)
str(trainingData)
## Number of observations remains 7352 and number of variables is 563. Correct!
## table(trainingData$Subject, trainingData$Act.Label) 

######################################################################
## Step 2: Get and clean the test data files
## X.test.txt, y_test.txt, subject_test.txt

X_test.df<-read.table("X_test.txt")

## Always good to look at the structure of the data first

str(X_test.df)  
## It has 2947 observations and 561 variables

y_test.df<-read.table("y_test.txt")

str(y_test.df)   
## It has 2947 observations and 1 variable

## Rename variable V1 to "Act.Label" first as "V1" exists in X_training.df
names(y_test.df)<-"Act.Label"   

subject_test.df<-read.table("subject_test.txt")

str(subject_test.df)
## It has 2947 observations and 1 variable

## Rename variable V1 to "Subject" first
names(subject_test.df)<-"Subject"

## Don't worry about missing values for now.  It depends on which variables we want to analyse
## Don't decompose any columns for now. Keep the variables intac.
## Now all 3 data frames have the same number of rows and merge them by column
## Intuitively, Subject first, Activity second and Measurements last

testData<-cbind(subject_test.df, y_test.df, X_test.df)
str(testData)
## Number of observations remains 2947 and number of variables is 563. Correct!

################################################################
## Step 3: Combine the training and test datasets into one single dataset

## Now there are only two datasets: trainingData and testData
## Both datasets look good with same variables and you can combine them by rows

dataset<-rbind(trainingData, testData)
str(dataset)

################################################################
## Step 4: Extract only the measurements on mean and standard deviation for each measurement

## Now read the features.txt file provided and find out which variables are mean or standard deviation measurements
## Store the variables names in a vector
extracted.Vars<-c("Subject","Act.Label","V1","V2","V3","V4","V5","V6",
                  "V41","V42","V43","V44","V45","V46",
                  "V81","V82","V83","V84","V85","V86",
                  "V121","V122","V123","V124","v125","V126",
                  "V161","V162","V163","V164","V165","V166",
                  "V201","V202","V214","V215","V227","V228",
                  "V240","V241","V253","V254",
                  "V266","V267","V268","V269","V270","V271",
                  "V345","V346","V347","V348","V349","V350",
                  "V424","V425","V426","V427","V428","V429",
                  "V503","V504","V516","V517","V529","V530",
                  "V542","V543")

dataset1<-dataset[,extracted.Vars]
  
###################################################################
## Step 5: Use the descriptive activity names to name the activities in the dataset

str
###################################################################
## Step 6: Label the dataset with descriptive variable names

NewVarNames<-c("V1"="tBodyAcc-mean()-X",
               "V2"="tBodyAcc-mean()-Y",
               "V3"="tBodyAcc-mean()-Z",
               "V4"="tBodyAcc-std()-X",
               "V5"="tBodyAcc-std()-Y",
               "V6"="tBodyAcc-std()-Z",
               "V41"="tGravityAcc-mean()-X",
               "V42"="tGravityAcc-mean()-Y",
               "V43"="tGravityAcc-mean()-Z",
               "V44"="tGravityAcc-std()-X",
               "V45"="tGravityAcc-std()-Y",
               "V46"="tGravityAcc-std()-Z",
               "V81"="tBodyAccJerk-mean()-X",
               "V82"="tBodyAccJerk-mean()-Y",
               "V83"="tBodyAccJerk-mean()-Z",
               "V84"="tBodyAccJerk-std()-X",
               "V85"="tBodyAccJerk-std()-Y",
               "V86"="tBodyAccJerk-std()-Z",
               "V121"="tBodyGyro-mean()-X",
               "V122"="tBodyGyro-mean()-Y",
               "V123"="tBodyGyro-mean()-Z",
               "V124"="tBodyGyro-std()-X",
               "V125"="tBodyGyro-std()-Y",
               "V126"="tBodyGyro-std()-Z",
               "V161"="tBodyGyroJerk-mean()-X",
               "V162"="tBodyGyroJerk-mean()-Y",
               "V163"="tBodyGyroJerk-mean()-Z",
               "V164"="tBodyGyroJerk-std()-X",
               "V165"="tBodyGyroJerk-std()-Y",
               "V166"="tBodyGyroJerk-std()-Z",
               "V201"="tBodyAccMag-mean()",
               "V202"="tBodyAccMag-std()",
               "V214"="tGravityAccMag-mean()",
               "V215"="tGravityAccMag-std()",
               "V227"="tBodyAccJerkMag-mean()",
               "V228"="tBodyAccJerkMag-std()",
               "V240"="tBodyGyroMag-mean()",
               "V241"="tBodyGyroMag-std()",
               "V253"="tBodyGyroJerkMag-mean()",
               "V254"="tBodyGyroJerkMag-std()",
               "V266"="fBodyAcc-mean()-X",
               "V267"="fBodyAcc-mean()-Y",
               "V268"="fBodyAcc-mean()-Z",
               "V269"="fBodyAcc-std()-X",
               "V270"="fBodyAcc-std()-Y",
               "V271"="fBodyAcc-std()-Z",
               "V345"="fBodyAccJerk-mean()-X",
               "V346"="fBodyAccJerk-mean()-Y",
               "V347"="fBodyAccJerk-mean()-Z",
               "V348"="fBodyAccJerk-std()-X",
               "V349"="fBodyAccJerk-std()-Y",
               "V350"="fBodyAccJerk-std()-Z",
               "V424"="fBodyGyro-mean()-X",
               "V425"="fBodyGyro-mean()-Y",
               "V426"="fBodyGyro-mean()-Z",
               "V427"="fBodyGyro-std()-X",
               "V428"="fBodyGyro-std()-Y",
               "V429"="fBodyGyro-std()-Z",
               "V503"="fBodyAccMag-mean()",
               "V504"="fBodyAccMag-std()",
               "V516"="fBodyBodyAccJerkMag-mean()",
               "V517"="fBodyBodyAccJerkMag-std()",
               "V529"="fBodyBodyGyroMag-mean()",
               "V530"="fBodyBodyGyroMag-std()",
               "V542"="fBodyBodyGyroJerkMag-mean()",
               "V543"="fBodyBodyGyroJerkMag-std()")

dataset1<-rename(dataset1, replace=(NewVarNames))


###################################################################
## Step 7: Create an independent dataset with the average of each variable for each activity and each subject

## The variables to be averaged are from index 3 to 68.
## Add a column for the average of variables index 3 to 68 per row
## You can also use complete.cases function to return completed cases withing missing values first

dataset2<-cbind(dataset1, Average=rowMeans(dataset1[,3:68]))

str(dataset2)

## You can check if there are any missingn values in the "Average" column
sum(is.na(dataset2$Average))


