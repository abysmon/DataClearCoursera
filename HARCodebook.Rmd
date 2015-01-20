---
title: "Codebook for Dataset on Human Activity Recognition Using Smartphones"
author: "Kay Dee"
date: "Wednesday, January 14, 2015"
output: html_document
---

### Variable: Activity 

In the **UCI HAR dataset** variable **Activity** is the activity performed by each subject among the total of 6 activities. The variable **Activity** has been coded as following:

+----+--------------------------+
|Code| Activity                 |
+====+==========================+
| 1  | Walking                  |
+----+--------------------------+
| 2  | Climbing up the stairs   |
+----+--------------------------+
| 3  | Climbing down the stairs |
+----+--------------------------+
| 4  | Sitting Up               |
+----+--------------------------+
| 5  | Standing                 |
+----+--------------------------+
| 6  | Laying down              |
+----+--------------------------+


### Variable: Subject
In the **UCI HAR dataset** variable **Subject** is the subject id performing the activity for each window sample. There are total 30 subjects. So **Subject** variable's range is from 1 to 30.


### Variable: Measurement
The features measured are given below:
  
  1.tBodyAcc-XYZ
  2.tGravityAcc-XYZ
  3.tBodyAccJerk-XYZ
  tBodyGyro-XYZ
  tBodyGyroJerk-XYZ
  tBodyAccMag
  tGravityAccMag
  tBodyAccJerkMag
  tBodyGyroMag
  tBodyGyroJerkMag
  fBodyAcc-XYZ
  fBodyAccJerk-XYZ
  fBodyGyro-XYZ
  fBodyAccMag
  fBodyAccJerkMag
  fBodyGyroMag
  fBodyGyroJerkMag

Certain features have been measured in 3 dimensional rthogonal axes, while other features has only magnitude. We've used only the mean and standard deviation measurements in this sumamry. Unless specified, the features are time domain value. Otherwise Fast Fourier Transform (FFT) has been used the get the frequency domain value.

This summarized dataset contains the average value of each feature.