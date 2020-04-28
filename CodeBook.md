Background:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Data:
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- Features are normalized and bounded within [-1,1].

- Each feature vector is a row on the text file.

Variables:
- activity: The activity that was performed

- subject: Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- total_acc_x_train: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the total_acc_x_train and total_acc_z_train variables for the Y and Z axis.

- body_acc_x_train: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- body_gyro_x_train: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Transformations:
Within the UCI HAR Dataset, there was training data and test data. The file X_test.txt contained the data for each subject and activity in the test group, and X_train.txt contained the data for each subject and activity in the training group. The files Y_test.txt and Y_train.txt contained the activity labels for each row of the test and training groups respectively. The files subject_test.txt and subject_train.txt contained information on which subject each row in the data corresponded to.

The files mentioned above were concatenated into one data table containing data, activity labels, and subjects for both the test and training groups. 

Using The file features.txt, the column names of the original concatenated data table were replaced by variable names from features.txt, in addition to two columns named "activity" and "subject".

Then the variables containing the mean and standard deviation of different measurements were extracted from the data table.

By using the activity_labels.txt file, the original integer values of the column "activity" were replaced by descriptive character values indicating exactly which activity was performed. 

After each of these analyses were performed, a new data table was created that shows the average of each variable grouped by activity and subject. 



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012