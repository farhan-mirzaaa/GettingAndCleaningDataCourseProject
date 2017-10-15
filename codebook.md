# Codebook for Getting and cleaning data course project

This codebook is to describe the [run_analysis.R](https://github.com/farhan-mirzaaa/GettingAndCleaningDataCourseProject/blob/master/run_analysis.R) script and the tidy dataset.

## Data

Raw data downloaded from [Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) which is transformed into Tidy data [tidy_data.txt](https://github.com/farhan-mirzaaa/GettingAndCleaningDataCourseProject/blob/master/tidy_data.txt). The first row in tidy data text file contains the names of the variables and the following rows contains the values of these variables.

## Variables

For directory and path, **dataDir**, **dataSetName**, **zipFileName**, **zipFileUrl**, **zipFilePath**, **dataSetDir**, **tidyDataFilePath**, **testDataDir** and **trainDataDir** are used.

**features** is used to store the features for the activity performed by the subject.

**activites** is used to store the activites which includes WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

**trainSubjects**, **trainX**, **trainY**, **testSubjects**, **testX** and **testY** are used to store data.table from files for training sets and test sets.

**humanActivityDataSet** is used to store the merged dataset.

**newcolnames** is used to store and assign the final descriptive names to the dataset.

**meansDataSet** is used to store the final tidy data set.


The variables in the **tidy dataset** are measured as floating point values, normalised and ranges from -1 to 1. The measurements are classified into two domains, one is **time domain** and the other is **frequency domain**. The variables are:

**activity** activity performed by the subject which includes WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

**subject** identifier which defines the identity of subject who performed the activity, values are for 1 to 30.

**TimeDomainBodyAccelerometerMeanX**, **TimeDomainBodyAccelerometerMeanY**, **TimeDomainBodyAccelerometerMeanZ** average time-domain body acceleration in the X, Y and Z directions.

**TimeDomainBodyAccelerometerStandardDeviationX**, **TimeDomainBodyAccelerometerStandardDeviationY**, **TimeDomainBodyAccelerometerStandardDeviationZ** standard deviation of the time-domain body acceleration in the X, Y and Z directions.

**TimeDomainGravityAccelerometerMeanX**, **TimeDomainGravityAccelerometerMeanY**, **TtimeDomainGravityAccelerometerMeanZ** average time-domain gravity acceleration in the X, Y and Z directions.

**TimeDomainGravityAccelerometerStandardDeviationX**, **TimeDomainGravityAccelerometerStandardDeviationY**, **TimeDomainGravityAccelerometerStandardDeviationZ** standard deviation of the time-domain gravity acceleration in the X, Y and Z directions.

**TimeDomainBodyAccelerometerJerkMeanX**, **TimeDomainBodyAccelerometerJerkMeanY**, **TimeDomainBodyAccelerometerJerkMeanZ** average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions.

**TimeDomainBodyAccelerometerJerkStandardDeviationX**, **TimeDomainBodyAccelerometerJerkStandardDeviationY**, **TimeDomainBodyAccelerometerJerkStandardDeviationZ** standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions.

**TimeDomainBodyGyroscopeMeanX**, **TimeDomainBodyGyroscopeMeanY**, **TimeDomainBodyGyroscopeMeanZ** average time-domain body angular velocity in the X, Y and Z directions.

**TimeDomainBodyGyroscopeStandardDeviationX**, **TimeDomainBodyGyroscopeStandardDeviationY**, **TimeDomainBodyGyroscopeStandardDeviationZ** standard deviation of the time-domain body angular velocity in the X, Y and Z directions.

**TimeDomainBodyGyroscopeJerkMeanX**, **TimeDomainBodyGyroscopeJerkMeanY**, **TimeDomainBodyGyroscopeJerkMeanZ** average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions.

**TimeDomainBodyGyroscopeJerkStandardDeviationX**, **TimeDomainBodyGyroscopeJerkStandardDeviationY**, **TimeDomainBodyGyroscopeJerkStandardDeviationZ** standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions.

**TimeDomainBodyAccelerometerMagnitudeMean**, **TimeDomainBodyAccelerometerMagnitudeStandardDeviation** average and standard deviation of the time-domain magnitude of body acceleration.

**TimeDomainGravityAccelerometerMagnitudeMean**, **TimeDomainGravityAccelerometerMagnitudeStandardDeviation** average and standard deviation of the time-domain magnitude of gravity acceleration.

**TimeDomainBodyAccelerometerJerkMagnitudeMean**, **TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation** average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time).

**TimeDomainBodyGyroscopeMagnitudeMean**, **TimeDomainBodyGyroscopeMagnitudeStandardDeviation** average and standard deviation of the time-domain magnitude of body angular velocity.

**TimeDomainBodyGyroscopeJerkMagnitudeMean**, **TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation** average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time).

**FrequencyDomainBodyAccelerometerMeanX**, **FrequencyDomainBodyAccelerometerMeanY**, **FrequencyDomainBodyAccelerometerMeanZ** average frequency-domain body acceleration in the X, Y and Z directions.

**FrequencyDomainBodyAccelerometerStandardDeviationX**, **FrequencyDomainBodyAccelerometerStandardDeviationY**, **FrequencyDomainBodyAccelerometerStandardDeviationZ** 
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions.


**FrequencyDomainBodyAccelerometerMeanFrequencyX**, **FrequencyDomainBodyAccelerometerMeanFrequencyY**, **FrequencyDomainBodyAccelerometerMeanFrequencyZ** Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions.

**FrequencyDomainBodyAccelerometerJerkMeanX**, **FrequencyDomainBodyAccelerometerJerkMeanY**, **FrequencyDomainBodyAccelerometerJerkMeanZ** average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions.

**FrequencyDomainBodyAccelerometerJerkStandardDeviationX**, **FrequencyDomainBodyAccelerometerJerkStandardDeviationY**, **FrequencyDomainBodyAccelerometerJerkStandardDeviationZ** standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions.

**FrequencyDomainBodyAccelerometerJerkMeanFrequencyX**, **FrequencyDomainBodyAccelerometerJerkMeanFrequencyY**, **FrequencyDomainBodyAccelerometerJerkMeanFrequencyZ** weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions.

**FrequencyDomainBodyGyroscopeMeanX**, **FrequencyDomainBodyGyroscopeMeanY**, **FrequencyDomainBodyGyroscopeMeanZ** average frequency-domain body angular velocity in the X, Y and Z directions.

**FrequencyDomainBodyGyroscopeStandardDeviationX**, **FrequencyDomainBodyGyroscopeStandardDeviationY**, **FrequencyDomainBodyGyroscopeStandardDeviationZ** standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions.

**FrequencyDomainBodyGyroscopeMeanFrequencyX**, **FrequencyDomainBodyGyroscopeMeanFrequencyY**, **FrequencyDomainBodyGyroscopeMeanFrequencyZ** weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions.

**FrequencyDomainBodyAccelerometerMagnitudeMean**, **FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation**, **FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency** average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration.

**FrequencyDomainBodyAccelerometerJerkMagnitudeMean**, **FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation**, **FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency** average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time).

**FrequencyDomainBodyGyroscopeMagnitudeMean**, **FrequencyDomainBodyGyroscopeMagnitudeStandardDeviation**, **FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency** average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity.

**FrequencyDomainBodyGyroscopeJerkMagnitudeMean**, **FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation**, **FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency** average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time).


## Steps to create tidy dataset

1.  Download the dataset in the form of .zip file from [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2.  Unzip the .zip file 
3.  Read the data from training set and test set subject, X and Y files into R
4.  Merge the data tables into one data table
5.  Subset the data of variables which includes mean or standard deviation.
5.  Apply descriptive names to each feature in the dataset.
6.  Calculate the mean and standard deviation on the basis of activity performed be the subject.
7.  Write the dataset to the [tidy_data.txt](https://github.com/farhan-mirzaaa/GettingAndCleaningDataCourseProject/blob/master/tidy_data.txt).
