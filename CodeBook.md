## CodeBook

Data processed from UCI HAR Dataset by run_analysis.R.  See the [README](README.md) for additional details. 

The script creates a new dataset from the originals with this features:

| column    | description                     | type    |
|-----------|---------------------------------|---------|
| Subject   | Unique identifier of the subjetc| integer |
| Activity  | Label of the activity           | factor  |

Next columns are the mean of these features (see original data set for more information in these variables)

| Features                    |
|-----------------------------|
| tBodyAcc-mean()-X           |
| tBodyAcc-mean()-Y           |
| tBodyAcc-mean()-Z           |
| tBodyAcc-std()-X            |
| tBodyAcc-std()-Y            |
| tBodyAcc-std()-Z            |
| tGravityAcc-mean()-X        |
| tGravityAcc-mean()-Y        |
| tGravityAcc-mean()-Z        |
| tGravityAcc-std()-X         |
| tGravityAcc-std()-Y         |
| tGravityAcc-std()-Z         |
| tBodyAccJerk-mean()-X       |
| tBodyAccJerk-mean()-Y       |
| tBodyAccJerk-mean()-Z       |
| tBodyAccJerk-std()-X        |
| tBodyAccJerk-std()-Y        |
| tBodyAccJerk-std()-Z        |
| tBodyGyro-mean()-X          |
| tBodyGyro-mean()-Y          |
| tBodyGyro-mean()-Z          |
| tBodyGyro-std()-X           |
| tBodyGyro-std()-Y           |
| tBodyGyro-std()-Z           |
| tBodyGyroJerk-mean()-X      |
| tBodyGyroJerk-mean()-Y      |
| tBodyGyroJerk-mean()-Z      |
| tBodyGyroJerk-std()-X       |
| tBodyGyroJerk-std()-Y       |
| tBodyGyroJerk-std()-Z       |
| tBodyAccMag-mean()          |
| tBodyAccMag-std()           |
| tGravityAccMag-mean()       |
| tGravityAccMag-std()        |
| tBodyAccJerkMag-mean()      |
| tBodyAccJerkMag-std()       |
| tBodyGyroMag-mean()         |
| tBodyGyroMag-std()          |
| tBodyGyroJerkMag-mean()     |
| tBodyGyroJerkMag-std()      |
| fBodyAcc-mean()-X           |
| fBodyAcc-mean()-Y           |
| fBodyAcc-mean()-Z           |
| fBodyAcc-std()-X            |
| fBodyAcc-std()-Y            |
| fBodyAcc-std()-Z            |
| fBodyAccJerk-mean()-X       |
| fBodyAccJerk-mean()-Y       |
| fBodyAccJerk-mean()-Z       |
| fBodyAccJerk-std()-X        |
| fBodyAccJerk-std()-Y        |
| fBodyAccJerk-std()-Z        |
| fBodyGyro-mean()-X          |
| fBodyGyro-mean()-Y          |
| fBodyGyro-mean()-Z          |
| fBodyGyro-std()-X           |
| fBodyGyro-std()-Y           |
| fBodyGyro-std()-Z           |
| fBodyAccMag-mean()          |
| fBodyAccMag-std()           |
| fBodyBodyAccJerkMag-mean()  |
| fBodyBodyAccJerkMag-std()   |
| fBodyBodyGyroMag-mean()     |
| fBodyBodyGyroMag-std()      |
| fBodyBodyGyroJerkMag-mean() |
| fBodyBodyGyroJerkMag-std()  |


### Notes

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
