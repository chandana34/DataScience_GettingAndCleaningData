Data Science
Getting and Cleaning Data
Author : Nivarthi Chandana Priya


VARIABLES

- features: contains the list of features, imported from "features.txt"
- activities: contains the list of activities, imported from "activity_labels.txt" 
- xtest: contains test data, imported from "X_test.txt", "y_test.txt" and "subject_test.txt"
- xtrain: contains training data, imported from "X_train.txt", "y_train.txt" and "subject_train.txt"
- x: stores merged training and testing data
- meandata: stores the tidied data


DATA

- features.txt : contains the list of features used for activity recognition
- activity_labels.txt : contains the list of activities to be recognized based on features calculated
- test/X_test.txt : contains the test data for which features are calculated at different time instances
- test/y_test.txt : contains the recognized activity for each time instance of the test data based on the different features
- test/subject_test.txt : contains the list of subjects performing the activity for the test data at given time instance
- train/X_train.txt : contains the training data for which features are calculated at different time instances
- train/y_train.txt : contains the recognized activity for each time instance of the training data based on the different features
- train/subject_train.txt : contains the list of subjects performing the activity for the training data at given time instance

TRANSFORMATIONS

- the test data and train data are row binded to form a complete data set
- the columns containing information of mean and std of features are selected and all other columns are filtered out
- the activity column is labelled using proper names
- the filtered data set is tidied by grouping it based on Subject and Activity, and mean of each group is calculated
- tidied data is written to an external text file
