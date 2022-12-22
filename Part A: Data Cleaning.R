#Reading Dataset into .csv
dataset <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/hepatitis/hepatitis.data", 
                    nrows=155, header=FALSE, col.names=paste0("C", 1:20))


#Read dataset into data.frame
df <- data.frame(dataset)

#Print dimensions of data frame
dim(df)
str(df)

#variable names cleaning
names(df) <- c("Class", "Age", "Sex", "Steroid", "Anti_viral", "Fatigue", "Malaise", "Anorexia", "Liver_big", "Liver_firm", "Spleen_palpable", 
               "Spiders", "Ascitis", "Varices","Bilirubin" , "Alk_Phosphate", "Sgot", "Albumin", "Protime", "Histology")
dim(df)
str(df)

#Replacing missing values with NA
df[df == '?'] <- NA


#Converting data types 
df$Steroid = factor(df$Steroid, exclude = "?", levels = c(1, 2), labels = c("no", "yes"))
df$Fatigue=factor(df$Fatigue, exclude = "?", levels = c(1, 2), labels = c("no", "yes"))
df$Malaise=factor(df$Malaise, exclude = "?", levels= c(1, 2), labels= c("no", "yes"))
df$Anorexia =factor(df$Anorexia, exclude ="?", levels= c(1, 2), labels= c("no", "yes"))
df$Liver_big=factor(df$Liver_big, exclude= "?", levels= c(1, 2), labels= c("no", "yes"))
df$Liver_firm=factor(df$Liver_firm, exclude="?", levels= c(1, 2), labels= c("no", "yes"))
df$Spleen_palpable=factor(df$Spleen_palpable, exclude="?", levels= c(1, 2), labels= c("no", "yes"))
df$Spiders=factor(df$Spiders, exclude="?", levels= c(1, 2), labels= c("no", "yes"))
df$Ascitis=factor(df$Ascitis, exclude="?", levels=c(1, 2), labels= c("no", "yes"))
df$Varices=factor(df$Varices, exclude="?", levels=c(1, 2), labels=c("no", "yes"))
df$Histology=factor(df$Histology, exclude="?", levels= c(1, 2), labels=c("no", "yes"))


df$Age=as.numeric(df$Age)
df$Bilirubin=as.numeric(df$Bilirubin)
df$Alk_Phosphate=as.numeric(df$Alk_Phosphate)
df$Sgot=as.numeric(df$Sgot)
df$Albumin=as.numeric(df$Albumin)
df$Protime=as.numeric(df$Protime)

str(df)

#Printing number of missing values for each column
j = 1
for(i in colnames(df)) {
  print(paste("Number of missing values for", i, "is", sum(is.na(df[,j]))))
  j = j + 1
}

#Dropping column with highest number of missing values

#Dropped the column with highest number of missing values i.e 67 (col name is Protime) 
#since it was almost double that of the second highest missing value count 
#and more than 1/3rd of the values in this col were missing.
df$Protime <- NULL
str(df)

#Printing number of missing values for each column
j = 1
for(i in colnames(df)) {
  print(paste("Number of missing values for", i, "is", sum(is.na(df[,j]))))
  j = j + 1
}

#Dropping rows with missing values
df <- na.omit(df)

#Printing number of missing values for each column
j = 1
for(i in colnames(df)) {
  print(paste("Number of missing values for", i, "is", sum(is.na(df[,j]))))
  j = j + 1
}


#Saving in RDS

saveRDS(df,"/Users/drvish/Desktop/FinalProjectBiostat213/PartA/PartA.RDS")

