##############################################################################
##
## Getting and Cleaning Data
## Course Project
##
##############################################################################
## ---------------------------------------------------------------------------
## Load packages
## ---------------------------------------------------------------------------
library(plyr)
library(dplyr)

## ---------------------------------------------------------------------------
## Main Routine
## ---------------------------------------------------------------------------

runAnalysis <- function() {
  
  ## ---------------------------------------------------------------------------
  ## General Settings and Utility Functions
  ## ---------------------------------------------------------------------------
  
  url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  compressedFile <-"dataset.zip"
  dataFolder <- "UCI HAR Dataset"
  
  ## ---------------------------------------------------------------------------
  ## Download and Unzip Data If Required
  ## ---------------------------------------------------------------------------
  
  if(!file.exists(compressedFile)) {
    download.file(url, compressedFile)
  }
  
  if(!file.exists(dataFolder)) {
    unzip(compressedFile, exdir = ".")
  }

  ## ---------------------------------------------------------------------------
  ## Read Global Meta data
  ## ---------------------------------------------------------------------------
  ## Labels for 6 distinct "activities"
  activities <- read.table(fullpath(dataFolder,"activity_labels.txt"), col.names=c("id", "name"))
  ## Labels for 561 features or measurables for each observation
  features <- read.table(fullpath(dataFolder,"features.txt"), col.names=c("id", "name"), stringsAsFactors = FALSE)

  ## ---------------------------------------------------------------------------
  ## Read Training Dataset
  ## ---------------------------------------------------------------------------
  ## 7352 observations of the 561 measureables (labelled in features)
  trainingObservations <- read.table(fullpath(dataFolder,"train/X_train.txt"))
  ## The activity for each of the 7352 observations
  trainingActivities <- read.table(fullpath(dataFolder,"train/y_train.txt"))
  ## The subject for each of the 7352 observations (21 training subjects)
  trainingSubjects <- read.table(fullpath(dataFolder,"train/subject_train.txt"))

  ## ---------------------------------------------------------------------------
  ## Read Test Dataset
  ## ---------------------------------------------------------------------------
  ## 2947 observations of the 561 measureables (labelled in features)
  testingObservations <- read.table(fullpath(dataFolder,"test/X_test.txt"))
  ## The activity for each of the 2947 observations
  testingActivities <- read.table(fullpath(dataFolder,"test/y_test.txt"))
  ## The subject for each of the 2947 observations (9 training subjects)
  testingSubjects <- read.table(fullpath(dataFolder,"test/subject_test.txt"))

  ## ---------------------------------------------------------------------------
  ## Identify Features of Interest ( mean and standard deviation measurements)
  ## ---------------------------------------------------------------------------
  features<-mutate(features,meanOrStd = grepl("mean\\(\\)",name,ignore.case=TRUE) |grepl("std\\(\\)",name,ignore.case=TRUE) )

  ## ---------------------------------------------------------------------------
  ## Drop Non-Interesting Features
  ## ---------------------------------------------------------------------------
  trainingObservations <-trainingObservations[,features$meanOrStd]
  testingObservations <-testingObservations[,features$meanOrStd]
  features <-features[features$meanOrStd,]

  ## ---------------------------------------------------------------------------
  ## Add subject and activity to the observation data sets and merge
  ## ---------------------------------------------------------------------------
  trainingObservations <-cbind(trainingSubjects,trainingActivities,trainingObservations)
  testingObservations <-cbind(testingSubjects,testingActivities,testingObservations)
  mergedObservations <- rbind(testingObservations, trainingObservations)

  ## ---------------------------------------------------------------------------
  ## Name the columns
  ## ---------------------------------------------------------------------------
  features<-mutate(features,name =  gsub("^t", "Time", name))
  features<-mutate(features,name =  gsub("^f", "Frequency", name))
  features<-mutate(features,name =  gsub("mean\\(\\)", "Mean", name))
  features<-mutate(features,name =  gsub("std\\(\\)", "StandardDeviation", name))
  features<-mutate(features,name =  name <- gsub("-", "", name))

  observationsColNames<-c("Subject","Activity",as.character(features$name))
  names(mergedObservations) <- observationsColNames

  ## ---------------------------------------------------------------------------
  ## Factorise subject and activity columns
  ## ---------------------------------------------------------------------------
  mergedObservations$Subject <- factor(mergedObservations$Subject)
  mergedObservations$Activity <- factor(mergedObservations$Activity)
  levels(mergedObservations$Activity) <- activities$name

  ## ---------------------------------------------------------------------------
  ## Collapse dataset to mean values grouped by subject and activity
  ## ---------------------------------------------------------------------------
  meansBySubjectAndActivity <- ddply(mergedObservations, .(Subject, Activity), numcolwise(mean))
  names(meansBySubjectAndActivity)[-c(1,2)] <- paste0("Mean", names(meansBySubjectAndActivity)[-c(1,2)])

  ## ---------------------------------------------------------------------------
  ## Collapse dataset to mean values grouped by subject and activity
  ## ---------------------------------------------------------------------------
  write.table(meansBySubjectAndActivity,file="MeansBySubjectAndActivity.txt",row.name=FALSE)

}

## ---------------------------------------------------------------------------
## Support Routines
## ---------------------------------------------------------------------------

fullpath <- function (foldername,filename) {
  paste(foldername,filename, sep = "/")
}
