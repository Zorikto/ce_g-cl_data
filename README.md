# ce_g-cl_data
Coursera Getting and cleaning data course project

Author:Zorikto Dabaev

Date: 25/10/2015

Output: tidy_data.txt, run_analysis.R

Project Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
 
Study design and data processing

Collection of the raw data
Using its embedded accelerometer and gyroscope, project captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Notes on the original (raw) data
The dataset is then divided in two parts and they can be used separately.

1. Inertial sensor data 
 - Raw triaxial signals from the accelerometer and gyroscope of all the trials with with participants. 
 - The labels of all the performed activities. 

2. Records of activity windows. Each one composed of: 
 - A 561-feature vector with time and frequency domain variables. 
 - Its associated activity label.
 - An identifier of the subject who carried out the experiment

The following files are available for the train and test data. Their descriptions are equivalent

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Creating the tidy datafile
 - all steps crearly explained in code comments check  run_analysis.R
Description on how to create the tidy data file 
 - all steps crearly explained in code comments check  run_analysis.R
Cleaning of the data
 - all steps crearly explained in code comments check  run_analysis.R

Description of the variables in the tiny_data.txt file
 - check Codebook.md

Sources
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

