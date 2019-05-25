### Data Set Information
The experiments were carried out among 30 volunteer participants between the ages of 19-48 years. The participants wore a Samsung Galaxy S2 and were required to complete 6 different tasks (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The accelerometer and gyroscope in the phone were able to capture triaxial linear acceleration and triaxial angular velocity at a constant rate of 50Hz. 

The signals from the accelerometer and gyroscope were pre-processed through noise filters and then sampled in sliding windows of 2.56 sec and 50% overlap. The sensor acceleration signal (which comprises of gravitational and body motion) was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to only have low frequency components (a 0.3 Hz cutoff frequency filter was used). For each sliding window, a vector of features was calculated using time and frequency measurements.

The dataset has been randomly partitioned into a training and test set, where 70% of the participants were allocated into the training set and the remaining 30% into the test data.

### Attribute Information
Each record in the dataset has the following attributes:

* Triaxial acceleration from the accelerometer (total acceleration) and estimated body acceleration.
* Triaxial angular velocity from the gyroscope.
* A 561-feature vector with time and frequency variables.
* Activity labels.
* A participant identifier.
