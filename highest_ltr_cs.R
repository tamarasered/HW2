#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here
LTR <- rownames(df[max(df$Likelihood_Recommend_H),])

## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'highest_ltr.csv')
####################################


