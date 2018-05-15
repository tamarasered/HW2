#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here

#Looking for the maximum LTR, if the row matches the maximum number then aggregating staff cared and hotel condition values. Otherwise, NA
LTR <- ifelse(df$Likelihood_Recommend_H==max(df$Likelihood_Recommend_H), df$Staff_Cared_H+df$Condition_Hotel_H,NA)

#Finding unique values of rating
LTR <- unique(LTR)

#Removing NA from the list
LTR <- LTR[!is.na(LTR)]

#Calling the library "Modeest"
install.packages("modeest")
library(modeest)
mfv(hotel$Staff_Cared_H)
mfv(hotel$Condition_Hotel_H)
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'highest_ltr.csv')
####################################
