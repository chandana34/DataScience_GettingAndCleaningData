# DataScience_GettingAndCleaningData
Coursera programming assignment

=============================================================================
The repository includes the following files:

- 'README.md'
- 'README.txt': shows information all the files present in the repository
- 'activity_labels.txt': lists the different activities to be recognized
- 'features.txt': lists the different features calculated from the sensor data
- 'features_info.txt': shows information about the features calculated
- 'test' - folder containing test data
- 'train' - folder containing train data
- 'run_analysis.R': R function to import the data, analyse and summarize the data, and write the tidied data to "MeanData.txt"
- 'MeanData.txt': file contains the output tidied data from 'run_analysis.R'

=============================================================================

The R program imports both test and training data the workspace. This data is merged along
with subject data and activity information. This data set is filtered to features containing mean and standard deviation of parameters being measured.This data is then tidied by grouping it based on the subject and activity.The mean of each feature per subject per activity is computed and the resultant data is exported to 'MeanData.txt'