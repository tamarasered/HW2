#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
clean_data <- read.csv('clean_data.csv')
####################################

## start writing your R code from here
# PART F: Creating a new dataframe with ‘Likelihood_Recommend_H’, Condition_Hotel_H 
# and Staff_Cared_H all cleaned.
new_df_LCS <- data.frame("Likelihood_Recommend_H"=clean_data$Likelihood_Recommend_H,
                         "Condition_Hotel_H"=clean_data$Condition_Hotel_H,
                         "Staff_Cared_H"=clean_data$Staff_Cared_H)
clean_new_df_LCS <- new_df_LCS [!is.na(new_df_LCS$Likelihood_Recommend_H),] 
clean_new_df_LCS <- clean_new_df_LCS [!is.na(clean_new_df_LCS$Condition_Hotel_H),] 
clean_new_df_LCS <- clean_new_df_LCS [!is.na(clean_new_df_LCS$Staff_Cared_H),] 
## end your R code and logic 

####################################
##### write output file ############
write.csv(clean_new_df_LCS, file = 'LCS.csv')
####################################



