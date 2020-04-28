
#Merge the training and the test sets to create one data set
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "project.zip", method = "curl")
unzip("project.zip")

xtest <- read.table("X_test.txt")
subjtest <- read.table("subject_test.txt")
names(subjtest) <- "subject"
ytest <- read.table("y_test.txt")
names(ytest) <- "activity"


xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
names(ytrain) <- "activity"
subjtrain <- read.table("subject_train.txt")
names(subjtrain) <- "subject"


test <- cbind(ytest, subjtest, xtest)
train <- cbind(ytrain, subjtrain, xtrain)

both <- rbind(test, train)
both <- tbl_df(both)

# Appropriately labels the data set with descriptive variable names.
feat <- tbl_df(read.table("features.txt", stringsAsFactors = FALSE))
names(both) <- make.names(c("activity", "subject", feat$V2), unique = TRUE)

# Extract only the measurements on the mean and standard deviation 
# for each measurement
both <- both[c(1:2, grep("*mean*|*std*", names(both)))]

# Use descriptive activity names to name the activities in the data set
activitylabel <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
both$activity <- activitylabel$V2[match(both$activity, activitylabel$V1)]

# From the data set in step 4, creates a second, independent tidy data
# set with the average of each variable for each activity and each 
# subject.
tidy <- group_by(both, activity, subject)
tidy <- summarize_all(tidy, .funs = mean)

write.table(tidy, file = "tidydata.txt", row.names = FALSE)










