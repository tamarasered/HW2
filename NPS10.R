#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here
LTR <- c(df$Likelihood_Recommend_H)
NPS <- function(LTR) {
  promoters  <- (sum(LTR > 8))/length(LTR)
  detractors <- (sum(LTR < 7))/length(LTR)
  nps <- promoters-detractors 
  return(nps)
}

AVG <- mean(replicate(100, mean(sample(NPS(LTR),10))))



png(filename="hist_NPS10.png")
hist(AVG)
dev.off()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write hist_NPS10.png
####################################



