#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
LCS <- read.csv('LCS.csv')
####################################

## start writing your R code from here
# PART F.2: Output the ratings (for each of staff cared and hotel condition) 
# where there was the most highest LTR.
df_max_ltr <- LCS[LCS$Likelihood_Recommend_H=max(LCS$Likelihood_Recommend_H),]


## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'highest_ltr.csv')
####################################



