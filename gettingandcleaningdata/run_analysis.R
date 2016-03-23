# File: run_analysis.R
# Description: Assignment: Getting and Cleaning Data Course Project
#

# Preparation
## remove all variables
## DO NOT execute this, if not needed
rm(list=ls())

## create and assign new Workspace
dir.create("/Users/mpluta/coursera/getting_and_cleaning_data/assignment")
setwd("/Users/mpluta/coursera/getting_and_cleaning_data/assignment")

## Load necessary Libraries
library(data.table)
library(dplyr)
library(plyr)

## download and unzip data from assignment
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
unzip(temp)


## (1) -  Merges the training and the test sets to create one data set.
##        Two data frames (result_test and result_train) are merged into result DF
## (2) -  Extracts only the measurements on the mean and standard deviation for each measurements
##        fread function is used with combination of col.names and select to select onnly mean and std variables
#
## Create Variable-Name Vector
feautures_df <-  fread(list.files(pattern="features\\.txt$",recursive=TRUE), header=FALSE, select = 2) 
select_columns <- c(as.character(as.vector(as.matrix(filter(feautures_df, grepl(".*(std|mean)\\(\\).*", V2))))))
## Create offset "" at the beginning of the Vector, used for function fread and select parameter
select_columns_sel <- c("",select_columns) %in% select_columns

result_test <- cbind( fread(list.files(pattern="^subject_test.*\\.txt$", recursive=TRUE), col.names=c("subject"), select = 1)
                      ,fread(list.files(pattern="^y_test.*\\.txt$", recursive=TRUE), col.names=c("activity_id"), select = 1)
                      ,fread(list.files(pattern="X_test.*\\.txt$", recursive=TRUE), col.names=select_columns, select = which(select_columns_sel))
)

result_train <- cbind( fread(list.files(pattern="^subject_train.*\\.txt$", recursive=TRUE), col.names=c("subject"), select = 1)
                       ,fread(list.files(pattern="^y_train.*\\.txt$", recursive=TRUE), col.names=c("activity_id"), select = 1)
                       ,fread(list.files(pattern="X_train.*\\.txt$", recursive=TRUE), col.names=select_columns, select = which(select_columns_sel))
)

activity_df <- fread(list.files(pattern="^activity_labels.*\\.txt$", recursive=TRUE), col.names=c("activity_id", "activity"))

result <- rbind(result_test,result_train)

## (3) -  Uses descriptive activity names to name the activities in the data set
result <- select(inner_join(activity_df, result, by = c("activity_id" = "activity_id")), -activity_id)

## (4) -  Appropriately labels the data set with descriptive variable names
##        descriptive variable names are collected into vector select_columns and used in function fread
##        additionally two column-names are added "subject" and "activity"
names(result)<-gsub("std\\(\\)", "sd", names(result))
names(result)<-gsub("mean\\(\\)", "mean", names(result))
names(result)<-gsub("^t", "time", names(result))
names(result)<-gsub("^f", "frequency", names(result))
names(result)<-gsub("Acc", "Accelerometer", names(result))
names(result)<-gsub("Gyro", "Gyroscope", names(result))
names(result)<-gsub("Mag", "Magnitude", names(result))
names(result)<-gsub("BodyBody", "Body", names(result))


## (5) -  From the data set in step 4, creates a second, independent tidy data set with 
##        the average of each variable for each activity and each subject.

AverageProVariableActivitySubject <-ddply(melt(result, id=c("subject", "activity")),.(subject, activity), summarize, mean = mean(value))

## CSV File will be saved in your Workspace
write.table(AverageProVariableActivitySubject, file="AverageProVariableActivitySubject.txt", row.name=FALSE)