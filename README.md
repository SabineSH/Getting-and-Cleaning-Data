### Assignment for Getting and Cleaning Data Course Project

The following steps were performed to transform the available data into tidy data

##Reading the data
As a first step, the following files were read and put into separate data sets: 
* X_test.txt
* y_test.txt
* subject_test.txt
* X_train.txt
* y_train.txt
* subject_train.txt
Please note that I have used absolute path names. If you want to use the script you have to set the 
directories properly.

##Merging of training and test data sets to create one single data set

The corresponding data sets from test and train were combined which resulted in three individual data sets:
* X (combination of test set and training set)
* Y (combination of test labels and train labels)
* S (combination of test subject file and train subject file)
Now test and train data are combined.

One final data set "data" is created by adding the label and subject data to the X data set.


##Extracts only the measurements on the mean and standard deviation for each measurement.

* The features are read from file "features.txt"
* A new column is defined (colselect) for features that states if the variable names contains either "mean" or "std" 
* A new dataset "data2" is created that contains only the measurement on the mean and standard deviation for each measurement

## Uses descriptive activity names to name the activities in the data set

Factor levels are applied to label the acrivities in the data set "data2"

## Appropriately labels the data set with descriptive variable names
The column names that are flagged with "colselect" are taken from data set "features".
Syntactically valid names are created for the column names to make sure that the results are unique.
Then, the column names are applied to data set "data2".
Additionally, column names for "Activity" as well as "Subject" are applied, too.

## From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
Firstly, data set "data2" is melted, the id variables "Activity" and "Subject" are introduced. The other 
variables are taken as value variables.

Secondly, the data frame is casted so that for each subject and activity combination one row will be shown. 
The mean is calculated for each value variable and each combination. 


##CODEBOOK

The codebook is place in the GitHub repository "Getting-and-Cleaning-Data" under the name "Codebook.md"

