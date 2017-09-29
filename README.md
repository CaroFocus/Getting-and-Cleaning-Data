#The R script called run_analysis.R does the following:

1) Download and unzip the file given on course web side
2) load the following datasets into R:
	FILENAME		R DATASET NAME
	features.txt 		(feature)
	activity_labels.txt 	(activitylabels)
3) select variable names out of "feature" with mean() and std() in name
4) load the following datasets into R:
	FILENAME		R DATASET NAME
	test/x_test.txt		(xtest)
	test/y_test.txt		(ytest)
	test/subject_test.txt	(subjecttest)
	train/x_train.txt	(xtrain)
	train/y_train.txt	(ytrain)
	train/subject_train.txt	(subjecttrain)
   for xtest and xttrain read in only columns with selected feature	
5) add column "set" to xtest (outcome "test") and xtrain (outcome "train") as well as descriptive variable names
   merge xtest, ytest and subjecttest to get subject names and activity for testdata (resulting dataset "testdata")
   merge xtrain, ytrain and subjecttrain  to get subject names and activity for training data (resulting dataset "trainingdata)
6) combine the training and the test sets to create one data set "alldata"
7) From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
