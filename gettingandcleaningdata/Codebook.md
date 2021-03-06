# Codebook
>  Author: Michal Pluta

> Date: 23.03.2016

# Getting and Cleaning Data Course Project

# Set of variables

This Data-set is based on [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) . Details information about variables(features) can be found in `featuers_info.txt, activity_labels.txt and README.txt`

```
  activity                                    : chr  "WALKING" "WALKING" "WALKING" "WALKING" ...
 subject                                     : int  2 2 2 2 2 2 2 2 2 2 ...
 timeBodyAccelerometer-mean-X                : num  -0.03234 -0.00341 -0.0298 -0.02213 -0.01594 ...
 timeBodyAccelerometer-mean-Y                : num  -0.0969 -0.056 -0.0778 -0.1321 -0.1207 ...
 timeBodyAccelerometer-mean-Z                : num  -0.466 -0.399 -0.465 -0.515 -0.501 ...
 timeBodyAccelerometer-sd-X                  : num  -0.1808 -0.1378 0.0135 0.032 -0.1632 ...
 timeBodyAccelerometer-sd-Y                  : num  -0.455 -0.461 -0.368 -0.349 -0.389 ...
 timeBodyAccelerometer-sd-Z                  : num  -0.498 -0.437 -0.5 -0.554 -0.537 ...
 timeGravityAccelerometer-mean-X             : num  -0.242498 -0.198605 -0.03238 -0.000161 -0.159272 ...
 timeGravityAccelerometer-mean-Y             : num  -0.458 -0.453 -0.342 -0.312 -0.368 ...
 timeGravityAccelerometer-mean-Z             : num  -0.18 -0.18 -0.339 -0.392 -0.303 ...
 timeGravityAccelerometer-sd-X               : num  0.0378 0.0378 0.0302 0.0302 -0.244 ...
 timeGravityAccelerometer-sd-Y               : num  -0.377 -0.322 -0.315 -0.315 -0.326 ...
 timeGravityAccelerometer-sd-Z               : num  0.369 0.369 0.376 0.39 0.39 ...
 timeBodyAccelerometerJerk-mean-X            : num  0.194 0.175 -0.107 -0.107 0.219 ...
 timeBodyAccelerometerJerk-mean-Y            : num  0.498 0.591 0.539 0.539 0.551 ...
 timeBodyAccelerometerJerk-mean-Z            : num  -0.359 -0.304 -0.272 -0.285 -0.333 ...
 timeBodyAccelerometerJerk-sd-X              : num  -0.855 -0.818 -0.855 -0.881 -0.874 ...
 timeBodyAccelerometerJerk-sd-Y              : num  -0.869 -0.855 -0.801 -0.794 -0.864 ...
 timeBodyAccelerometerJerk-sd-Z              : num  -0.863 -0.862 -0.816 -0.806 -0.829 ...
 timeBodyGyroscope-mean-X                    : num  -0.576 -0.534 -0.573 -0.606 -0.619 ...
 timeBodyGyroscope-mean-Y                    : num  -0.523 -0.451 -0.325 -0.309 -0.339 ...
 timeBodyGyroscope-mean-Z                    : num  -0.423 -0.384 -0.302 -0.276 -0.327 ...
 timeBodyGyroscope-sd-X                      : num  0.397 0.363 0.39 0.431 0.458 ...
 timeBodyGyroscope-sd-Y                      : num  0.255 0.378 0.338 0.38 0.344 ...
 timeBodyGyroscope-sd-Z                      : num  0.159 0.299 0.252 0.18 0.199 ...
 timeBodyGyroscopeJerk-mean-X                : num  -0.233 -0.302 -0.252 -0.1 -0.403 ...
 timeBodyGyroscopeJerk-mean-Y                : num  0.275 0.374 0.351 0.18 0.501 ...
 timeBodyGyroscopeJerk-mean-Z                : num  -0.231 -0.32 -0.365 -0.243 -0.545 ...
 timeBodyGyroscopeJerk-sd-X                  : num  0.187 0.216 0.213 0.158 0.367 ...
 timeBodyGyroscopeJerk-sd-Y                  : num  -0.0223 0.0156 -0.2803 -0.5757 -0.246 ...
 timeBodyGyroscopeJerk-sd-Z                  : num  0.0813 0.0711 0.4441 0.7592 0.2461 ...
 timeBodyAccelerometerMagnitude-mean         : num  0.162 0.163 -0.277 -0.636 0.111 ...
 timeBodyAccelerometerMagnitude-sd           : num  -0.0472 -0.0865 0.1377 0.3569 -0.1958 ...
 timeGravityAccelerometerMagnitude-mean      : num  -0.0508 -0.1431 -0.1686 -0.08 -0.2405 ...
 timeGravityAccelerometerMagnitude-sd        : num  -0.0609 0.0763 0.1243 0.0147 0.134 ...
 timeBodyAccelerometerJerkMagnitude-mean     : num  0.395 0.251 0.16 0.255 0.279 ...
 timeBodyAccelerometerJerkMagnitude-sd       : num  -0.377 -0.382 -0.286 -0.245 -0.449 ...
 timeBodyGyroscopeMagnitude-mean             : num  -0.146 -0.227 -0.319 -0.292 -0.191 ...
 timeBodyGyroscopeMagnitude-sd               : num  -0.0235 0.0192 0.0277 -0.0179 -0.0285 ...
 timeBodyGyroscopeJerkMagnitude-mean         : num  0.361 0.252 0.437 0.43 0.316 ...
 timeBodyGyroscopeJerkMagnitude-sd           : num  0.92 0.913 0.921 0.925 0.926 ...
 frequencyBodyAccelerometer-mean-X           : num  -0.347 -0.352 -0.352 -0.352 -0.348 ...
 frequencyBodyAccelerometer-mean-Y           : num  0.0197 0.025 0.0301 0.0268 0.0218 ...
 frequencyBodyAccelerometer-mean-Z           : num  -0.954 -0.97 -0.961 -0.979 -0.971 ...
 frequencyBodyAccelerometer-sd-X             : num  -0.947 -0.973 -0.985 -0.983 -0.977 ...
 frequencyBodyAccelerometer-sd-Y             : num  -0.976 -0.969 -0.97 -0.959 -0.982 ...
 frequencyBodyAccelerometer-sd-Z             : num  -0.953 -0.971 -0.959 -0.979 -0.974 ...
 frequencyBodyAccelerometerJerk-mean-X       : num  -0.946 -0.975 -0.984 -0.982 -0.979 ...
 frequencyBodyAccelerometerJerk-mean-Y       : num  -0.978 -0.97 -0.97 -0.959 -0.983 ...
 frequencyBodyAccelerometerJerk-mean-Z       : num  0.86 0.85 0.857 0.857 0.865 ...
 frequencyBodyAccelerometerJerk-sd-X         : num  -0.351 -0.358 -0.366 -0.365 -0.361 ...
 frequencyBodyAccelerometerJerk-sd-Y         : num  0.0154 0.0244 0.0264 0.0264 0.0156 ...
 frequencyBodyAccelerometerJerk-sd-Z         : num  0.924 0.924 0.927 0.937 0.937 ...
 frequencyBodyGyroscope-mean-X               : num  -0.335 -0.329 -0.325 -0.325 -0.324 ...
 frequencyBodyGyroscope-mean-Y               : num  0.0149 0.0212 0.0246 0.0185 0.0185 ...
 frequencyBodyGyroscope-mean-Z               : num  -0.154 -0.141 -0.112 -0.112 -0.135 ...
 frequencyBodyGyroscope-sd-X                 : num  0.786 0.769 0.789 0.799 0.801 ...
 frequencyBodyGyroscope-sd-Y                 : num  -0.791 -0.785 -0.785 -0.784 -0.79 ...
 frequencyBodyGyroscope-sd-Z                 : num  -1 -0.999 -0.999 -0.999 -0.999 ...
 frequencyBodyAccelerometerMagnitude-mean    : num  -0.954 -0.971 -0.96 -0.98 -0.98 ...
 frequencyBodyAccelerometerMagnitude-sd      : num  -0.942 -0.977 -0.984 -0.984 -0.979 ...
 frequencyBodyAccelerometerJerkMagnitude-mean: num  -0.981 -0.973 -0.972 -0.965 -0.985 ...
 frequencyBodyAccelerometerJerkMagnitude-sd  : num  -0.145 -0.324 -0.265 -0.457 -0.328 ...
 frequencyBodyGyroscopeMagnitude-mean        : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
 frequencyBodyGyroscopeMagnitude-sd          : num  -0.419 -0.35 -0.402 -0.312 -0.534 ...
 frequencyBodyGyroscopeJerkMagnitude-mean    : num  -0.568 -0.505 -0.496 -0.542 -0.557 ...
 frequencyBodyGyroscopeJerkMagnitude-sd      : num  0.617 0.575 0.563 0.598 0.612 ...
 ```
