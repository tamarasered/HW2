#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('LCS.csv')
####################################

## start writing your R code from here

AVG <- mean(replicate(100, mean(sample(NPS(LTR),10))))



png(filename="hist_NPS10.png")
hist(AVG)
dev.off()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write hist_NPS10.png
####################################



