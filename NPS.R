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


#Part E: Comparing NPS for less than 2 days stay and more than 2 days stay
library(dplyr)
#Calculating NPS for the stays less than 2 days
LTR1 <- clean_data %>% filter(LENGTH_OF_STAY_C<2)
LTR1 <- LTR1$Likelihood_Recommend_H
NPS(LTR1)

#Calculating NPS for the stays more than 2 days
LTR2 <- clean_data %>% filter(LENGTH_OF_STAY_C>2)
LTR2 <- LTR2$Likelihood_Recommend_H
NPS(LTR2)

#Calculating the difference
NPS(LTR1) - NPS(LTR2)

## end your R code and logic 

####################################
##### write output file ############
####################################



