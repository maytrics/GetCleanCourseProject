# -----------------------------------------------------------------------------
## run-analysis.R
## Author - Maytrics
## Coursera; Getting and Cleaning Data; Course Project; December 2014
# -----------------------------------------------------------------------------

# Set root directory for various data files
rootDir <- "<Download directory for UCI HAR Dataset>";

# Read training data set
fTrnSub <- paste (rootDir, "\\train\\subject_train.txt", sep="");
trn.sub <- read.table (fTrnSub)

fTrnX <- paste (rootDir, "\\train\\X_train.txt", sep="");
trn.x <- read.table (fTrnX)

fTrnY <- paste (rootDir, "\\train\\Y_train.txt", sep="");
trn.y <- read.table (fTrnY, colClasses=c("character"))

# Read test data set
fTstSub <- paste (rootDir, "\\test\\subject_test.txt", sep="");
tst.sub <- read.table (fTstSub)

fTstX <- paste (rootDir, "\\test\\X_test.txt", sep="");
tst.x <- read.table (fTstX)

fTstY <- paste (rootDir, "\\test\\Y_test.txt", sep="");
tst.y <- read.table (fTstY, colClasses=c("character"))

# Read features list
fFeatures <- paste (rootDir, "\\features.txt", sep="");
dt.features <- read.table (fFeatures, sep=" ")

# Read activity labels
f.act.labels <- paste (rootDir, "\\activity_labels.txt", sep="");
act.labels <- read.table (f.act.labels, sep=" ", colClasses=c("character", "character"))

# PROJECT STEP-1: Merge training and test data sets. -----------------------------------------------------
agr.sub <- rbind (trn.sub, tst.sub)
colnames (agr.sub) <- "Subject";

agr.y <- rbind (trn.y, tst.y)
# colnames (agr.y) <- "Activity";

agr.x <- rbind (trn.x, tst.x)
cfeats <- t(dt.features [2])
colnames (agr.x) <- cfeats; 

# STEP 2: Extract only data points for Mean and Standard Deviation for each measurement -------------------
ms.x <- agr.x [,grepl ("(mean)|(std)", colnames (agr.x))]
ms.all <- cbind (agr.sub, agr.y, ms.x)


# STEP 3: Substitute activity codes with descriptive activity names (from act.labels) ----------------------
for (i in 1:nrow (ms.all[2])) {
	for (j in 1:nrow(act.labels)) {
		ms.all[i, 2] <- sub (act.labels [j,1], act.labels[j,2], ms.all[i,2])
	}
}

# STEP 4: Descriptive column names -------------------------------------------------------------------------
colnames (ms.all) <- c("Subject", "Activity", make.names(colnames(ms.all)[3:ncol(ms.all)]))

dnames <- sapply (colnames (ms.all), function (x) gsub ("[.][.]+", ".", x, ignore.case=TRUE))
dnames <- sapply (dnames, function (x) gsub ("[.]$", "", x, ignore.case=TRUE))

colnames (ms.all) <- dnames

# STEP 5: Create tidy data set with the average of each variable for each activity and each subject ---------
avg.sub <- aggregate(ms.all[,3:81], by=list(ms.all$Activity,ms.all$Subject),mean)
avg.all <- cbind (Subject= avg.sub[,2], Activity = avg.sub[,1], avg.sub[,3:ncol(avg.sub)])

# Write table to a file
write.table (avg.all, "Maytrics-Tidy-MeanSTDEV.csv", sep=",", row.names = FALSE)
write.table (avg.all, "Maytrics-Tidy-MeanSTDEV.txt", row.names = FALSE)

# -----------------------------------------------------------------------------


