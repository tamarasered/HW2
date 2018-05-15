#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
clean_data <- read.csv('clean_data.csv')
####################################

## start writing your R code from here
# PART D: Writing a function, given a vector of LTR, to generate an NPS.
LTR <- c(clean_data$Likelihood_Recommend_H)

NPS <- function(LTR) {
  promoters  <- (sum(LTR > 8))/length(LTR)
  detractors <- (sum(LTR < 7))/length(LTR)
  nps <- promoters-detractors 
  return(nps)
}
NPS(LTR)
## end your R code and logic 

####################################
##### write output file ############
####################################



