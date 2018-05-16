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
# library(dplyr)
#	PART F.2: Output the ratings data frame with rows where there was the highest ltr.
keep <- df$Likelihood_Recommend_H == max(df$Likelihood_Recommend_H)
new_df <- df[keep,]
write.csv(new_df, 'new_df.csv')

# PART F.3: Output the conditions where there were the most number of survey’s 
# completed – in terms of the rating of the hotel condition and the staff caring
# #Calling the library "Modeest"
library(modeest)

mode_of_staff <- mfv(df$Staff_Cared_H)
mode_of_condition <- mfv(df$Staff_Cared_H)
mode_of_staff
mode_of_condition
# 
# #The most number of survey rating for the staff caring for the most recently cleaned dataset
# mfv(df$Staff_Cared_H)
# #The most number of survey rating for the staff caring for the initially cleaned dataset
# mfv(idf$Staff_Cared_H)
# 
# #Difference
# mfv(df$Staff_Cared_H) - mfv(idf$Staff_Cared_H)
# 
# 
# #The most number of survey rating for the hotel condition for the most recently cleaned dataset
# mfv(df$Condition_Hotel_H)
# 
# #The most number of survey rating for the hotel condition for the initially cleaned dataset
# mfv(idf$Condition_Hotel_H)
# 
# #Difference
# mfv(df$Condition_Hotel_H) - mfv(idf$Condition_Hotel_H)

## end your R code and logic 

####################################
##### write output file ############
# add your R code to write plot.png
####################################
####################################
####################################
