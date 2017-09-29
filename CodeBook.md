Variables in alldata:

subject - derived from test/subject_test.txt and train/subject_train.txt\
set - derived indicator to show whether data got from test or train folder, outcome "test", "train"\
activitycode - test/y_test.txt and train/y_train.txt\
activityname - activity_labels.txt merged with activitycode to label values

the following columns are from test/x_test.txt and train/x_train.txt,\
only columns indication mean (mean()) or standard deviation (std()) are present,
values are normalized and bounded within [-1,1]:
tBodyAcc-mean()-X \
tBodyAcc-mean()-Y\
tBodyAcc-mean()-Z\
tBodyAcc-std()-X\
tBodyAcc-std()-Y\
tBodyAcc-std()-Z\
tGravityAcc-mean()-X\
tGravityAcc-mean()-Y\
tGravityAcc-mean()-Z\
tGravityAcc-std()-X\
tGravityAcc-std()-Y\
tGravityAcc-std()-Z\
tBodyAccJerk-mean()-X\
tBodyAccJerk-mean()-Y\
tBodyAccJerk-mean()-Z\
tBodyAccJerk-std()-X\
tBodyAccJerk-std()-Y\
tBodyAccJerk-std()-Z\
tBodyGyro-mean()-X\
tBodyGyro-mean()-Y\
tBodyGyro-mean()-Z\
tBodyGyro-std()-X\
tBodyGyro-std()-Y\
tBodyGyro-std()-Z\
tBodyGyroJerk-mean()-X\
tBodyGyroJerk-mean()-Y\
tBodyGyroJerk-mean()-Z\
tBodyGyroJerk-std()-X\
tBodyGyroJerk-std()-Y\
tBodyGyroJerk-std()-Z\
tBodyAccMag-mean()\
tBodyAccMag-std()\
tGravityAccMag-mean()\
tGravityAccMag-std()\
tBodyAccJerkMag-mean()\
tBodyAccJerkMag-std()\
tBodyGyroMag-mean()\
tBodyGyroMag-std()\
tBodyGyroJerkMag-mean()\
tBodyGyroJerkMag-std()\
fBodyAcc-mean()-X\
fBodyAcc-mean()-Y\
fBodyAcc-mean()-Z\
fBodyAcc-std()-X\
fBodyAcc-std()-Y\
fBodyAcc-std()-Z\
fBodyAccJerk-mean()-X\
fBodyAccJerk-mean()-Y\
fBodyAccJerk-mean()-Z\
fBodyAccJerk-std()-X\
fBodyAccJerk-std()-Y\
fBodyAccJerk-std()-Z\
fBodyGyro-mean()-X\
fBodyGyro-mean()-Y\
fBodyGyro-mean()-Z\
fBodyGyro-std()-X\
fBodyGyro-std()-Y\
fBodyGyro-std()-Z\
fBodyAccMag-mean()\
fBodyAccMag-std()\
fBodyBodyAccJerkMag-mean()\
fBodyBodyAccJerkMag-std()\
fBodyBodyGyroMag-mean()\
fBodyBodyGyroMag-std()\
fBodyBodyGyroJerkMag-mean()\
fBodyBodyGyroJerkMag-std()\

Values of activity values:\
1 WALKING = subject was walking during the test\
2 WALKING_UPSTAIRS = subject was walking up a staircase during the test\
3 WALKING_DOWNSTAIRS = subject was walking down a staircase during the test\
4 SITTING = subject was sitting during the test\
5 STANDING = subject was standing during the test\
6 LAYING = subject was laying down during the test\
