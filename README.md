# GettingAndCleaningData-CourseProject
## Course project for the "Getting and Cleaning Data" course in the Data Science Specialisation with Coursera

The included R script, "run_analysis.R" performs the following data manipulations:
* Downloads the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip if it is not already present as a local file named "dataset.zip"
* Unzips the local "dataset.zip" file, if there is not already a "UCI HAR Dataset" directory present
* Reads in the observations files for both the training and tesing subject cohorts (X_train.txt and X_test.txt)
* Reads in the subject files for both the training and tesing subject cohorts (subject_train.txt and subject_test.txt) and attaches them to the observation data
* Reads in the activity files for both the training and tesing subject cohorts (y_train.txt and y_test.txt) and attaches them to the observation data
* Filters the observation datasets to include only the mean and standard deviation measures
* Reads in the feature labels (features.txt) and labels the obervsation dataset columns accordingly
* Reads in the activity names (activity_labels.txt) and uses these more readable text values in the obersation dataset instead
* Tidies the measure variable names (observation column names) to make them more human readable
* Summarises all the measures by taking means of each grouped by subject and activity
* Outputs this summarised data into a "MeansBySubjectAndActivity.txt" file
 
