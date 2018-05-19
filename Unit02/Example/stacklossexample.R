# Week 2 Unit 2 Lecture Assignment
# Terry Johnson 
# 12MAY2018
# 
data=stackloss  #  set the base data to the stackloss tables
summary(stackloss) # display summary data on stackloss
str(stackloss)     # display structure of stackloss
str(Air.Flow)      # show the structure of Air.Flow 
str(stack.loss)    # show the structure of stack.loss
# Scatter Gram Plat of Air.Flow vs Stack.loss 
plot(stack.loss,Air.Flow, main="scatterplot Example",xlab="Air.Flow", ylab="stack.loss")

