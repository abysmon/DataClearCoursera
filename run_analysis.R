#### Read in the data ####
train = read.table('train/X_train.txt', header = F)
tr_label = read.table('train/y_train.txt', header = F)
tr_subj = read.table('train/subject_train.txt', header = F)

test = read.table('test/X_test.txt', header = F)
te_label = read.table('test/y_test.txt', header = F)
te_subj = read.table('test/subject_test.txt', header = F)



#### Merge the data set ####
traind = cbind(tr_label, tr_subj, train)
testd = cbind(te_label, te_subj, test)
harset = rbind(traind, testd)

labels = read.table('features.txt', stringsAsFactors = F)
varnames = paste(labels[ ,1], labels[ ,2])
varnames = gsub(pattern = "\\(\\)", "", varnames)
colnames(harset)[-(1:2)] = varnames
colnames(harset)[1:2] = c("Activity", "Subject")



#### Extract mean & std measures from the data set ####
labels = gsub(pattern = "\\(\\)", "", labels[,2])
meanmatch = grep("*-mean-|*-mean$", labels)+2
stdmatch = grep("*std", labels)+2
totmatch = c(meanmatch, stdmatch)
varnames = labels[totmatch-2]
har.mu.std = harset[, c(1:2, totmatch)]



#### Descriptively name activities in the data set ####
har.mu.std$Activity = factor(har.mu.std$Activity, labels = c("Walking", 
                      "Climbing up the stairs", "Climbing down the stairs", 
                      "Sitting", "Standing", "Laying down"))



#### Label the data set variables  with descriptive names ####
vname = gsub(pattern = "\\-", replacement = "", x = varnames)
vname = gsub(pattern = "mean", "Mean", x = vname)
vname = gsub(pattern = "std", "Stdev", x = vname)
colnames(har.mu.std)[-(1:2)] = vname

# gives warning due to rbind-ing of row of unequal length
torn = do.call(rbind, strsplit(varnames, '-'))

torn.df = as.data.frame(torn)

torn.df[ ,1] = gsub(pattern = "BodyBody", replacement = "Body", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "Acc", replacement = ".Acceleration", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "Mag", replacement = ".Magnitude", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "Jerk", replacement = ".Jerk", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "Gyro", replacement = ".Angular.Velocity", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "^t", replacement = "", x = torn.df[ ,1])
torn.df[ ,1] = gsub(pattern = "^f", replacement = "FFT.of ", x = torn.df[ ,1])

torn.df[ ,2] = gsub(pattern = "mean", replacement = "Mean", x = torn.df[ ,2])
torn.df[ ,2] = gsub(pattern = "std", replacement = "Stdev", x = torn.df[ ,2])

torn.df[ ,3] = gsub(pattern = "^X", replacement = ".along.X.axis", x = torn.df[ ,3])
torn.df[ ,3] = gsub(pattern = "^Y", replacement = ".along.Y.axis", x = torn.df[ ,3])
torn.df[ ,3] = gsub(pattern = "^Z", replacement = ".along.Z.axis", x = torn.df[ ,3])

torn.df[ grep(pattern = "^[a-zA-Z]", torn.df[,3]), 3] = ""

torn.df[ ,4] = paste0(torn.df[ ,2],".of.", torn.df[ ,1], torn.df[ ,3])
colnames(har.mu.std)[-(1:2)] = torn.df[ ,4]



#### Tidy data set with avg of each var for each activity & each subject ####
require(dplyr)
require(tidyr)
gatHAR = gather(har.mu.std, Measurement, Value, -c(Activity, Subject))
grpHAR = group_by(gatHAR, Activity, Subject, Measurement)
summaryHAR = summarise(grpHAR, avgValue = mean(Value))
write.table(summaryHAR, row.names = F, file = 'tidyHAR.txt')
