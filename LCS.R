#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('clean_data.csv')
####################################

## start writing your R code from here

#Creating a new dataframe which has three columns.The first column is already clean, has no NAs 
LCS <- data.frame(Likelihood_Recommend_H=df$Likelihood_Recommend_H, Condition_Hotel_H=df$Condition_Hotel_H, Staff_Cared_H=df$Staff_Cared_H)

#Removing NA for the second column
LCS <- LCS[!is.na(LCS$Condition_Hotel_H),]

#Removing NA for the third column
LCS <- LCS[!is.na(LCS$Staff_Cared_H),]
## end your R code and logic 

####################################
##### write output file ############
write.csv(LCS, file = 'LCS.csv')
####################################



