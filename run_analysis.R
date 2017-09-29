#set working directory
setwd("C:/Users/csturtz/Documents/Coursera3/Data")

#if not already existing download zip file
if (!file.exists("./assignment.zip")){
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileUrl, destfile = "./assignment.zip")
}

#if not already done unzip file
if (!file.exists("assignment")) { 
      unzip(./assignment.zip) 
}

# load required packages
library(dplyr)
library(plyr)


####################
#reading descriptions
####################
# this are the column names for test and training data
feature <- read.table("./assignment/UCI HAR Dataset/features.txt")
# select features of mean() and std()
# featureselect includes a vector at which place in feature mean() and std() are given
featureselect <- sort(c(grep("mean()", feature$V2, fixed = TRUE), 
                        grep("std()", feature$V2)))
#featurelabel is ab subset of feature with only required variable names
featurelabel <- feature[featureselect,]

# descriptive activity names to name the activities in the data set
activitylabels <- read.table("./assignment/UCI HAR Dataset/activity_labels.txt")
# Appropriate labels for activitylabels variable name
colnames(activitylabels) <- c("activitycode", "activityname")



####################
#reading test data
####################
# read in only columns with selected features
xtest <- read.table("./assignment/UCI HAR Dataset/test/X_test.txt")[, featureselect]
ytest <- read.table("./assignment/UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./assignment/UCI HAR Dataset/test/subject_test.txt")

# Appropriate labels the data set with descriptive variable names
colnames(xtest) <- t(featurelabel[,2])
colnames(subjecttest) <- "subject"

# Uses descriptive activity names to name the activities in the data set
ytest <- merge(activitylabels, ytest, by.x= "activitycode", by.y = "V1")
# combine test data and include variable set to identify test data at the end
set <- "test"
testdata <- cbind(subjecttest, set, ytest, xtest)


####################
#reading train data
####################
# read in only columns with selected features
xtraining <- read.table("./assignment/UCI HAR Dataset/train/X_train.txt")[featureselect]
ytraining <- read.table("./assignment/UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./assignment/UCI HAR Dataset/train/subject_train.txt")

# Appropriate labels the data set with descriptive variable names
colnames(subjecttrain) <- "subject"
colnames(xtraining) <- t(featurelabel[,2])

# 3Uses descriptive activity names to name the activities in the data set
ytraining <- merge(activitylabels, ytraining, by.x = "activitycode", by.y = "V1")
# combine training data and include variable set to identify training data at the end
set <- "training"
trainingdata <- cbind(subjecttrain, set, ytraining, xtraining)



####################
# Merges the training and the test sets to create one data set.
####################
alldata <- rbind(trainingdata, testdata)



####################
# From the data set alldata, creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject.
####################
 
averages_data <- ddply(alldata, .(subject, activityname), function(x) colMeans(x[, 5:70]))
# store dataset 
write.table(averages_data, "./assignment/tidy.txt", row.names = FALSE, quote = FALSE)
