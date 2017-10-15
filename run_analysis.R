dataDir <- "../../Data Directory"                       #my local directory where I use to store all the data
dataSetName <- "UCI HAR Dataset"                        #this is the main folder name after unzipping the zip file
zipFileName <- paste( dataSetName, ".zip", sep = "")    #file name to store in data directory from url
zipFileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                                                        #this is the link from where I'll download Human Activity dataset
zipFilePath <- file.path(dataDir, zipFileName)          #complete file path
dataSetDir <- file.path(dataDir, dataSetName)           #complete path to my unzipped data folder

tidyDataFilePath <- file.path( dataSetDir, "tidy_data.txt")     #directory path to the final tidy dataset file with name

if( !file.exists(zipFilePath) )                         #if zip file not downloaded then first download it 
{
        download.file(zipFileUrl, zipFilePath, mode = "wb")
}

if( !dir.exists(dataSetDir) )                           #if data is not unzipped then unzip it first
{
        unzip(zipFilePath, exdir = dataDir)
}

testDataDir <- file.path(dataSetDir, "test")            #test data directory path
trainDataDir <- file.path(dataSetDir, "train")          #training data directory path

#read data into R from data directory to process it into tidy data

features <- read.table( file.path(dataSetDir, "features.txt"), as.is = TRUE )   #read features with out factors 
activities <- read.table( file.path(dataSetDir, "activity_labels.txt"))         #read activites of human

#read training data 
trainSubjects <- read.table( file.path(trainDataDir, "subject_train.txt") )
trainX <- read.table( file.path(trainDataDir, "X_train.txt") )
trainY <- read.table( file.path(trainDataDir, "y_train.txt") )

#read test data
testSubjects <- read.table( file.path(testDataDir, "subject_test.txt") )
testX <- read.table( file.path(testDataDir, "X_test.txt") )
testY <- read.table( file.path(testDataDir, "y_test.txt") )

# ------------------------- 1.   merge all the data into one dataset

#in the given data set subject file contains human identifier, X file contains values for all features named in 
#features file and Y file contains the activity data, so we have to merge them all into single data set

humanActivityDataSet <- rbind ( cbind( trainSubjects, trainY, trainX ), cbind( testSubjects, testY, testX ) )

#now data is merged into one dataset, assign them column names 
#subject data have only one column so we are giving it subject name, similarly activity has one column so
#we are assigning it activity name and varaiables for X data has multiple columns and its names are in features 
#vector's second column so we are assigning it accordingly
colnames(humanActivityDataSet) <- c("subject", "activity", features[,2] )

# ------------------------- 2.  Extract only the measurements on the mean and standard deviation for each measurement

#using grepl function which matches the pattern in the vector, in order to extract all the columns
#which contains the measurements of mean and standard deviation
cols <- grepl("subject|activity|mean|std", colnames(humanActivityDataSet))
humanActivityDataSet <- humanActivityDataSet[,cols]             #still a huge dataset with 81 columns :(

# ------------------------- 3. Use descriptive activity names to name the activities in the data set

#we have loaded activites levels from activity_Label.txt, now label the activity column on the basis of it
#so one can easily understand while looking at the descriptive activity
humanActivityDataSet$activity <- factor( humanActivityDataSet$activity, levels = activities[,1], labels = activities[,2] )

# ------------------------- 4.  Appropriately label the data set with descriptive variable names

newcolsnames <- colnames( humanActivityDataSet )

#we know that gsub function replaces the pattern in string for each successful match
#I'll use gsub function to rename the variables to understand them easily

newcolsnames <- gsub("^f", "FrequencyDomain", newcolsnames)     #f means frequency domain
newcolsnames <- gsub("^t", "TimeDomain", newcolsnames)          #t means frequency domain
newcolsnames <- gsub("Acc", "Accelerometer", newcolsnames)
newcolsnames <- gsub("Gyro", "Gyroscope", newcolsnames)
newcolsnames <- gsub("Mag", "Magnitude", newcolsnames)
newcolsnames <- gsub("Freq", "Frequency", newcolsnames)
newcolsnames <- gsub("mean", "Mean", newcolsnames)
newcolsnames <- gsub("std", "StandardDeviation", newcolsnames)

#still there are some characters like "-", "(", ")", so we have to remove them also
#since these are special characters
newcolsnames <- gsub("[\\(\\)-]", "", newcolsnames)

#there are some columns which includes BodyBody
newcolsnames <- gsub("BodyBody", "Body", newcolsnames)

colnames( humanActivityDataSet ) <- newcolsnames

# ------------------------- 5.  From the data set in step 4, create a second, independent tidy dataset
#                               with the average of each variable for each activity and each subject
library(dplyr)                  #loading dplyr package for summarise_all function

meansDataSet <- summarize_all( group_by( humanActivityDataSet, activity, subject ), mean )

#write the tidy_data.txt file
write.table(meansDataSet, tidyDataFilePath)

