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
keep1 <- df$Likelihood_Recommend_H == max(df$Likelihood_Recommend_H)
new_df <- df[keep1,]
write.csv(new_df, 'new_df.csv')

# PART F.3: Output the conditions where there were the most number of survey’s 
# completed – in terms of the rating of the hotel condition and the staff caring
# #Calling the library "Modeest"
library(modeest)

mode_of_staff <- mfv(df$Staff_Cared_H)
mode_of_condition <- mfv(df$Condition_Hotel_H)
mode_of_staff
mode_of_condition

# PART F.4: Go back to the cleaned initial dataframe and do the calculations 
# (not relying on aggregate, and look at a specific combination of staff care 
# rating and hotel condition rating)
# we observe one observation of condition = 10 and staff = 5 (line 193)
keep2 <- idf$Staff_Cared_H == 5
new_idf <- idf[keep2,]
keep3 <- new_idf$Condition_Hotel_H == 10
new_idf <- new_idf[keep3,]
new_order <- order(-new_idf$Likelihood_Recommend_H)
new_idf <- new_idf[new_order,]
write.csv(new_idf, 'new_idf.csv')
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write plot.png
####################################
####################################
####################################
