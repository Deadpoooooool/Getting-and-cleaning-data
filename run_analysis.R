#Downloading and unzipping the files
library(data.table)
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,"./UCI HAR Dataset.zip", mode = "wb")
unzip("UCI HAR Dataset.zip", exdir = getwd())

#prepairing additional libraries
library(dplyr)

#forming the labels
measures <- fread("./UCI HAR Dataset/features.txt")
measures <- as.character(measures$V2)

#reading in the files and forming data frames
trainX <- fread("./UCI HAR Dataset/train/X_train.txt")
train_act <- fread("./UCI HAR Dataset/train/y_train.txt")
train_sub <- fread("./UCI HAR Dataset/train/subject_train.txt")
traindf <-  bind_cols(train_sub, train_act, trainX)
colnames(traindf) <- c(c("participant", "activity"), measures)

testX <- fread("./UCI HAR Dataset/test/X_test.txt")
test_act <- fread("./UCI HAR Dataset/test/y_test.txt")
test_sub <- fread("./UCI HAR Dataset/test/subject_test.txt")
testdf <- bind_cols(test_sub, test_act, testX)
names(testdf) <- c(c("participant", "activity"), measures)

#binding and subsetting
fullset <- rbind(traindf, testdf)
MandSD <- grep("mean|std", measures)
new_df <- c(1, 2, MandSD + 2)
new_df
newdf <- fullset[, c(1,  2,   3,   4,   5,   6,   7,   8,  43,  44,  45,  46,  47,  48,  83,  84,  85,  86,  87,  88, 123, 124, 125, 126, 127, 128, 163, 164, 165, 166, 167, 168, 203, 204, 216, 217, 229, 230, 242, 243, 255, 256, 268, 269, 270, 271, 272, 273, 296, 297, 298, 347, 348, 349, 350, 351, 352, 375, 376, 377, 426, 427, 428, 429, 430, 431, 454, 455, 456, 505, 506, 515, 518, 519, 528, 531, 532, 541, 544, 545, 554)]


act_labs <- fread("./UCI HAR Dataset/activity_labels.txt")
act_labs <- act_labs[,"V2"]
newdf$activity <- act_labs[newdf$activity]
newdf1 <- newdf

#renaming
newN <- names(newdf)
newN <- gsub("[(][)]", "", newN)
newN <- gsub("^t", "Time_Domain_", newN)
newN <- gsub("^f", "Frequency_Domain_", newN)
newN <- gsub("Mag", "Magnitude", newN)
newN <- gsub("Gyro", "Gyroscope", newN)
newN <- gsub("Acc", "Accelerometer", newN)
newN <- gsub("-mean-", "_Mean_", newN)
newN <- gsub("-std-", "_Standard_Deviation_", newN)
newN <- gsub("-", "_", newN)
names(newdf) <- newN

#tidying the data
final_df <- aggregate(newdf[,3:81], by = list(activity = newdf$activity, participant = newdf$participant),FUN = mean)
write.table(x = final_df, file = "tidied_data.txt", row.names = FALSE)