#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
raw_data <- read.csv('raw_data.csv')
####################################

## start writing your R code from here
library(dplyr)
InitialClean <- surveyData %>% filter(!is.na(Likelihood_Recommend_H))

length(surveyData$Likelihood_Recommend_H) - length(InitialClean$Likelihood_Recommend_H)
## end your R code and logic 

####################################
##### write output file ############
write.csv(InitialClean, file = 'clean_data.csv')
####################################

