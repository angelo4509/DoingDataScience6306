#4 Your data science profile.  
#  Enter your data science profile into R as a data frame with two columns.  
#  Call it your first name. The categories are computer programming, math, 
#  statistics, machine learning, domain expertise, communication and presentation skills,
#  and data visualization.  Your ranking for each the category 1 to 5, 
#  with 5 as best
#. 
#  Create a bar graph of your data science profile. 
#
categories = c("Prgmng", "Math","Stats","MachLearn","DomExp","Coms&Pres","DataVis")
ranking = c(5,4,4,3,3,2,3)
terry = data.frame(categories,ranking) # create the data.frame
terry  # display profile
hist(terry$ranking) # create histogram

