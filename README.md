---
title: "README"
author: "Javier Iglesia Aparicio"
date: "27 de mayo de 2016"
output: html_document
---
## Getting and Cleaning Data - Week 4

Source dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

*  You should create one R script called run_analysis.R that does the following.
*  Merges the training and the test sets to create one data set.
*  Extracts only the measurements on the mean and standard deviation for each measurement.
*  Uses descriptive activity names to name the activities in the data set
*  Appropriately labels the data set with descriptive activity names.
*  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Notes

*  Only variables containing mean() & std() are used.
*  It doesn't require any additional package
*  Assumes the structure's dataset is unzipped in the current directory.

## Constructed using the following:

platform       i386-w64-mingw32            
arch           i386                        
os             mingw32                     
system         i386, mingw32               
status                                     
major          3                           
minor          3.0                         
year           2016                        
month          05                          
day            03                          
svn rev        70573                       
language       R                           
version.string R version 3.3.0 (2016-05-03)
nickname       Supposedly Educational   


##Yields
tidy_data.txt
