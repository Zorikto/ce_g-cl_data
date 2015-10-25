getwd()
setwd("C:/Users/Zorikto/Desktop/CE_Getting and cleaning data/course_project")
list.files("./UCI HAR Dataset/test")
list.files("./UCI HAR Dataset/train")
list.files("./UCI HAR Dataset")

#q1
#upload common dat into R
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
variable_names <-read.table("./UCI HAR Dataset/features.txt")

#upload and prepare train data into R
x_train_data<-read.table("./UCI HAR Dataset/train/x_train.txt")
colnames(x_train_data) <-c(t(variable_names[-c(1)]))
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <-c("subj")
activity_code_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(activity_code_train) <-c("act_c_tr")


#upload and prepare test data into R
x_test_data<-read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(x_test_data) <-c(t(variable_names[-c(1)]))
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <-c("subj")
activity_code_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(activity_code_test) <-c("act_c_tr")


#combine data
full_x_train_data <- cbind(subject_train,activity_code_train,x_train_data)
full_x_test_data <- cbind(subject_test,activity_code_test,x_test_data)
q1_final_data<- rbind(full_x_train_data, full_x_test_data)

#q2
q2_var_names <- names(q1_final_data)
q2_var_names<-grep("mean|std",q2_var_names)
q2_var_names

ind<- sort(union(indices_mean, indices_std))
q2_data <- q1_full_data[q2_var_names]
q2_data_names <-names(q2_data)
q2_data_names<-grep("meanFreq",q2_data_names)
q2_data_names
q2_final_data<-q2_data[-c(q2_data_names)]

#q3/4
q3_data <- cbind(q1_full_data$subj,q1_full_data$act_c_tr,q2_final_data)
colnames(q3_data)[1:2]<-c("subj","act_code")
colnames(activity_labels)[1:2] <- c("act_code","act_name")
q3_final_data <- merge(q3_data,activity_labels, by = 'act_code')
q4_final_data <- q3_final_data #it's just foravoid misunderstanding
write.table(q4_final_data, "./course_project/q4_data.txt", sep="\t", row.names = FALSE)

#q5
tidy_data<-aggregate(q4_final_data,by=list(activity=q4_final_data$act_name,subjID=q4_final_data$subj),FUN = mean)
tidy_data<-tidy_data[-c(4,71)]
write.table(tidy_data, "./course_project/tidy_data.txt", sep="\t", row.names = FALSE)
