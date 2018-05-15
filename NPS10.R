#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here

#Sampling 10 surveys and assingning as vector LTR
LTR <- sample(df$Likelihood_Recommend_H,10)

#Running the function NPS
NPS <- function(LTR) {
  promoters  <- (sum(LTR > 8))/length(LTR)
  detractors <- (sum(LTR < 7))/length(LTR)
  nps <- promoters-detractors 
  return(nps)
}
#Checking the return from the function
NPS(LTR)

#Running the mean value of each sample 100 times
AVG <- replicate(100, mean(sample(df$Likelihood_Recommend_H,10)))

#Creating a histogram of the mean values
png(filename="hist_NPS10.png")
hist(AVG)
dev.off()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write hist_NPS10.png
####################################



