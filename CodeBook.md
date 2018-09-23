Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br />

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
<br />
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ <br />
tGravityAcc-XYZ<br />
tBodyAccJerk-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk-XYZ<br />
tBodyAccMag<br />
tGravityAccMag<br />
tBodyAccJerkMag<br />
tBodyGyroMag<br />
tBodyGyroJerkMag<br />
fBodyAcc-XYZ<br />
fBodyAccJerk-XYZ<br />
fBodyGyro-XYZ<br />
fBodyAccMag<br />
fBodyAccJerkMag<br />
fBodyGyroMag<br />
fBodyGyroJerkMag<br />

The set of variables that were estimated from these signals are: 

mean(): Mean value<br />
std(): Standard deviation<br />

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean<br />
tBodyAccMean<br />
tBodyAccJerkMean<br />
tBodyGyroMean<br />
tBodyGyroJerkMean<br />

Complete list of variables:
=================
ActivityLabels<br />
SubjectNo<br />
tBodyAcc-mean()-X<br />
tBodyAcc-mean()-Y<br />
tBodyAcc-mean()-Z<br />
tBodyAcc-std()-X<br />
tBodyAcc-std()-Y<br />
tBodyAcc-std()-Z<br />
tGravityAcc-mean()-X<br />
tGravityAcc-mean()-Y<br />
tGravityAcc-mean()-Z<br />
tGravityAcc-std()-X<br />
tGravityAcc-std()-Y<br />
tGravityAcc-std()-Z<br />
tBodyAccJerk-mean()-X<br />
tBodyAccJerk-mean()-Y<br />
tBodyAccJerk-mean()-Z<br />
tBodyAccJerk-std()-X<br />
tBodyAccJerk-std()-Y<br />
tBodyAccJerk-std()-Z<br />
tBodyGyro-mean()-X<br />
tBodyGyro-mean()-Y<br />
tBodyGyro-mean()-Z<br />
tBodyGyro-std()-X<br />
tBodyGyro-std()-Y<br />
tBodyGyro-std()-Z<br />
tBodyGyroJerk-mean()-X<br />
tBodyGyroJerk-mean()-Y<br />
tBodyGyroJerk-mean()-Z<br />
tBodyGyroJerk-std()-X<br />
tBodyGyroJerk-std()-Y<br />
tBodyGyroJerk-std()-Z<br />
tBodyAccMag-mean()<br />
tBodyAccMag-std()<br />
tGravityAccMag-mean()<br />
tGravityAccMag-std()<br />
tBodyAccJerkMag-mean()<br />
tBodyAccJerkMag-std()<br />
tBodyGyroMag-mean()<br />
tBodyGyroMag-std()<br />
tBodyGyroJerkMag-mean()<br />
tBodyGyroJerkMag-std()<br />
fBodyAcc-mean()-X<br />
fBodyAcc-mean()-Y<br />
fBodyAcc-mean()-Z<br />
fBodyAcc-std()-X<br />
fBodyAcc-std()-Y<br />
fBodyAcc-std()-Z<br />
fBodyAcc-meanFreq()-X<br />
fBodyAcc-meanFreq()-Y<br />
fBodyAcc-meanFreq()-Z<br />
fBodyAccJerk-mean()-X<br />
fBodyAccJerk-mean()-Y<br />
fBodyAccJerk-mean()-Z<br />
fBodyAccJerk-std()-X<br />
fBodyAccJerk-std()-Y<br />
fBodyAccJerk-std()-Z<br />
fBodyAccJerk-meanFreq()-X<br />
fBodyAccJerk-meanFreq()-Y<br />
fBodyAccJerk-meanFreq()-Z<br />
fBodyGyro-mean()-X<br />
fBodyGyro-mean()-Y<br />
fBodyGyro-mean()-Z<br />
fBodyGyro-std()-X<br />
fBodyGyro-std()-Y<br />
fBodyGyro-std()-Z<br />
fBodyGyro-meanFreq()-X<br />
fBodyGyro-meanFreq()-Y<br />
fBodyGyro-meanFreq()-Z<br />
fBodyAccMag-mean()<br />
fBodyAccMag-std()<br />
fBodyAccMag-meanFreq()<br />
fBodyBodyAccJerkMag-mean()<br />
fBodyBodyAccJerkMag-std()<br />
fBodyBodyAccJerkMag-meanFreq()<br />
fBodyBodyGyroMag-mean()<br />
fBodyBodyGyroMag-std()<br />
fBodyBodyGyroMag-meanFreq()<br />
fBodyBodyGyroJerkMag-mean()<br />
fBodyBodyGyroJerkMag-std()<br />
fBodyBodyGyroJerkMag-meanFreq()<br />
angle(tBodyAccMean,gravity)<br />
angle(tBodyAccJerkMean),gravityMean)<br />
angle(tBodyGyroMean,gravityMean)<br />
angle(tBodyGyroJerkMean,gravityMean)<br />
angle(X,gravityMean)<br />
angle(Y,gravityMean)<br />
angle(Z,gravityMean)<br />
