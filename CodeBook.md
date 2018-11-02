Hi, thanks for reviewing my files :) In this codebook I'll try to describe variables that make up the final table.

1) The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

2) The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. The final dataset consists both of training and test data, representing the tidied version of the two. 

3) The dataset begins with the two variables:
- activity = 6 levels of activity (laying, sitting, standing, walking, walking_upstairs, walking_downstairs)
- participant = participant number

4) Directions of movement are denoted with the ending "XYZ", denoting signals in X, Y, and Z directions, respectively

5) Data columns contain averages of means (ending _Mean_) and standard deviations (_Standard_Deviation_)

6) How the data were collected is denoted by specific interfixes (accelerometer or gyroscope)

7) Domain denotes the type of collected data (FFT transformation ws conducted on the data with "Frequency_Domain_" prefixes; all of the data were previously standardized and set to range from -1 to 1)

8) Complete list of variables in the data frame:
 [1] "activity"                                                    
 [2] "participant"                                                 
 [3] "Time_Domain_BodyAccelerometer_Mean_X"                        
 [4] "Time_Domain_BodyAccelerometer_Mean_Y"                        
 [5] "Time_Domain_BodyAccelerometer_Mean_Z"                        
 [6] "Time_Domain_BodyAccelerometer_Standard_Deviation_X"          
 [7] "Time_Domain_BodyAccelerometer_Standard_Deviation_Y"          
 [8] "Time_Domain_BodyAccelerometer_Standard_Deviation_Z"          
 [9] "Time_Domain_GravityAccelerometer_Mean_X"                     
[10] "Time_Domain_GravityAccelerometer_Mean_Y"                     
[11] "Time_Domain_GravityAccelerometer_Mean_Z"                     
[12] "Time_Domain_GravityAccelerometer_Standard_Deviation_X"       
[13] "Time_Domain_GravityAccelerometer_Standard_Deviation_Y"       
[14] "Time_Domain_GravityAccelerometer_Standard_Deviation_Z"       
[15] "Time_Domain_BodyAccelerometerJerk_Mean_X"                    
[16] "Time_Domain_BodyAccelerometerJerk_Mean_Y"                    
[17] "Time_Domain_BodyAccelerometerJerk_Mean_Z"                    
[18] "Time_Domain_BodyAccelerometerJerk_Standard_Deviation_X"      
[19] "Time_Domain_BodyAccelerometerJerk_Standard_Deviation_Y"      
[20] "Time_Domain_BodyAccelerometerJerk_Standard_Deviation_Z"      
[21] "Time_Domain_BodyGyroscope_Mean_X"                            
[22] "Time_Domain_BodyGyroscope_Mean_Y"                            
[23] "Time_Domain_BodyGyroscope_Mean_Z"                            
[24] "Time_Domain_BodyGyroscope_Standard_Deviation_X"              
[25] "Time_Domain_BodyGyroscope_Standard_Deviation_Y"              
[26] "Time_Domain_BodyGyroscope_Standard_Deviation_Z"              
[27] "Time_Domain_BodyGyroscopeJerk_Mean_X"                        
[28] "Time_Domain_BodyGyroscopeJerk_Mean_Y"                        
[29] "Time_Domain_BodyGyroscopeJerk_Mean_Z"                        
[30] "Time_Domain_BodyGyroscopeJerk_Standard_Deviation_X"          
[31] "Time_Domain_BodyGyroscopeJerk_Standard_Deviation_Y"          
[32] "Time_Domain_BodyGyroscopeJerk_Standard_Deviation_Z"          
[33] "Time_Domain_BodyAccelerometerMagnitude_mean"                 
[34] "Time_Domain_BodyAccelerometerMagnitude_std"                  
[35] "Time_Domain_GravityAccelerometerMagnitude_mean"              
[36] "Time_Domain_GravityAccelerometerMagnitude_std"               
[37] "Time_Domain_BodyAccelerometerJerkMagnitude_mean"             
[38] "Time_Domain_BodyAccelerometerJerkMagnitude_std"              
[39] "Time_Domain_BodyGyroscopeMagnitude_mean"                     
[40] "Time_Domain_BodyGyroscopeMagnitude_std"                      
[41] "Time_Domain_BodyGyroscopeJerkMagnitude_mean"                 
[42] "Time_Domain_BodyGyroscopeJerkMagnitude_std"                  
[43] "Frequency_Domain_BodyAccelerometer_Mean_X"                   
[44] "Frequency_Domain_BodyAccelerometer_Mean_Y"                   
[45] "Frequency_Domain_BodyAccelerometer_Mean_Z"                   
[46] "Frequency_Domain_BodyAccelerometer_Standard_Deviation_X"     
[47] "Frequency_Domain_BodyAccelerometer_Standard_Deviation_Y"     
[48] "Frequency_Domain_BodyAccelerometer_Standard_Deviation_Z"     
[49] "Frequency_Domain_BodyAccelerometer_meanFreq_X"               
[50] "Frequency_Domain_BodyAccelerometer_meanFreq_Y"               
[51] "Frequency_Domain_BodyAccelerometer_meanFreq_Z"               
[52] "Frequency_Domain_BodyAccelerometerJerk_Mean_X"               
[53] "Frequency_Domain_BodyAccelerometerJerk_Mean_Y"               
[54] "Frequency_Domain_BodyAccelerometerJerk_Mean_Z"               
[55] "Frequency_Domain_BodyAccelerometerJerk_Standard_Deviation_X" 
[56] "Frequency_Domain_BodyAccelerometerJerk_Standard_Deviation_Y" 
[57] "Frequency_Domain_BodyAccelerometerJerk_Standard_Deviation_Z" 
[58] "Frequency_Domain_BodyAccelerometerJerk_meanFreq_X"           
[59] "Frequency_Domain_BodyAccelerometerJerk_meanFreq_Y"           
[60] "Frequency_Domain_BodyAccelerometerJerk_meanFreq_Z"           
[61] "Frequency_Domain_BodyGyroscope_Mean_X"                       
[62] "Frequency_Domain_BodyGyroscope_Mean_Y"                       
[63] "Frequency_Domain_BodyGyroscope_Mean_Z"                       
[64] "Frequency_Domain_BodyGyroscope_Standard_Deviation_X"         
[65] "Frequency_Domain_BodyGyroscope_Standard_Deviation_Y"         
[66] "Frequency_Domain_BodyGyroscope_Standard_Deviation_Z"         
[67] "Frequency_Domain_BodyGyroscope_meanFreq_X"                   
[68] "Frequency_Domain_BodyGyroscope_meanFreq_Y"                   
[69] "Frequency_Domain_BodyGyroscope_meanFreq_Z"                   
[70] "Frequency_Domain_BodyAccelerometerMagnitude_mean"            
[71] "Frequency_Domain_BodyAccelerometerMagnitude_std"             
[72] "Frequency_Domain_BodyAccelerometerMagnitude_meanFreq"        
[73] "Frequency_Domain_BodyBodyAccelerometerJerkMagnitude_mean"    
[74] "Frequency_Domain_BodyBodyAccelerometerJerkMagnitude_std"     
[75] "Frequency_Domain_BodyBodyAccelerometerJerkMagnitude_meanFreq"
[76] "Frequency_Domain_BodyBodyGyroscopeMagnitude_mean"            
[77] "Frequency_Domain_BodyBodyGyroscopeMagnitude_std"             
[78] "Frequency_Domain_BodyBodyGyroscopeMagnitude_meanFreq"        
[79] "Frequency_Domain_BodyBodyGyroscopeJerkMagnitude_mean"        
[80] "Frequency_Domain_BodyBodyGyroscopeJerkMagnitude_std"         
[81] "Frequency_Domain_BodyBodyGyroscopeJerkMagnitude_meanFreq"

Hopefully, this brief guide helped you in understanding the data. :)
