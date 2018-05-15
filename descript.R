#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
clean_data <- read.csv('clean_data.csv')
####################################

## start writing your R code from here
# Generating descriptive statistics for the column Likelihood_Recommend_H. 
#Crearing a vector for the likelihood to recommend column.
LR <- c(clean_data$Likelihood_Recommend_H)
# First find the maximum and minimum values in the column and create corresponding variables.
Maximum <- max(LR)
Maximum
Minimum <- min(LR)
Minimum
# Having those variables the range can be found.
Range <- maximum-minimum
Range
# Calculating and creating corresponding variables for mean and standard deviation.
Mean <- mean(LR)
Mean
SD <- sd(LR)
SD
#Calculating the quantiles.
quantile(LR, probs = c(0.25,0.75,0.9))
#Generating the histogram.
png(filename="histogram.png")
hist(LR)
dev.off()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write histogram.png
####################################




