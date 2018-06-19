#Data Munging
# 1 utilize yob2016.txt for this question. This file is a series of popula children's names born in the year 2016
#   in the United States.  It consists of three columns with a first name, a gender, and the amount of children given
#   that name.  However, the data is raw and will need cleaning to make it tidy and usable.
# a.  First, import the .txt file into R so you can process it.  Keep in mind this is not a CSV file.
#     You might  Have to open the file to see what you're dealing with.  Assign the resulting data frame to an object,
#     "df", that consists of three columns with human readable column names for each.
#setwd("/Users/giovanni/Desktop/SMU MSDS/Summer 2018/DoingDataScience/05 - Week")
df = read.csv("yob2016.txt", header = FALSE, sep = ";")
colnames(df) <- c("Name","Gender","Count")
head(df,6)
# b.  Display the summary and structure of df
summary(df)
str(df)
# c.  Your client tells you that there is a problem with the raw file.  One name was entered twice and mispelled.  The
#     Client cannot remember which name it is;  there are thousands.  But he did remember he accidentally put three 'y's
#     at the end of the name.  Write an R command to figure out which name it is and display it.
grep("yyy",df$Name, value = TRUE)

grep("Fiona+",df$Name, value = TRUE)

grep("Fiona+",df$Name, value = FALSE)
# d.  Upon finding the misspelled name, please remove this aprticular observation, as the client says it's redundant.
#     Save the remaining dataset as an object: y2016.
y2016 = df[-212,]
grep("fiona+", y2016$Name, value = TRUE)
