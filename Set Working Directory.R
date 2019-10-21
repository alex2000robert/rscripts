# Script for finding the working directory of the current project, by using the name of the R script file. 
# Very useful if you constantly need to move a project between computers, assuming it has the same structure in all your
# computers (ie. zip file that you compress and decompress on the destination computer).
# 
#    Copyright (C) 2019 Alexandru Robert Lazar

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.


# REQUIRED: Set your script's file name in the line "filename". The rest will be done nearly automatically.
filename = "filename.R"
filepath = file.choose()  # Opens the file explorer, where you will need to choose the file you set before in "filename".
dir = substr(filepath, 1, nchar(filepath)-nchar(filename))
# If you are going to use a subdirectory: Put it in the commented line below and uncomment it.
# If you use more subdirectories, put their names like this:
# "subdirectory1\\subdirectory2\\subdirectory3\\... [this goes on until you reach the subdirectory you wish]"
# Otherwise, if your files are in the same directory as your R script, leave this line commented and ignore the previous steps.
#dirnew <- c(dir, "PutDirectoryNamesHere")
dirfinal <- paste(dirnew,sep="",collapse="")
setwd(dirfinal)

# Paste your code after this line:
