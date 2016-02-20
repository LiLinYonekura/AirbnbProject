# Data Analysis and Visualization for Airbnb
#
# Big Data and Analytics for Business - INSEAD 2016
#
# Ana De Andress (16J)
# Dominik Hemmig (16J)
# Li Lin Yonekura (16J)
# Shiksha Mann (16J)
#
# In this case study we will use the Airbnb data
# We will use the following packages:
# dplyr: to manipulate the data
# lattice, ggplot2: to visualize the data
# stringr: to manipulate text
# Other packages will be used (knitr, shiny) as seen in class
#

# Clean the workspace
rm(list=ls())

#Set AirbnbProject as Directory
#setwd("..")

# Set up the working directory
local_directory <- getwd()

# Install and load required packages
source(paste(local_directory,"R/library.R", sep="/"))



# This is the name of the Report and Slides (in the doc directory) to generate 
report_file = "AirbnbReport"



#Load the csv in the "data" folder into the variable gadata
if (!exists("airbnbdata")) 
  airbnbdata <- within(read.csv(paste(local_directory,"data/Airbnb_data1.csv", sep="/")),rm("X"))

# Make sure airbnb.data contains the data you want
#str(airbnbdata)
#head(airbnbdata)
# Now you have your data completely clean to analyze and visualize.
# 
# Create the report
source(paste(local_directory,"R/runcode.R", sep = "/"))
# 
