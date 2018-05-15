#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here

#Sampling 100 surveys and assingning as vector LTR
LTR <- sample(df$Likelihood_Recommend_H,100, replace=FALSE)

#Running the function NPS
NPS <- function(LTR) {
  promoters  <- (sum(LTR > 8))/length(LTR)
  detractors <- (sum(LTR < 7))/length(LTR)
  nps <- promoters-detractors 
  return(nps)
}
#Checking the return from the function
NPS(LTR)

#Running the mean value of each sample 1000 times
AVG <- replicate(1000, mean(sample(df$Likelihood_Recommend_H,100, replace=FALSE)))

#Creating a histogram of the mean values
png(filename="hist_NPS1000.png")
hist(AVG)
dev.off()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write hist_NPS1000.png
####################################



