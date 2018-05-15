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

# PART E: Compare NPS for length of stays less than 2 days vs length of stays greater than 2 days
# Create a new vector from data frame where LENGTH_OF_STAY_C value is >2 and apply NPS function.

# Create a new vector from data frame where LENGTH_OF_STAY_C value is <2 and apply NPS function.

## end your R code and logic 

####################################
##### write output file ############
####################################



