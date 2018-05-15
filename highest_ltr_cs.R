#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
idf <- read.csv('clean_data.csv') #Initial cleaned dataframe
df <- read.csv('LCS.csv') #The latest cleaned dataframe
####################################

## start writing your R code from here

#Looking for the maximum LTR, if the row matches the maximum number then aggregating staff cared and hotel condition values. Otherwise, NA
LTR <- ifelse(df$Likelihood_Recommend_H==max(df$Likelihood_Recommend_H), df$Staff_Cared_H+df$Condition_Hotel_H,NA)

#Finding unique values of rating
LTR <- unique(LTR)

#Removing NA from the list
LTR <- LTR[!is.na(LTR)]

#Calling the library "Modeest"
library(modeest)

#The most number of survey rating for the staff caring for the most recently cleaned dataset
mfv(df$Staff_Cared_H)
#The most number of survey rating for the staff caring for the initially cleaned dataset
mfv(idf$Staff_Cared_H)

#Difference
mfv(df$Staff_Cared_H) - mfv(idf$Staff_Cared_H)


#The most number of survey rating for the hotel condition for the most recently cleaned dataset
mfv(df$Condition_Hotel_H)

#The most number of survey rating for the hotel condition for the initially cleaned dataset
mfv(idf$Condition_Hotel_H)

#Difference
mfv(df$Condition_Hotel_H) - mfv(idf$Condition_Hotel_H)

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'highest_ltr.csv')
####################################
####################################
