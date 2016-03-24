## Getting and Cleaning Data Course Project - Code Book

### Introduction
Measurements are as in the original Dataset, but with separate files combined into one. The following is derived from `features_info.txt` file in the original data set.

### Feature vectors in full data set
Body Acceleration -XYZ
Gravity Acceleration -XYZ
Body Acceleration Jerk -XYZ
Body Gyroscope -XYZ
Body Gyroscope Jerk -XYZ
Body Acceleration Magnitude 
Gravity Acceleration Magnitude 
Body Acceleration Jerk Magnitude 
Body Gyroscope Magnitude 
Body Gyroscope Jerk Magnitude 
Body Acceleration -XYZ
Body Acceleration Jerk -XYZ
Body Gyroscope -XYZ
Body Acceleration Magnitude 
Body Acceleration Jerk Magnitude 
Body Gyroscope Magnitude 
Body Gyroscope Jerk Magnitude 

### Feature vector variables
mean : Mean value
std : Standard deviation
mad : Median absolute deviation 
max : Largest value in array
min : Smallest value in array
sma : Signal magnitude area
energy : Energy measure. Sum of the squares divided by the number of values. 
iqr : Interquartile range 
entropy : Signal entropy
arCoeff : Autorregresion coefficients with Burg order equal to 4
correlation : correlation coefficient between two signals
maxInds : index of the frequency component with largest magnitude
meanFreq : Weighted average of the frequency components to obtain a mean frequency
skewness : skewness of the frequency domain signal 
kurtosis : kurtosis of the frequency domain signal 
bandsEnergy : Energy of a frequency interval within the 64 bins of the FFT of each window.
angle : Angle between to vectors.

### Reduced data set attributes
Index | Column label | Additional explanation
 | 1 | subject | Test subject identifier
 | 2 | activityname | Name of activity performed, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
 | 3 | Body Acceleration -mean-X | See features and variables explanation above
 | 4 | Body Acceleration -mean-Y | See features and variables explanation above
 | 5 | Body Acceleration -mean-Z | See features and variables explanation above
 | 6 | Body Acceleration -std-X | See features and variables explanation above
 | 7 | Body Acceleration -std-Y | See features and variables explanation above
 | 8 | Body Acceleration -std-Z | See features and variables explanation above
 | 9 | Gravity Acceleration -mean-X | See features and variables explanation above
| 10 | Gravity Acceleration -mean-Y | See features and variables explanation above
| 11 | Gravity Acceleration -mean-Z | See features and variables explanation above
| 12 | Gravity Acceleration -std-X | See features and variables explanation above
| 13 | Gravity Acceleration -std-Y | See features and variables explanation above
| 14 | Gravity Acceleration -std-Z | See features and variables explanation above
| 15 | Body Acceleration Jerk -mean-X | See features and variables explanation above
| 16 | Body Acceleration Jerk -mean-Y | See features and variables explanation above
| 17 | Body Acceleration Jerk -mean-Z | See features and variables explanation above
| 18 | Body Acceleration Jerk -std-X | See features and variables explanation above
| 19 | Body Acceleration Jerk -std-Y | See features and variables explanation above
| 20 | Body Acceleration Jerk -std-Z | See features and variables explanation above
| 21 | Body Gyroscope -mean-X | See features and variables explanation above
| 22 | Body Gyroscope -mean-Y | See features and variables explanation above
| 23 | Body Gyroscope -mean-Z | See features and variables explanation above
| 24 | Body Gyroscope -std-X | See features and variables explanation above
| 25 | Body Gyroscope -std-Y | See features and variables explanation above
| 26 | Body Gyroscope -std-Z | See features and variables explanation above
| 27 | Body Gyroscope Jerk -mean-X | See features and variables explanation above
| 28 | Body Gyroscope Jerk -mean-Y | See features and variables explanation above
| 29 | Body Gyroscope Jerk -mean-Z | See features and variables explanation above
| 30 | Body Gyroscope Jerk -std-X | See features and variables explanation above
| 31 | Body Gyroscope Jerk -std-Y | See features and variables explanation above
| 32 | Body Gyroscope Jerk -std-Z | See features and variables explanation above
| 33 | Body Acceleration Magnitude -mean | See features and variables explanation above
| 34 | Body Acceleration Magnitude -std | See features and variables explanation above
| 35 | Gravity Acceleration Magnitude -mean | See features and variables explanation above
| 36 | Gravity Acceleration Magnitude -std | See features and variables explanation above
| 37 | Body Acceleration Jerk Magnitude -mean | See features and variables explanation above
| 38 | Body Acceleration Jerk Magnitude -std | See features and variables explanation above
| 39 | Body Gyroscope Magnitude -mean | See features and variables explanation above
| 40 | Body Gyroscope Magnitude -std | See features and variables explanation above
| 41 | Body Gyroscope Jerk Magnitude -mean | See features and variables explanation above
| 42 | Body Gyroscope Jerk Magnitude -std | See features and variables explanation above
| 43 | FFT Body Acceleration -mean-X | See features and variables explanation above
| 44 | FFT Body Acceleration -mean-Y | See features and variables explanation above
| 45 | FFT Body Acceleration -mean-Z | See features and variables explanation above
| 46 | FFT Body Acceleration -std-X | See features and variables explanation above
| 47 | FFT Body Acceleration -std-Y | See features and variables explanation above
| 48 | FFT Body Acceleration -std-Z | See features and variables explanation above
| 49 | FFT Body Acceleration -meanFreq-X | See features and variables explanation above
| 50 | FFT Body Acceleration -meanFreq-Y | See features and variables explanation above
| 51 | FFT Body Acceleration -meanFreq-Z | See features and variables explanation above
| 52 | FFT Body Acceleration Jerk -mean-X | See features and variables explanation above
| 53 | FFT Body Acceleration Jerk -mean-Y | See features and variables explanation above
| 54 | FFT Body Acceleration Jerk -mean-Z | See features and variables explanation above
| 55 | FFT Body Acceleration Jerk -std-X | See features and variables explanation above
| 56 | FFT Body Acceleration Jerk -std-Y | See features and variables explanation above
| 57 | FFT Body Acceleration Jerk -std-Z | See features and variables explanation above
| 58 | FFT Body Acceleration Jerk -meanFreq-X | See features and variables explanation above
| 59 | FFT Body Acceleration Jerk -meanFreq-Y | See features and variables explanation above
| 60 | FFT Body Acceleration Jerk -meanFreq-Z | See features and variables explanation above
| 61 | FFT Body Gyroscope -mean-X | See features and variables explanation above
| 62 | FFT Body Gyroscope -mean-Y | See features and variables explanation above
| 63 | FFT Body Gyroscope -mean-Z | See features and variables explanation above
| 64 | FFT Body Gyroscope -std-X | See features and variables explanation above
| 65 | FFT Body Gyroscope -std-Y | See features and variables explanation above
| 66 | FFT Body Gyroscope -std-Z | See features and variables explanation above
| 67 | FFT Body Gyroscope -meanFreq-X | See features and variables explanation above
| 68 | FFT Body Gyroscope -meanFreq-Y | See features and variables explanation above
| 69 | FFT Body Gyroscope -meanFreq-Z | See features and variables explanation above
| 70 | FFT Body Acceleration Magnitude -mean | See features and variables explanation above
| 71 | FFT Body Acceleration Magnitude -std | See features and variables explanation above
| 72 | FFT Body Acceleration Magnitude -meanFreq | See features and variables explanation above
| 73 | FFT BodyBody Acceleration Jerk Magnitude -mean | See features and variables explanation above
| 74 | FFT BodyBody Acceleration Jerk Magnitude -std | See features and variables explanation above
| 75 | FFT BodyBody Acceleration Jerk Magnitude -meanFreq |
| 76 | FFT BodyBody Gyroscope Magnitude -mean | See features and variables explanation above
| 77 | FFT BodyBody Gyroscope Magnitude -std | See features and variables explanation above
| 78 | FFT BodyBody Gyroscope Magnitude -meanFreq | See features and variables explanation above
| 79 | FFT BodyBody Gyroscope Jerk Magnitude -mean | See features and variables explanation above
| 80 | FFT BodyBody Gyroscope Jerk Magnitude -std | See features and variables explanation above
| 81 | FFT BodyBody Gyroscope Jerk Magnitude -meanFreq | See features and variables explanation above

### Column name modifications
The postfix acronyms are identical to those in the original dataset. The following replacements were made:

Leading 't' removed.
Leading 'f' replaced with 'FFT'.
'()' replaced with empty string.
'Acc' replaced with 'Acceleration'.
'Gyro' replaced with 'Gyroscope'.
'Mag' replaced with 'Magnitude'