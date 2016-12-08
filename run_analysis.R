## Assignment for Getting and Cleaning Data Course Project
##=========================================================

library(dplyr)

## Reading the data files
Xtest <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/test/y_test.txt")
Stest <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/test/subject_test.txt")
Xtrain <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/train/y_train.txt")
Strain <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/train/subject_train.txt")

## Merging of training and test data sets to create one single data set
##=====================================================================
## combination of test set and training set
X <- rbind(Xtest,Xtrain)
## combination of test labels and train labels
Y <- rbind(Ytest,Ytrain)
## Adding a descriptive column name
colnames(Y) <- c("Activity")
## combination of test subject file and train subject file
S <- rbind(Stest,Strain)
## Adding a descriptive column name
colnames(S) <- c("Subject")
## combination of all three files into one single data set
data <- cbind(X,Y,S)

## Extracts only the measurements on the mean and standard deviation for each measurement.
##=============================================================================================

## getting all features
features <- read.table("C:/Sabine/Coursera Data Cleaning/Assignment/UCI HAR Dataset/features.txt")
## getting only the feature names
featNames <- features[,2]
## defining a new column for features that states if the variable names contains either "mean" or "std" 
features <- mutate(features, colselect = grepl("mean|std",V2))
## creation of dataset data2 that contains only the measurements on the mean and standard deviation for each measurement
data2 <- data[,features$colselect]

## Uses descriptive activity names to name the activities in the data set
##==========================================================================
## using factor levels to label the activities in the data set
data2$Activity <- factor(data2$Activity, 
                         levels=c(1,2,3,4,5,6),
                         labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))


## Appropriately labels the data set with descriptive variable names
##=====================================================================
## getting all variables in features that will be taken as variables for the final dataset
features2 <- features[features$colselect,]
## make syntactically valid names for column names, make sure that the resulting elements are unique
var <- make.names(features2$V2,unique=TRUE)
## assign column names to data set data2
colnames(data2) <- c(var,"Activity","Subject")


## From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
##=================================================================================================================================================
## melting data2, introducing id and value variables
data3 <- melt(data2,id=c("Activity","Subject"),measure.vars=var)        
## casting data frame, so that for each subject and activity combination there is one row
resultdata <- dcast(data3, Activity + Subject ~ ...,mean)
