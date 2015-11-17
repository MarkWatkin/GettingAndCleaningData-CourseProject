# Code Book

The attached dataset "MeansBySubjectAndActivity.txt" includes a summary of measurements gathered by accelerometers in 
Samsung Galaxy S smartphones, by 30 different subjects while engaging in 6 different activities.

A full description of the raw data is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The summary provided through this analysis consists of the mean of each of 66 different "Measures" grouped by "Subject" and the "Activity" they were engaged in

## Subject
This variable identifies the Subject for whom the "Measures" apply.
It is coded as a character field, containing codes "1" through "30" - identifying the 30 subjects taking part in the study

## Activity
This variable identifies the Activity the Subject was engaged in when the "Measures" were recorded.
It is coded as a character string, containing one of 6 possible values:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

## Measures Variables
The remaining variables are each means of an underlying measure from the study, across a number of observations for corresponding  Subject and Activity.

| Measure`Variable | Meaning |
|------------- |-------------|
| MeanTimeBodyAccMeanX | The Mean value of the Time Domain Body Acceleration Mean in X direction |
| MeanTimeBodyAccMeanY | The Mean value of the Time Domain Body Acceleration Mean in Y direction |
| MeanTimeBodyAccMeanZ | The Mean value of the Time Domain Body Acceleration Mean in Z direction |
| MeanTimeBodyAccStandardDeviationX | The Mean value of the Time Domain Body Acceleration Standard Deviation in X direction |
| MeanTimeBodyAccStandardDeviationY | The Mean value of the Time Domain Body Acceleration Standard Deviation in Y direction |
| MeanTimeBodyAccStandardDeviationZ | The Mean value of the Time Domain Body Acceleration Standard Deviation in Z direction |
| MeanTimeGravityAccMeanX | The Mean value of the Time Domain Gravity Acceleration Mean in X direction |
| MeanTimeGravityAccMeanY | The Mean value of the Time Domain Gravity Acceleration Mean in Y direction |
| MeanTimeGravityAccMeanZ | The Mean value of the Time Domain Gravity Acceleration Mean in Z direction |
| MeanTimeGravityAccStandardDeviationX | The Mean value of the Time Domain Gravity Acceleration Standard Deviation in X direction |
| MeanTimeGravityAccStandardDeviationY | The Mean value of the Time Domain Gravity Acceleration Standard Deviation in Y direction |
| MeanTimeGravityAccStandardDeviationZ | The Mean value of the Time Domain Gravity Acceleration Standard Deviation in Z direction |
| MeanTimeBodyAccJerkMeanX | The Mean value of the Time Domain Body Jerk Acceleration Mean in X direction |
| MeanTimeBodyAccJerkMeanY | The Mean value of the Time Domain Body Jerk Acceleration Mean in Y direction |
| MeanTimeBodyAccJerkMeanZ | The Mean value of the Time Domain Body Jerk Acceleration Mean in Z direction |
| MeanTimeBodyAccJerkStandardDeviationX | The Mean value of the Time Domain Body Jerk Acceleration Standard Deviation in X direction |
| MeanTimeBodyAccJerkStandardDeviationY | The Mean value of the Time Domain Body Jerk Acceleration Standard Deviation in Y direction |
| MeanTimeBodyAccJerkStandardDeviationZ | The Mean value of the Time Domain Body Jerk Acceleration Standard Deviation in Z direction |
| MeanTimeBodyGyroMeanX | The Mean value of the Time Domain Gyroscope Mean in X direction |
| MeanTimeBodyGyroMeanY | The Mean value of the Time Domain Gyroscope Mean in Y direction |
| MeanTimeBodyGyroMeanZ | The Mean value of the Time Domain Gyroscope Mean in Z direction |
| MeanTimeBodyGyroStandardDeviationX | The Mean value of the Time Domain Gyroscope Standard Deviation in X direction |
| MeanTimeBodyGyroStandardDeviationY | The Mean value of the Time Domain Gyroscope Standard Deviation in Y direction |
| MeanTimeBodyGyroStandardDeviationZ | The Mean value of the Time Domain Gyroscope Standard Deviation in Z direction |
| MeanTimeBodyGyroJerkMeanX | The Mean value of the Time Domain Gyroscope Jerk Mean in X direction |
| MeanTimeBodyGyroJerkMeanY | The Mean value of the Time Domain Gyroscope Jerk Mean in Y direction |
| MeanTimeBodyGyroJerkMeanZ | The Mean value of the Time Domain Gyroscope Jerk Mean in Z direction |
| MeanTimeBodyGyroJerkStandardDeviationX | The Mean value of the Time Domain Gyroscope Jerk Standard Deviation in X direction |
| MeanTimeBodyGyroJerkStandardDeviationY | The Mean value of the Time Domain Gyroscope Jerk Standard Deviation in Y direction |
| MeanTimeBodyGyroJerkStandardDeviationZ | The Mean value of the Time Domain Gyroscope Jerk Standard Deviation in Z direction |
| MeanTimeBodyAccMagMean | The Mean value of the Time Domain Body Acceleration Magnitude Mean |
| MeanTimeBodyAccMagStandardDeviation | The Mean value of the Time Domain Body Acceleration Magnitude Standard Deviation |
| MeanTimeGravityAccMagMean | The Mean value of the Time Domain Gravity Acceleration Magnitude Mean |
| MeanTimeGravityAccMagStandardDeviation | The Mean value of the Time Domain Gravity Acceleration Magnitude Standard Deviation |
| MeanTimeBodyAccJerkMagMean | The Mean value of the Time Domain Body Jerk Acceleration Magnitude Mean |
| MeanTimeBodyAccJerkMagStandardDeviation | The Mean value of the Time Domain Body Jerk Acceleration Magnitude Standard Deviation |
| MeanTimeBodyGyroMagMean | The Mean value of the Time Domain Gyroscope Magnitude Mean |
| MeanTimeBodyGyroMagStandardDeviation | The Mean value of the Time Domain Gyroscope Magnitude Standard Deviation |
| MeanTimeBodyGyroJerkMagMean | The Mean value of the Time Domain Gyroscope Jerk Magnitude Mean |
| MeanTimeBodyGyroJerkMagStandardDeviation | The Mean value of the Time Domain Gyroscope Jerk Magnitude Standard Deviation |
| MeanFrequencyBodyAccMeanX | The Mean value of the Frequency Domain Body Acceleration Mean in X direction |
| MeanFrequencyBodyAccMeanY | The Mean value of the Frequency Domain Body Acceleration Mean in Y direction |
| MeanFrequencyBodyAccMeanZ | The Mean value of the Frequency Domain Body Acceleration Mean in Z direction |
| MeanFrequencyBodyAccStandardDeviationX | The Mean value of the Frequency Domain Body Acceleration Standard Deviation in X direction |
| MeanFrequencyBodyAccStandardDeviationY | The Mean value of the Frequency Domain Body Acceleration Standard Deviation in Y direction |
| MeanFrequencyBodyAccStandardDeviationZ | The Mean value of the Frequency Domain Body Acceleration Standard Deviation in Z direction |
| MeanFrequencyBodyAccJerkMeanX | The Mean value of the Frequency Domain Body Jerk Acceleration Mean in X direction |
| MeanFrequencyBodyAccJerkMeanY | The Mean value of the Frequency Domain Body Jerk Acceleration Mean in Y direction |
| MeanFrequencyBodyAccJerkMeanZ | The Mean value of the Frequency Domain Body Jerk Acceleration Mean in Z direction |
| MeanFrequencyBodyAccJerkStandardDeviationX | The Mean value of the Frequency Domain Body Jerk Acceleration  Standard Deviation in X direction |
| MeanFrequencyBodyAccJerkStandardDeviationY | The Mean value of the Frequency Domain Body Jerk Acceleration  Standard Deviation in Y direction |
| MeanFrequencyBodyAccJerkStandardDeviationZ | The Mean value of the Frequency Domain Body Jerk Acceleration  Standard Deviation in Z direction |
| MeanFrequencyBodyGyroMeanX | The Mean value of the Frequency Domain Gyroscope Mean in X direction |
| MeanFrequencyBodyGyroMeanY | The Mean value of the Frequency Domain Gyroscope Mean in Y direction |
| MeanFrequencyBodyGyroMeanZ | The Mean value of the Frequency Domain Gyroscope Mean in Z direction |
| MeanFrequencyBodyGyroStandardDeviationX | The Mean value of the Frequency Domain Gyroscope Standard Deviation in X direction |
| MeanFrequencyBodyGyroStandardDeviationY | The Mean value of the Frequency Domain Gyroscope Standard Deviation in Y direction |
| MeanFrequencyBodyGyroStandardDeviationZ | The Mean value of the Frequency Domain Gyroscope Standard Deviation in Z direction |
| MeanFrequencyBodyAccMagMean | The Mean value of the Frequency Domain Body Acceleration Magnitude Mean |
| MeanFrequencyBodyAccMagStandardDeviation | The Mean value of the Frequency Domain Body Acceleration Magnitude Standard Deviation |
| MeanFrequencyBodyBodyAccJerkMagMean | The Mean value of the Frequency Domain Body Jerk Acceleration Magnitude Mean |
| MeanFrequencyBodyBodyAccJerkMagStandardDeviation | The Mean value of the Frequency Domain Body Jerk Acceleration Magnitude Standard Deviation |
| MeanFrequencyBodyBodyGyroMagMean | The Mean value of the Frequency Domain Gyroscope Magnitude Mean |
| MeanFrequencyBodyBodyGyroMagStandardDeviation | The Mean value of the Frequency Domain Gyroscope Magnitude Standard Deviation |
| MeanFrequencyBodyBodyGyroJerkMagMean | The Mean value of the Frequency Domain Gyroscope Jerk Magnitude Mean |
| MeanFrequencyBodyBodyGyroJerkMagStandardDeviation | The Mean value of the Frequency Domain Gyroscope Jerk Magnitude Standard Deviation |

