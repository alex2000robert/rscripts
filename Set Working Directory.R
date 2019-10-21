# Script for finding the working directory of the current project, by using the name of the R script file. 
# Very useful if you constantly need to move a project between computers.

# REQUIRED: Set your script's file name in the line "filename". The rest will be done automatically.
filename = "filename.R"
filepath = file.choose()  # Opens the file explorer, where you will need to choose the file you set before in "filename".
dir = substr(filepath, 1, nchar(filepath)-nchar(filename))
dirnew <- c(dir, "Data_Labs_R")
dirfinal <- paste(dirnew,sep="",collapse="")
setwd(dirfinal)

# Paste your code after this line:
