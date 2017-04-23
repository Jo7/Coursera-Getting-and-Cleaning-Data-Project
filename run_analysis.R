#download file
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

#unzip the file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#get list of files in the folder
path <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path, recursive=TRUE)
files

#
#Read Activity files
dataActivityTest  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)
#Read Subject files
dataSubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)
#Read Features files
dataFeaturesTest  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

#View properties of variables
str(dataActivityTest)
str(dataActivityTrain)
str(dataSubjectTrain)
str(dataSubjectTest)
str(dataFeaturesTest)
str(dataFeaturesTrain)

#Merge training and test sets to create one data set
#Bind rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

#Set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activityId")
dataFeaturesNames <- read.table(file.path(path, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

#Merge columns to get dataframe
dataIntermediate <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataIntermediate)

#Subset names of Features by finding mean|std
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

#Subset dataframe using subset of names of Features
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activityId" )
Data<-subset(Data,select=selectedNames)

#check data structure
str(Data)

#Read in activity labels
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)
names(activityLabels)<-c("activityId", "activityType")
finalData <- merge(Data, activityLabels, by="activityId", all.x=TRUE)

#Appropriately label data set with descriptive activity names
names(finalData)<-gsub("^t", "time", names(finalData))
names(finalData)<-gsub("^f", "frequency", names(finalData))
names(finalData)<-gsub("Acc", "Accelerometer", names(finalData))
names(finalData)<-gsub("Gyro", "Gyroscope", names(finalData))
names(finalData)<-gsub("Mag", "Magnitude", names(finalData))
names(finalData)<-gsub("BodyBody", "Body", names(finalData))
names(finalData)<-gsub("\\()", "", names(finalData))
names(finalData)<-gsub("-std", "StdDev", names(finalData))
names(finalData)<-gsub("-mean", "Mean", names(finalData))

#Create a second, independent tidy data set with the average of each variable for each activity and each subject
library(dplyr)
finalData <- select(finalData, -activityId)
averageData <- finalData %>% group_by(subject, activityType) %>% summarise_each(funs(mean))
write.table(averageData, file = "./data/tidydata.txt",row.name=FALSE)


