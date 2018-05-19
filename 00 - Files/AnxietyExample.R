setwd("/Users/giovanni/DeskTop/SMU MSDS/Doing Data Science/Unit2/")
festivalData <- read.delim("downloadfestival.dat", header = TRUE)
getNames(festivalData)


festivalHistogram <- ggplot(festivalData, aes(day1)) + opts(legend.position = "none")
festivalHistogram + geom_histogram(binwidth=0.4) + labs(x  = "Hygiene(Day 1 of Festival)", y= "Frequency")
