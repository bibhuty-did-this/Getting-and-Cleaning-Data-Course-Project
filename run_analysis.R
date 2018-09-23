# Cleaning up the environment
rm(list=ls())

# PLEASE READ `initialAnalysis.R` for more clarification 

### 1. MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET ###
### NOTE: We don't need the data inside the `Insertia Signals` folder as they are already
###       processed and the processed results are stored under `X_train.txt`

# Getting the features #
features<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/features.txt")

# Getting the training data and data about the subjects#
trainingData<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
trainingActivities<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
trainingSubjects<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

# Get the testing data #
testingData<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
testingActivities<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
testingSubjects<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

### 3. USES DESCRIPTIVE NAME TO NAME THE ACTIVITIES OF THE DATASET ###
### 4. APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES ###
names(trainingData)<-features[,2]
names(testingData)<-features[,2]

names(trainingActivities)<-"ActivityLabels"
names(testingActivities)<-"ActivityLabels"

names(trainingSubjects)<-"SubjectNo"
names(testingSubjects)<-"SubjectNo"

# Binding both training and testing data using rbind #
data<-rbind(trainingData,testingData)

### 2. EXTRACT ONLY THE MEASUREMENT ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT ###

# Get the features which either contains `mean`(for mean) or `std`(for standard deviation) word in it
library(dplyr)
library(stringr)
# Also includes the mean of:
# ` additional vectors obtained by averaging the signals in a signal window sample `
data<-data[str_detect(names(data),"[Mm]ean|std")] 
names(data)

# Bind all the data to get a neat and tidy dataset
labels<-rbind(trainingActivities,testingActivities)
subjects<-rbind(trainingSubjects,testingSubjects)
labels_subjects<-cbind(labels,subjects)
data<-cbind(labels_subjects,data)
names(data)
View(Data)

### 5. FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TIDY DATA SET WITH THE ###
### AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT. ### 

summaryData<-data %>%
              group_by(.dots=c("ActivityLabels","SubjectNo")) %>%
              summarize_all(funs(mean))
View(summaryData)

# If you find anything wrong please mention it explicitly, it'd be of great help to me
