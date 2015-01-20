---
title: "Read Me"
author: "Kay Dee"
date: "Wednesday, January 14, 2015"
output: html_document
---

Human Activity Recognition Using Smartphones Dataset
-----
  - Version 1.0
  - activityrecognition@smartlab.ws
-----

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Climbing upstars, Climbing downstars, Sitting up, Standing, Laying down) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity was captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals **Acceleration along X/Y/Z axis** and **Angular Velocity along X/Y/Z axis**. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**Body Acceleration along X/Y/Z axis** and **Gravity Acceleration along X/Y/Z axis**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**Body Acceleration Jerk along X/Y/Z axis** and **Body Angular Velocity Jerk along X/Y/Z axis**). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (**Body Acceleration Magnitude**, **Gravity Acceleration Magnitude**, **Body Acceleration Jerk Magnitude**, **Body Angular Velocity Magnitude**, **Body Angular Velocity Jerk Magnitude**). 

Then a Fast Fourier Transform (FFT) was applied to some of these signals producing **FFT of Body Acceleration along X/Y/Z axis**, **FFT of Body Acceleration Jerk along X/Y/Z axis**, **FFT of Body Angular Velocity along X/Y/Z axis**, **FFT of Body Acceleration Jerk Magnitude**, **FFT of Body Angular Velocity Magnitude**, **FFT of Body Angular Velocity Jerk Magnitude**.

**Additionally all the features have been normalized and bounded within [-1,1]**.

**This gave rise to the UCI HAR dataset**.

Post processing of HAR dataset to extract a **tidy** subset
-----
  1. Training and the test sets were merged to create single data set
  2. Only the measurements on the mean and standard deviation for each feature were extracted
  3. Activities were given descriptive names
  4. Features were given descriptive names
  5. From the data set in step 4 another independent **tidy dataset** were created
  6. Each row of had **average of** each **Feature** for each **Activity** and each **Subject**

The dataset includes the following files
-----

- 'Codebook.md' 	: Codebook explaining the codes used in the summarized dataset
- 'ReadMe.md'   	: This dcument explaining the background of the dataset
- 'run_analysis.R' 	: R script for generating tidyHAR.txt from **UCI HAR dataset**
- 'tidyHAR.txt' 	: The summarized data containing a subset of **UCI HAR dataset**
