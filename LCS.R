#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('clean_data.csv')
####################################

## start writing your R code from here
LCS <- data.frame(Likelihood_Recommend_H=df$Likelihood_Recommend_H, Condition_Hotel_H=df$Condition_Hotel_H, Staff_Cared_H=df$Staff_Cared_H)
LCS <- LCS[!is.na(LCS$Condition_Hotel_H),]
LCS <- LCS[!is.na(LCS$Staff_Cared_H),]
## end your R code and logic 

####################################
##### write output file ############
write.csv(LCS, file = 'LCS.csv')
####################################



