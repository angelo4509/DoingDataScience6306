# Data Summary
# 3. Utilize your data frame object final for this part
# a. Create a new column called “Total” in final that adds 
#    the amount of children in 2015 and 2016 together.  In 
#    those two years combined, how many people were given 
#    popular names
Total = final_x$`2015 Count` + final_x$`2016 Count`
final = cbind(final_x, Total)
# b. Sort the data by Total.  What are the top 10 most 
#    popular names
sorted.Total = final[order(final$Total, decreasing = TRUE),]
head(sorted.Total, 10)
# c. The client is expecting a girl!  Omit boys and give 
#    the top 10 most popular girl’s names.
sorted.Females = sorted.Total[sorted.Total$Gender == 'F',]
head(sorted.Females,10)
# d. Write these top 10 girl names and their Totals to 
#    a CSV file.  Leave out the other columns entirely
write.csv(head(sorted.Females[,c(-2,-3,-4)],10),"Top10Females.csv")
