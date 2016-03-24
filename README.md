## Getting and Cleaning Data Course Project

### Introduction
The analysis script in this repository is intended for the dataset found in 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Download Link for the datafile
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### run_analysis.R script
The one script file contains all the code for the assignment. The actual script portion is only a few lines of code, while the functionality is in functions.

```
> allMeasureData <- allData()
```
The `allData()` method returns a data frame with activitynames, both "test" and "train" data, more readable column names, and de-duping of non-unique column titles. Hence it implements solutions for assignment tasks 1, 3, and 4.

```
> meansStdData <- meansDeviations(allMeasureData)
```
The `meansDeviations()` method implements task 2, which can be verified by calling `names()` with its return value.

```
> finalData <- averages(meansStdData)
```
The `averages()` method returns a data frame, which calculates means of all other other attributes for every subject and activityname combination (Task 5). Note that you can also call this method with `allMeasureData`, i.e. the full set of measurements. The assignment wasn't super clear in my opinion on which was intended.