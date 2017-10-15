
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


The variables in the tidy data set are:

**activity**

**subject**

****

