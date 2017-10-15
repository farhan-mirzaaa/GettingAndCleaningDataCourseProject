# Getting and Cleaning Data Course Project

Author: **Muhammad Farhan Mirza**

Date:   15 October, 2017.

## Introduction

This repo is for my Coursera "Getting and Cleaning Data Course" project. In this project, raw data downloaded from [Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to create a tidy data set.

This repo contains the four files:

1.  **README.md** contains the repo information
2.  **tidy_data.txt** contains the final output after analysis
3.  **run_analysis.R** is the script file which converts the input data into tidy dataset
4.  **codebook.md** contains the code book for **run_analysis.R** to understand it

## Goal

Goal of this project is to convert a raw data set into tidy data set, for that matter following operations are completed in **run_analysis.R** script.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each     subject.

## Run the script

In order to run the script, download the **run_analysis.R** and put it in your working directory.
In the first line of the script file change **dataDir** and assign your data directory to this variable.
Run this script and **tidy_data.txt** will be generated in the unzipped **UCI HAR Dataset** folder.

