## Human Activity Recognition Using Smartphones Dataset

__Version 1.1__
__Anand BN (anand.bn@gmail.com)__

### SUMMARY

This data set contains the average of means and standard devision measurements of training and test data that was derived from Human Activity recognition experiment conducted by Smartlab - Non Linear Complex Systems Laboratory. The data set contains the following files

1. tidy_data_mean_std_by_subject_activity.txt : This tidy data file that has the average of mean/std() variables summarized by activity and the subject
2. features.txt : List of variables that are included in this data set
3. features_info.txt : How the data was collected and transformed to produce the data in the above data file
4. features_orig.txt : The original list of 561 features that was in the original data 
5. activity_labels.txt : A mapping of the numerical value for the activity and it's short description

The data included in this data set was derived from data published by "Smartlab - Non Linear Complex Systems Laboratory
". For more information about the original data set and measurements please visit http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions
 
Details of the data, measurements, transformations are included in Codebook.md

### License:

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

#### Acknowledgement:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Anand BN, April 2017.


### ATTRIBUTION to the original author(s) from where this data was derived 

An excerpt from the original code-book is below. Visit https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip for an original data set and code book. 

Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

