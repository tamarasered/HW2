#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
raw_data <- read.csv('raw_data.csv')
####################################

## start writing your R code from here
clean_data <- raw_data [!is.na(raw_data$Likelihood_Recommend_H),] 

length(raw_data$Likelihood_Recommend_H) - length(clean_data$Likelihood_Recommend_H)
## end your R code and logic 

####################################
##### write output file ############
write.csv(clean_data, file = 'clean_data.csv')
####################################

