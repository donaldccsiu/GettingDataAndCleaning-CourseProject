
## This README.md files describe how the run_analysis.R script does the following tasks by step by step:

## Step 1: Get, clean and combine the training data files
## Step 2: Get, clean and combine the test data files
## Step 3: Combine the training and test datasets into one single dataset
## Step 4: Extract only the measurements on mean and standard deviation for each measurement
## Step 5: Use the descriptive activity names to name the activities in the dataset
## Step 6: Give descriptive names to the variables
## Step 7: Create a new tidy dataest with the average of each varaiable per Subject and per Activity

Note. The run_analysis.R script is self-explanatory also and if you want to run this script, make sure that you set the working directory to where the data files are stored in your local computer. And use the Notepad++ to view the tidyData.txt file output from Step 7.

Tips:
1. Not worry about any missing values first. Get steps 1-6 finished first. Missing values are concerned
only if the variables we are interested have missing values but we are not yet to analyse the data. 
Get, clean and combine the data sets first.
2. After each step, try to look at the results by using str(), dim(), head(), tail(), table(), or simple subsetting and see if it is what you expect. Don't move forward if there are any mistakes. Fix it first.
3. There are some tedious work to do in Steps 4 and 6.  You need to refer to the features.txt file. 
4. The variables names in the features.txt are quite descriptive.  Reuse them in step 6.

Here we go!

##################################################################### 
## Step 1: Get, clean and combinen the training data files

There are three training datasets you need to combine into one. 
Load each file one by one into a dataframe and use str() function to get some ideas of how the data looks like e.g. no. of observations, variables and their names. This is useful to verify if the result
of each step is correct.

Since the datasets have no variables names but V1, V2, V3 etc,
the script renames V1 of Subject_train dataset to "Subject", and V1 of y_train dataset to "Act.Label" first before combining.

Now each dataset has same number of observations and different variable names, the script combines them
using the cbind() function and result into a single "trainingData" dataset.

If you have time, you can run the following table command to check the number of activites performed per subject. You can see in the training dataset, the number of subject is 21 which is exactly 70% of 30 volunteers.


> table(trainingData$Subject, trainingData$Act.Label)
    
      1  2  3  4  5  6
  1  95 53 49 47 53 50
  3  58 59 49 52 61 62
  5  56 47 47 44 56 52
  6  57 51 48 55 57 57
  7  57 51 47 48 53 52
  8  48 41 38 46 54 54
  11 59 54 46 53 47  
  14 59 54 45 54 60 51
  15 54 48 42 59 53 72
  16 51 51 47 69 78 70
  17 61 48 46 64 78 71
  19 52 40 39 73 73 83
  21 52 47 45 85 89 90
  22 46 42 36 62 63 72
  23 59 51 54 68 68 72
  25 74 65 58 65 74 73
  26 59 55 50 78 74 76
  27 57 51 44 70 80 74
  28 54 51 46 72 79 80
  29 53 49 48 60 65 69
  30 65 65 62 62 59 70

########################################################################
## Step 2: Get, clean and combine the test data files

Similar to Step 1, get, clean and combine the three test data files.

The results should be a single "testData" dataset.  Note that the number of observations in the testData dataset can be different, but the number of variables and their names shall be the same as the trainingData set. It is because the measurements should be the same for training and test observations.

You can run the table command and you will see the number of subjects is 9 which is exactly 30% of 30 volunteers.

> table(testData$Subject, testData$Act.Label)
    
      1  2  3  4  5  6
  2  59 48 47 46 54 48
  4  60 52 45 50 56 54
  9  52 49 42 50 45 50
  10 53 47 38 54 44 58
  12 50 52 46 51 61 60
  13 57 55 47 49 57 62
  18 56 58 55 57 73 65
  20 51 51 45 66 73 68
  24 58 59 55 68 69 72

###########################################################################
## Step 3: Combining the training and test datasets

This step shall be straightforward if the results of Steps 1 and 2 are correct.

The training and test datasets (data frames) now have the same variables but different observations.
It does not matter, use the rbind() funtion to combine into a single dataset called "dataset"

> dataset<-rbind(trainingData, testData)

You can run the following commands to check the integrity of the resulting dataset. 
The number of observations is (7352+2947) which is correct. 
The number of variables remains 563 which is correct.

> dim(dataset)
[1] 10299   563

> names(dataset)
  [1] "Subject"   "Act.Label" "V1"        "V2"        "V3"        "V4"        "V5"       
  [8] "V6"        "V7"        "V8"        "V9"        "V10"       "V11"       "V12"      
 [15] "V13"       "V14"       "V15"       "V16"       "V17"       "V18"       "V19"      
 [22] "V20"       "V21"       "V22"       "V23"       "V24"       "V25"       "V26"      
 [29] "V27"       "V28"       "V29"       "V30"       "V31"       "V32"       "V33"      
 [36] "V34"       "V35"       "V36"       "V37"       "V38"       "V39"       "V40"      
 [43] "V41"       "V42"       "V43"       "V44"       "V45"       "V46"       "V47"      
 [50] "V48"       "V49"       "V50"       "V51"       "V52"       "V53"       "V54"      


You can run the table command again and you will see all 30 subjects are in the resulting dataset.

> table(dataset$Subject,dataset$Act.Label)
    
      1  2  3  4  5  6
  1  95 53 49 47 53 50
  2  59 48 47 46 54 48
  3  58 59 49 52 61 62
  4  60 52 45 50 56 54
  5  56 47 47 44 56 52
  6  57 51 48 55 57 57
  7  57 51 47 48 53 52
  8  48 41 38 46 54 54
  9  52 49 42 50 45 50
  10 53 47 38 54 44 58
  11 59 54 46 53 47 57
  12 50 52 46 51 61 60
  13 57 55 47 49 57 62
  14 59 54 45 54 60 51
  15 54 48 42 59 53 72
  16 51 51 47 69 78 70
  17 61 48 46 64 78 71
  18 56 58 55 57 73 65
  19 52 40 39 73 73 83
  20 51 51 45 66 73 68
  21 52 47 45 85 89 90
  22 46 42 36 62 63 72
  23 59 51 54 68 68 72
  24 58 59 55 68 69 72
  25 74 65 58 65 74 73
  26 59 55 50 78 74 76
  27 57 51 44 70 80 74
  28 54 51 46 72 79 80
  29 53 49 48 60 65 69
  30 65 65 62 62 59 70

##################################################################################
## Step 4: Extract only the measurements on mean and standard deviation for each measurement

This is a tedious step but luckily there is a feature.txt file for references and only the mean and standard deviations are needed. You need to read the features.txt file to find out which variables are mean or standard deviation.
For exercise purposes, I made the assumption that only variables with mean() or std() in the variable names will be extracted.

The following variables will be extracted:

1 tBodyAcc-mean()-X

2 tBodyAcc-mean()-Y

3 tBodyAcc-mean()-Z

4 tBodyAcc-std()-X

5 tBodyAcc-std()-Y

6 tBodyAcc-std()-Z
41 tGravityAcc-mean()-X

42 tGravityAcc-mean()-Y

43 tGravityAcc-mean()-Z

44 tGravityAcc-std()-X

45 tGravityAcc-std()-Y

46 tGravityAcc-std()-Z
81 tBodyAccJerk-mean()-X

82 tBodyAccJerk-mean()-Y

83 tBodyAccJerk-mean()-Z

84 tBodyAccJerk-std()-X

85 tBodyAccJerk-std()-Y

86 tBodyAccJerk-std()-Z
121 tBodyGyro-mean()-X

122 tBodyGyro-mean()-Y

123 tBodyGyro-mean()-Z

124 tBodyGyro-std()-X

125 tBodyGyro-std()-Y

126 tBodyGyro-std()-Z
161 tBodyGyroJerk-mean()-X

162 tBodyGyroJerk-mean()-Y

163 tBodyGyroJerk-mean()-Z

164 tBodyGyroJerk-std()-X

165 tBodyGyroJerk-std()-Y

166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()

202 tBodyAccMag-std()
214 tGravityAccMag-mean()

215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()

228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()

241 tBodyGyroMag-std()
253 tBodyGyroJerkMag-mean()

254 tBodyGyroJerkMag-std()
266 fBodyAcc-mean()-X

267 fBodyAcc-mean()-Y

268 fBodyAcc-mean()-Z

269 fBodyAcc-std()-X

270 fBodyAcc-std()-Y

271 fBodyAcc-std()-Z
345 fBodyAccJerk-mean()-X

346 fBodyAccJerk-mean()-Y

347 fBodyAccJerk-mean()-Z

348 fBodyAccJerk-std()-X

349 fBodyAccJerk-std()-Y

350 fBodyAccJerk-std()-Z

424 fBodyGyro-mean()-X

425 fBodyGyro-mean()-Y

426 fBodyGyro-mean()-Z

427 fBodyGyro-std()-X

428 fBodyGyro-std()-Y

429 fBodyGyro-std()-Z
503 fBodyAccMag-mean()

504 fBodyAccMag-std()
516 fBodyBodyAccJerkMag-mean()

517 fBodyBodyAccJerkMag-std()
529 fBodyBodyGyroMag-mean()

530 fBodyBodyGyroMag-std()
542 fBodyBodyGyroJerkMag-mean()

543 fBodyBodyGyroJerkMag-std()


Now the variables of mean and standard deviation have been identified. 
First, prepare a character vector to store all the variable names e.g. c("V1","V2","v3",...)
This vector will be used to subset the dataset. Don't forget the "Subject" and "Act.Label" variables.

extracted.Vars<-c("Subject","Act.Label","V1","V2","V3","V4","V5","V6",
                  "V41","V42","V43","V44","V45","V46",
                  "V81","V82","V83","V84","V85","V86",
                  "V121","V122","V123","V124","V125","V126",
                  "V161","V162","V163","V164","V165","V166",
                  "V201","V202","V214","V215","V227","V228",
                  "V240","V241","V253","V254",
                  "V266","V267","V268","V269","V270","V271",
                  "V345","V346","V347","V348","V349","V350",
                  "V424","V425","V426","V427","V428","V429",
                  "V503","V504","V516","V517","V529","V530",
                  "V542","V543")

After extracting the variables, check the number of observations and variables.

> dataset1<-dataset[,extracted.Vars]
> dim(dataset1)
[1] 10299    68

#################################################################
## Step 5: Use the descriptive activity names to name the activities in the dataset

You need to refer to the activity_labels.txt file. The script assigns each of the following labels to the corresponding values.

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING


Here are commands used in the script:

> dataset1$Act.Label[dataset1$Act.Label==1]<-"WALKING"
> dataset1$Act.Label[dataset1$Act.Label==2]<-"WALKING_UPSTAIRS"
> dataset1$Act.Label[dataset1$Act.Label==3]<-"WALKING_DONWSTAIRS"
> dataset1$Act.Label[dataset1$Act.Label==4]<-"SITTING"
> dataset1$Act.Label[dataset1$Act.Label==5]<-"STANDING"
> dataset1$Act.Label[dataset1$Act.Label==6]<-"LAYING"

Again, check using str() function.

> str(dataset1)
'data.frame':	10299 obs. of  68 variables:
 $ Subject  : int  1 1 1 1 1 1 1 1 1 1 ...
 $ Act.Label: chr  "STANDING" "STANDING" "STANDING" "STANDING" ...
 $ V1       : num  0.289 0.278 0.28 0.279 0.277 ...
 $ V2       : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ V3       : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ V4       : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...


#################################################################
## Step 6: Label the dataset with descriptive variable names

The variable names given in the features.txt file are descriptive and we will 
use the same names to lable the variable using the rename() function.

For flexibility purpose, a vector of new names is prepared first which will be used later to rename the variables.  See the script for the details of the vector.

Use the rename() function to rename each variable using the vector created. 

Now up to this stage, the dataset "dataset1" should be very clean.


##################################################################
## Step 7: Create an independent dataset with the average of each variable for each activity and each subject


This is straightforward by calculating the mean of all variables (measurements) and store the result in a new column.  

The variables to be averaged have indexes from 3 to 68. Note indexes 1 and 2 are Subject and Activity Label variables.  Luckily we can use 3:68 notation, instead of typing the variable one by one.

Little trick here. The script uses the rowMeans() in the cbind() function to get this done.  See the script.

Finally, write the resulting data frame into a file called "tidyData.txt".  Use the write.table() function and set row.names=FALSE. This file should be in your working directory.


