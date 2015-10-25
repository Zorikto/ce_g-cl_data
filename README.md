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
- An identifier of the subject who carried out the experiment.
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features. 
- 'activity_labels.txt': Links the activity ID with their activity name. 


Creating the tidy datafile

Guide to create the tidy data file

Description on how to create the tidy data file (1. download the data, ...)/

Cleaning of the data

Short, high-level description of what the cleaning script does. link to the readme document that describes the code in greater detail

Description of the variables in the tiny_data.txt file

General description of the file including:

Dimensions of the dataset
Summary of the data
Variables present in the dataset
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

Variable 1 (repeat this section for all variables in the dataset)

Short description of what the variable describes.

Some information on the variable including:

Class of the variable
Unique values/levels of the variable
Unit of measurement (if no unit of measurement list this as well)
In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels).
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

Notes on variable 1:

If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

Sources

Sources you used if any, otherise leave out.

Annex

If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
