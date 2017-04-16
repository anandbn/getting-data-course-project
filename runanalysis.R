############################################################
## Getting and Cleanng Data : Course Project
############################################################

fileLoc <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile()

## Download ZIP file
download.file(fileLoc,temp,method="curl")

## Read activity labels
actvty_lbls <- read.table(unz(temp,"UCI HAR Dataset/activity_labels.txt"),col.names = c("activity_cd","activity"))

## Read features
feature_lbls <- read.table(unz(temp,"UCI HAR Dataset/features.txt"),col.names = c("feature_nbr","name"))

####################################
## Read training data
####################################

## Read X variables : Use the col.names as the "features" vector
train_x <- read.table(unz(temp,"UCI HAR Dataset/train/X_train.txt"),col.names = feature_lbls$name)

## Read Y variables and set the col.names to "subject"
train_y <- read.table(unz(temp,"UCI HAR Dataset/train/y_train.txt"),col.names =c("activity_cd"))

## Create an activity column that represents the description of the activity based on the 
## activity labels that was read earlier
train_y$activity <- actvty_lbls[train_y$activity_cd,2]

## Read the subjects  set the col.names to "subject"
train_sub <- read.table(unz(temp,"UCI HAR Dataset/train/subject_train.txt"),col.names =c("subject"))

## Create a vector of total rows in X with the same value of "training"
data_type <- rep("training",nrow(train_x))

## create the training data frame by bringing the above data frames together
training <- data.frame(data_type,train_sub,train_y,train_x)


####################################
## Read test data
####################################

## Read X variables : Use the col.names as the "features" vector
test_x <- read.table(unz(temp,"UCI HAR Dataset/test/X_test.txt"),col.names = feature_lbls$name)

## Read Y variables and set the col.names to "subject"
test_y <- read.table(unz(temp,"UCI HAR Dataset/test/y_test.txt"),col.names =c("activity_cd"))

## Create an activity column that represents the description of the activity based on the 
## activity labels that was read earlier
test_y$activity <- actvty_lbls[test_y$activity_cd,2]

## Read the subjects  set the col.names to "subject"
test_sub <- read.table(unz(temp,"UCI HAR Dataset/test/subject_test.txt"),col.names =c("subject"))

## Create a vector of total rows in X with the same value of "test"
data_type <- rep("test",nrow(test_x))

## create the test data frame by bringing the above data frames together
test_data <- data.frame(data_type,test_sub,test_y,test_x)

####################################
## merge the training and test data
####################################
har_data <- rbind(training,test_data)

## Create a subset of the columns that only have the mean or std
## along with subject and activity so that we can aggregate later
subset_cols <- c("subject",
				 "activity",
				 names(har_data)[grep("mean",names(har_data))],
				 names(har_data)[grep("std",names(har_data))]
				)

## Create a new data set that has the subset of columns
har_data2 <- har_data[,subset_cols]

## Create a aggreagted data set by activity and subject with the mean of all columns other than the first 2 (activity and subject)
har_agg <- aggregate(har_data2[,-c(1,2)],list(activity=har_data2$activity,subject=har_data2$subject),mean)

## Remove temp file
unlink(temp)