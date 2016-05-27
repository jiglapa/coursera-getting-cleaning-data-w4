#
# Analysing data for Getting and Cleaning Data Course - Week 4
#
# Author: Javier Iglesia Aparicio
#

run_analysis <- function(){
    
    #Check if we have already downloaded the data
    if (!dir.exists(datadir)){
      
      # Download the file
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileUrl,destfile="accelerometers.zip")
      # Uncompress the file and then remove de Zip file
      if(unzip("accelerometers.zip")){
        file.remove("accelerometers.zip")
      }
      
    } 
  
    datadir <- "./UCI HAR Dataset"
   
    #Main files
    features <- paste0(datadir,"/features.txt")
    activity_labels <- paste0(datadir, "/activity_labels.txt")
    
    # Test files
    subject_test <- paste0(datadir,"/test/subject_test.txt")
    x_test <- paste0(datadir,"/test/X_test.txt")
    y_test <- paste0(datadir, "/test/y_test.txt")
    
    
    # Train files
    subject_train <- paste0(datadir,"/train/subject_train.txt")
    x_train <- paste0(datadir,"/train/X_train.txt")
    y_train <- paste0(datadir, "/train/y_train.txt")
    
    
  
  # Extract feautures names
  message("Reading features")
  features_data <- read.table(features)
  features_data <- features_data[,2]
  
  #Extract activities names
  message("Reading activities")
  activity_labels_data <- read.table(activity_labels)
  
  #
  # First we merge the data from test files
  #  - subject_test.txt ideintifies de number of the person
  #  - X_test.txt accelerometers metrics for each person (a 128 elements vector for each register)
  #  - Y_test training labels (1 column with a level for each activity)
  # We can merge them in a one data frame subject, sensor_signals (a vector obtained from features file), activity
  
  message("Processing test data files")
  subject_test_data <- read.table(subject_test, col.names = "Subject")
  x_test_data <- read.table(x_test)
  # Appropiate columns names
  names(x_test_data) <- features_data
  # Extracts only the measurements on the mean and standard deviation for each measurement. 
  x_test_data <- x_test_data[,grep("(mean|std)\\(\\)", colnames(x_test_data))]
  
  y_test_data <- read.table(y_test, col.names = "Activity")
  
  test_data <- cbind(subject_test_data, y_test_data, x_test_data)
  
  #
  # Next we merge the data from train files
  #  - subject_train.txt ideintifies de number of the person
  #  - X_train.txt accelerometers metrics for each person (a 128 elements vector for each register)
  #  - Y_train training labels (1 column with a level for each activity)
  # We can merge them in a one data frame subject, sensor_signals, activity
  
  message("Processing train data files")
  subject_train_data <- read.table(subject_train, col.names = "Subject")
  x_train_data <- read.table(x_train)
  names(x_train_data) <- features_data
  # Extracts only the measurements on the mean and standard deviation for each measurement. 
  x_train_data <- x_train_data[,grep("(mean|std)\\(\\)", colnames(x_train_data))]
 
  y_train_data <- read.table(y_train, col.names = "Activity")
  
  
  train_data <- cbind(subject_train_data, y_train_data, x_train_data)
  
  #
  # Creating an only one dataset for test and train data
  #
  message("Merging data")
  final_data <- rbind(test_data, train_data)
  
  # Change activity numerical levels for labels
  final_data$Activity <- factor(final_data$Activity, labels=activity_labels_data$V2)
  
  #
  # Create another independent tydy dataset with the average of each variable for each activity and each subject
  #
  
  message("Creating another data set in tidy_data.txt")
  another_tidy_data <- aggregate(final_data[, 3:ncol(final_data)], by=list(Subject = final_data$Subject, Activity = final_data$Activity),mean)
 
  write.table(another_tidy_data, "tidy_data.txt", row.name=FALSE)
  
  message("Analysis finished")
  
}
    
