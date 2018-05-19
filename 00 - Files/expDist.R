# R code to calculate the mean of 1000 random samples from 
# an exponential distribution of size 50
n = 50        # Size
nsim = 1000   # number of repititions
lotsa.exp.medians = numeric(nsim)  # ensure medians is a numeric value
for (i in 1: nsim) {  # for loop from 1 to number of iterations
   x = rexp(n)        # x will be the expontial distribution of size n
   lotsa.exp.medians[i] = median(x)   # save this into the medians vector
}
#summary(lotsa.exp.medians)  # display summary data
#length(lotsa.exp.medians)   # ensure we have the required number of samples
mean(lotsa.exp.medians)     # the mean
hist(lotsa.exp.medians)     # histogram

