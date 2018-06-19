# Data Merging
# 2. Utilize yob2015.txt for this question.  
# This file is similar to yob2016, but contains names, 
# gender, and total children given that name for the 
# year 2015.
# a. Like 1a, please import the .txt file into R.  
#    Look at the file before you do.  You might have 
#    to change some options to import it properly.  
#    Again, please give the dataframe human-readable 
#    column names.  Assign the dataframe to y2015.
y2015 = read.csv("yob2015.txt", header = FALSE, sep = ",")
colnames(y2015) <- c("Name","Gender","Count")
# b. Display the last ten rows in the dataframe.  
#    Describe something you find interesting about 
#    these 10 rows.
tail(y2015,10)
# c. Merge y2016 and y2015 by your Name column; 
#    assign it to final.  The client only cares about 
#    names that have data for both 2016 and 2015; there 
#    should be no NA values in either of your amount of 
#    children rows after merging
y2016 = read.csv("yob2016.txt", header = FALSE, sep = ";")
colnames(y2016) <- c("Name","Gender","Count")
final = merge(y2015,y2016, by.x ="Name", by.y = "Name")
final = final[,-4]
colnames(final) <- c("Name","Gender","2015 Count","2016 Count")
summary(final)
