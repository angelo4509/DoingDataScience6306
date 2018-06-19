# Codebook

#Data Files provided for this assignment
yob2016.txt: This file is a series of popula children's names born in the year 2016 in the United States.  It consists of three columns with a first name, a gender, and the amount of children given that name.  Separated by semi-colon.

yob2015.txt: This file is a series of popula children's names born in the year 2015 in the United States.  It consists of three columns with a first name, a gender, and the amount of children given that name.  Separated by comma.

df = dataframe, used to store the input file 
y2016 = dataframe for the yob2016.txt file after it has been tidy.
y2015 = dataframe for the yob2015.txt file after it has been tidy.
final = dataframe of the merged y2015 and y2016 data
Total = vector containing the total of y2015 and y2016
sorted.Total = sorted in decending order of Total Count of the final dataframe
sorted.Females = filtered on the gender column to include only females from the sorted.Total dataframe