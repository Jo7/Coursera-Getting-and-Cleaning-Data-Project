# Code Book

This code book describes the variables in `tidydata.txt`.

## Source Data
A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## The tidy data set

The `tidydata.txt` created is a data set with the average of each variable for each activity and each subject. 

### Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

### Measurements

* measurements provided are on the mean and standard deviation for each measurement

 [1] "frequencyBodyGyroscopeJerkMagnitudeStdDev"    
 [2] "frequencyBodyGyroscopeJerkMagnitudeMean"      
 [3] "frequencyBodyGyroscopeMagnitudeStdDev"        
 [4] "frequencyBodyGyroscopeMagnitudeMean"          
 [5] "frequencyBodyAccelerometerJerkMagnitudeStdDev"
 [6] "frequencyBodyAccelerometerJerkMagnitudeMean"  
 [7] "frequencyBodyAccelerometerMagnitudeStdDev"    
 [8] "frequencyBodyAccelerometerMagnitudeMean"      
 [9] "frequencyBodyGyroscopeStdDev-Z"               
[10] "frequencyBodyGyroscopeStdDev-Y"               
[11] "frequencyBodyGyroscopeStdDev-X"               
[12] "frequencyBodyGyroscopeMean-Z"                 
[13] "frequencyBodyGyroscopeMean-Y"                 
[14] "frequencyBodyGyroscopeMean-X"                 
[15] "frequencyBodyAccelerometerJerkStdDev-Z"       
[16] "frequencyBodyAccelerometerJerkStdDev-Y"       
[17] "frequencyBodyAccelerometerJerkStdDev-X"       
[18] "frequencyBodyAccelerometerJerkMean-Z"         
[19] "frequencyBodyAccelerometerJerkMean-Y"         
[20] "frequencyBodyAccelerometerJerkMean-X"         
[21] "frequencyBodyAccelerometerStdDev-Z"           
[22] "frequencyBodyAccelerometerStdDev-Y"           
[23] "frequencyBodyAccelerometerStdDev-X"           
[24] "frequencyBodyAccelerometerMean-Z"             
[25] "frequencyBodyAccelerometerMean-Y"             
[26] "frequencyBodyAccelerometerMean-X"             
[27] "timeBodyGyroscopeJerkMagnitudeStdDev"         
[28] "timeBodyGyroscopeJerkMagnitudeMean"           
[29] "timeBodyGyroscopeMagnitudeStdDev"             
[30] "timeBodyGyroscopeMagnitudeMean"               
[31] "timeBodyAccelerometerJerkMagnitudeStdDev"     
[32] "timeBodyAccelerometerJerkMagnitudeMean"       
[33] "timeGravityAccelerometerMagnitudeStdDev"      
[34] "timeGravityAccelerometerMagnitudeMean"        
[35] "timeBodyAccelerometerMagnitudeStdDev"         
[36] "timeBodyAccelerometerMagnitudeMean"           
[37] "timeBodyGyroscopeJerkStdDev-Z"                
[38] "timeBodyGyroscopeJerkStdDev-Y"                
[39] "timeBodyGyroscopeJerkStdDev-X"                
[40] "timeBodyGyroscopeJerkMean-Z"                  
[41] "timeBodyGyroscopeJerkMean-Y"                  
[42] "timeBodyGyroscopeJerkMean-X"                  
[43] "timeBodyGyroscopeStdDev-Z"                    
[44] "timeBodyGyroscopeStdDev-Y"                    
[45] "timeBodyGyroscopeStdDev-X"                    
[46] "timeBodyGyroscopeMean-Z"                      
[47] "timeBodyGyroscopeMean-Y"                      
[48] "timeBodyGyroscopeMean-X"                      
[49] "timeBodyAccelerometerJerkStdDev-Z"            
[50] "timeBodyAccelerometerJerkStdDev-Y"            
[51] "timeBodyAccelerometerJerkStdDev-X"            
[52] "timeBodyAccelerometerJerkMean-Z"              
[53] "timeBodyAccelerometerJerkMean-Y"              
[54] "timeBodyAccelerometerJerkMean-X"              
[55] "timeGravityAccelerometerStdDev-Z"             
[56] "timeGravityAccelerometerStdDev-Y"             
[57] "timeGravityAccelerometerStdDev-X"             
[58] "timeGravityAccelerometerMean-Z"               
[59] "timeGravityAccelerometerMean-Y"               
[60] "timeGravityAccelerometerMean-X"               
[61] "timeBodyAccelerometerStdDev-Z"                
[62] "timeBodyAccelerometerStdDev-Y"                
[63] "timeBodyAccelerometerStdDev-X"                
[64] "timeBodyAccelerometerMean-Z"                  
[65] "timeBodyAccelerometerMean-Y"                  
[66] "timeBodyAccelerometerMean-X" 
