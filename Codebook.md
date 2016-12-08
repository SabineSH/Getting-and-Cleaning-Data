##Codebook Assignment Getting and Cleaning Data


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In the following, the variables of the resulting dataset are described:

#"Activity"
	One of the following activities: 
	* 1 WALKING
	* 
2 WALKING_UPSTAIRS

	* 3 WALKING_DOWNSTAIRS

	* 4 SITTING

	* 5 STANDING
	
* 6 LAYING

#"Subject"  
	Subject identification (1 to 30)
#"tBodyAcc.mean...X"
	Mean of body acceleration signal (X direction)
#"tBodyAcc.mean...Y"
	Mean of body acceleration signal (Y direction)
#"tBodyAcc.mean...Z"
	Mean of body acceleration signal (Z direction)            
#"tBodyAcc.std...X"  
	Standard deviation of body acceleration signal (X direction)             
#"tBodyAcc.std...Y" 
        Standard deviation of body acceleration signal (Y direction)
#"tBodyAcc.std...Z"
	Standard deviation of body acceleration signal (Z direction)               
#"tGravityAcc.mean...X"
	Mean of gravity acceleration signal (X direction)           
#"tGravityAcc.mean...Y"
	Mean of gravity acceleration signal (Y direction)             
#"tGravityAcc.mean...Z"
	Mean of gravity acceleration signal (Z direction)             
#"tGravityAcc.std...X" 
	Standard deviation of gravity acceleration signal (X direction)            
#"tGravityAcc.std...Y"
	Standard deviation of gravity acceleration signal (Y direction)            
#"tGravityAcc.std...Z"
	Standard deviation of gravity acceleration signal (Z direction)             
#"tBodyAccJerk.mean...X"
	Mean of Jerk signal derived from body linear acceleration (X direction)          
#"tBodyAccJerk.mean...Y"
	Mean of Jerk signal derived from body linear acceleration (Y direction)            
#"tBodyAccJerk.mean...Z"
	Mean of Jerk signal derived from body linear acceleration (Z direction)            
#"tBodyAccJerk.std...X"
	Standard deviation of Jerk signal derived from body linear acceleration (X direction)            
#"tBodyAccJerk.std...Y"
	Standard deviation of Jerk signal derived from body linear acceleration (Y direction)            
#"tBodyAccJerk.std...Z"
	Standard deviation of Jerk signal derived from body linear acceleration (Z direction)            
#"tBodyGyro.mean...X"  
	Mean of body gravity acceleration signals (X direction)          
#"tBodyGyro.mean...Y"
	Mean of body gravity acceleration signals (Y direction)               
#"tBodyGyro.mean...Z"
	Mean of body gravity acceleration signals (Z direction)               
#"tBodyGyro.std...X"
	Standard deviation of body gravity acceleration signals (X direction)               
#"tBodyGyro.std...Y"
	Standard deviation of body gravity acceleration signals (Y direction)                
#"tBodyGyro.std...Z"
	Standard deviation of body gravity acceleration signals (Z direction)                
#"tBodyGyroJerk.mean...X"   
	Mean of Jerk signal derived from angular velocity (X direction)      
#"tBodyGyroJerk.mean...Y"
	Mean of Jerk signal derived from angular velocity (Y direction)           
#"tBodyGyroJerk.mean...Z"
	Mean of Jerk signal derived from angular velocity (Z direction)           
#"tBodyGyroJerk.std...X"
	Standard deviation of Jerk signal derived from angular velocity (X direction)           
#"tBodyGyroJerk.std...Y"
	Standard deviation of Jerk signal derived from angular velocity (Y direction)            
#"tBodyGyroJerk.std...Z"
	Standard deviation of Jerk signal derived from angular velocity (Z direction)            
#"tBodyAccMag.mean.." 
	Mean of Magnitude of body acceleration           
#"tBodyAccMag.std.."
	Standard deviation of Magnitude of body acceleration               
#"tGravityAccMag.mean.." 
	Mean of Magnitude of gravity acceleration         
#"tGravityAccMag.std.."
	Standard deviation of Magnitude of gravity acceleration           
#"tBodyAccJerkMag.mean.."   
	Mean of Jerk signal derived from body linear acceleration      
#"tBodyAccJerkMag.std.."
	Standard deviation of Jerk signal derived from body linear acceleration             
#"tBodyGyroMag.mean.."  
	Mean of Magnitude of body gravity acceleration          
#"tBodyGyroMag.std.."
	Standard deviation of Magnitude of body gravity acceleration               
#"tBodyGyroJerkMag.mean.." 
	Mean of Magnitude of Jerk signal derived from body gravity acceleration        
#"tBodyGyroJerkMag.std.." 
	Standard deviation of Magnitude of Jerk signal derived from body gravity acceleration         
#"fBodyAcc.mean...X"  
	Mean of Fourier transform applied to body acceleration signal (X direction)             
#"fBodyAcc.mean...Y"
	Mean of Fourier transform applied to body acceleration signal (Y direction)                
#"fBodyAcc.mean...Z"
	Mean of Fourier transform applied to body acceleration signal (Z direction)               
#"fBodyAcc.std...X" 
	Standard deviation of Fourier transform applied to body acceleration signal (X direction)                 
#"fBodyAcc.std...Y"
	Standard deviation of Fourier transform applied to body acceleration signal (Y direction)                  
#"fBodyAcc.std...Z"
	Standard deviation of Fourier transform applied to body acceleration signal (Z direction)                 
#"fBodyAcc.meanFreq...X" 
	Mean frequency of Fourier transform of body acceleration signal (X direction)          
#"fBodyAcc.meanFreq...Y"
	Mean frequency of Fourier transform of body acceleration signal (Y direction)            
#"fBodyAcc.meanFreq...Z"
	Mean frequency of Fourier transform of body acceleration signal (Z direction)            
#"fBodyAccJerk.mean...X" 
	Mean of Fourier transform of Jerk signal of body acceleration signal (X direction)          
#"fBodyAccJerk.mean...Y" 
	Mean of Fourier transform of Jerk signal of body acceleration signal (Y direction)            
#"fBodyAccJerk.mean...Z" 
	Mean of Fourier transform of Jerk signal of body acceleration signal (Z direction)           
#"fBodyAccJerk.std...X" 
	Standard deviation of Fourier transform of Jerk signal of body acceleration signal (X direction)             
#"fBodyAccJerk.std...Y" 
	Standard deviation of Fourier transform of Jerk signal of body acceleration signal (Y direction)            
#"fBodyAccJerk.std...Z"
	Standard deviation of Fourier transform of Jerk signal of body acceleration signal (Z direction)            
#"fBodyAccJerk.meanFreq...X"
	Mean frequency of Fourier transform ofJerk signal of body acceleration signal (X direction)       
#"fBodyAccJerk.meanFreq...Y"
	Mean frequency of Fourier transform of Jerk signal of body acceleration signal (Y direction)        
#"fBodyAccJerk.meanFreq...Z"
	Mean frequency of Fourier transform of Jerk signal of body acceleration signal (Z direction)       
#"fBodyGyro.mean...X" 
	Mean of Fourier transform of body gravity acceleration (X direction)             
#"fBodyGyro.mean...Y"
	Mean of Fourier transform of body gravity acceleration (Y direction)               
#"fBodyGyro.mean...Z"
	Mean of Fourier transform of body gravity acceleration (Z direction)              
#"fBodyGyro.std...X"
	Standard deviation of Fourier transform of body gravity acceleration (X direction)                
#"fBodyGyro.std...Y"
	Standard deviation of Fourier transform of body gravity acceleration (Y direction)                
#"fBodyGyro.std...Z"
	Standard deviation of Fourier transform of body gravity acceleration (Z direction)               
#"fBodyGyro.meanFreq...X" 
	Mean frequency of Fourier transform of body gravity acceleration (X direction)         
#"fBodyGyro.meanFreq...Y" 
	Mean frequency of Fourier transform of body gravity acceleration (Y direction)          
#"fBodyGyro.meanFreq...Z"
	Mean frequency of Fourier transform of body gravity acceleration (Z direction)          
#"fBodyAccMag.mean.." 
	Mean of Fourier transform of Magnitude of body acceleration              
#"fBodyAccMag.std.."
	Standard deviation of Fourier transform of Magnitude of body acceleration                 
#"fBodyAccMag.meanFreq.." 
	Mean frequency of of Fourier transform of Magnitude of body acceleration         
#"fBodyBodyAccJerkMag.mean.." 
	Mean of Fourier transform of Magnitude of Jerk signal derived from body linear acceleration      
#"fBodyBodyAccJerkMag.std.."
	Standard deviation of Fourier transform of Magnitude of Jerk signal derived from body linear acceleration        
#"fBodyBodyAccJerkMag.meanFreq.."
	Standard deviation of Fourier transform of Magnitude of Jerk signal derived from body linear acceleration  
#"fBodyBodyGyroMag.mean.." 
	Mean of Fourier Transform of Magnitude of body gravity acceleration        
#"fBodyBodyGyroMag.std.."
	Standard deviation of Fourier Transform of Magnitude of body gravity acceleration           
#"fBodyBodyGyroMag.meanFreq.." 
	Mean frequency of Fourier Transform of Magnitude of body gravity acceleration    
#"fBodyBodyGyroJerkMag.mean.."  
	Mean of Fourier transform of Magnitude of Jerk signal derived from body gravity acceleration   
#"fBodyBodyGyroJerkMag.std.." 
	Standard deviation of Fourier transform of Magnitude of Jerk signal derived from body gravity acceleration      
#"fBodyBodyGyroJerkMag.meanFreq.."
	Mean frequency of Fourier transform of Magnitude of Jerk signal derived from body gravity acceleration 










