# Create the new directory for the project
# Either download the dataset to this directory or moved the downloaded dataset here
# Extract the dataset file 
# Set the current directory to the newly created directory
# Open `README.txt` and read it thoroughly
# Open `features_info.txt` and read it properly
#   NOTE: Apart form mean() & std() we also have addditional stuffs like `gravityMean` etc.
# Open `features.txt` and note that there are 561 features
#   NOTE: From here you can assume that our data set must contains 561 columns
# Open `activity_lables.txt` and see the labels
#   NOTE: The labels can only take values 1-6

# Move to train folder #
# Load the database `subject_train.txt` 
subject_train<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
head(subject_train) # Have a look onto that data
unique(subject_train$V1) # Here you can see which subjects are selected for training data

# Load the database `X_train.txt`
X_train<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
head(X_train) # You'll see something horrible, don't panic
dim(X_train) # Note that there are 561 cols, equivalent to no of features(it may be of use)

# Load the database `y_train.txt`
y_train<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
head(y_train) # Have a look into the data
unique(y_train$V1) # You can see that there are only 6 labels for the activity as expected

# Move to Inertial Signals
# Put the names of all the data files into a vector
fileNames<-list.files("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals")
fileNames
# Have a look on dimensions of file names and you'll come to know that the files although
# contains the same no of rows as `X_train.txt` but they have 128 cols each. Which is simple
# for the analysis that we don't need data inside Inertial Signal folder
for(path in fileNames){
  print(path)
  print(dim(read.table(paste("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/",path,sep=""))))
}


# Move to test folder #
# Load the database `subject_test.txt` 
subject_test<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
head(subject_test) # Have a look onto that data
unique(subject_test$V1) # Here you can see which subjects are selected for testing data

# Load the database `X_test.txt`
X_test<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
head(X_test) # You'll see something horrible, don't panic
dim(X_test) # Note that there are 561 cols, equivalent to no of features(it may be of use)

# Load the database `y_test.txt`
y_test<-read.table("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
head(y_test) # Have a look into the data
unique(y_test$V1) # You can see that there are only 6 labels for the activity as expected

# Move to Inertial Signals
# Put the names of all the data files into a vector
fileNames<-list.files("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals")
fileNames
# Have a look on dimensions of file names and you'll come to know that the files although
# contains the same no of rows as `X_test.txt` but they have 128 cols each. Which is simple
# for the analysis that we don't need data inside Inertial Signal folder
for(path in fileNames){
  print(path)
  print(dim(read.table(paste("./getdataprojectfilesUCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/",path,sep=""))))
}
