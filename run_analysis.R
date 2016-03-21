# Solution for getting and cleaning data course week 4 assignment


# Load zip archive and unzip it if needed
# load sub directory files into one data frame
loadFiles <- function(url, dir, subDir, ...) {
  resultFrame <- NULL
  destFile <- "data.zip"
  dir <- sprintf("%s/%s", dir, subDir)
  if (!file.exists(dir)) {
    download.file(url, destFile, method="curl")
    unzip(destFile)
  }
  resultFrame <- read.table(sprintf("%s/X_%s.txt", dir, subDir))
  resultFrame <- cbind(resultFrame, read.table(sprintf("%s/subject_%s.txt", dir, subDir)))
  resultFrame <- cbind(resultFrame, read.table(sprintf("%s/y_%s.txt", dir, subDir)))
}

# merge the train and test set
# task 1 in the assignment
mergeSets <- function(url, dir) {
  testData <- loadFiles(url, dir, "test")
  data <- loadFiles(url, dir, "train")
  data <- rbind(data, testData)
}

# fetch column names from file and assign to data frame
# de-duplicate column names, which appear in the raw data more than once
# clean up column names (task 4)
# add colunmn names for test subject and activity id, loaded from separate files
nameColumns <- function(data, dir) {
  titleFrame <- read.table(paste0(dir, "/features.txt"))
  columns <- c(as.character(titleFrame$V2), "subject", "activityid")
  
  for (i in which(duplicated(columns)))      ## de-dupe
    columns[i] <- sprintf("%s_%i", columns[i], i)
  
  columns <- gsub("()", "", columns, fixed = TRUE)  ## get rid of '()'
  columns <- gsub("^t", "", columns)                ## get rid of leading t
  columns <- gsub("(t", "", columns, fixed = TRUE)
  columns <- gsub("^f", "FFT ", columns)
  columns <- gsub("Acc", " Acceleration ", columns)
  columns <- gsub("Gyro", " Gyroscope ", columns)
  
  colnames(data) <- columns
  data
}

# fetch activity names from file
# merge with data frame by activity id
# task 3 in the assignment
nameActivities <- function(data, dir) {
  labelFrame <- read.table(paste0(dir, "/activity_labels.txt"))
  colnames(labelFrame) <- c("activityid", "activityname")
  data <- merge(data, labelFrame, by = "activityid")
}

# extracts only means and standard deviations into a new dataset
# task 2 in the assignment, call allData() first and pass its return value
# as argument
meansDeviations <- function(data) {
  cols <- c(grep("std", names(data)), grep("mean", names(data)))
  data[, cols]
}

# creates a new table by subject and activityname with means of all 
# other attributes
# task 5 in the assignment, call allData() first and pass its return value
# as argument
averages <- function(data) {
  data %>% group_by(subject, activityname) %>% summarise_each(funs(mean))
}

# Creates a data frame with all the assignment data
allData <- function() {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  dir <- "./UCI HAR Dataset"
  
  data <- mergeSets(url, dir)          ## task 1
  data <- nameColumns(data, dir)       ## task 4
  data <- nameActivities(data, dir)    ## task 3
}
