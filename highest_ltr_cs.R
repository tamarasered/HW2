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
library(dplyr)
#Creating a dataframe with the recommendation likelihood greater than mean
LTR <- df %>% filter(!is.na(Condition_Hotel_H) & !is.na(Staff_Cared_H)) %>% select(Likelihood_Recommend_H, Condition_Hotel_H, Staff_Cared_H)

LTRmost <- LTR %>% filter(Likelihood_Recommend_H>mean(Likelihood_Recommend_H))

#Plotting the results
png(filename="plot.png")
plot(LTRmost$Staff_Cared_H, LTRmost$Condition_Hotel_H)
dev.off()

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
# add your R code to write plot.png
####################################
####################################
####################################
