# Required R libraries (need to be installed - it can take a few minutes the first time you run the project)

# installs all necessary libraries from CRAN
get_libraries <- function(filenames_list) { 
  lapply(filenames_list,function(thelibrary){    
    if (do.call(require,list(thelibrary)) == FALSE) 
      do.call(install.packages,list(thelibrary)) 
    do.call(suppressPackageStartupMessages(library),list(thelibrary))
  })
}
libraries_used=c("dplyr","lattice","devtools","knitr","graphics",
                 "grDevices","xtable","Hmisc","vegan","fpc","GPArotation","slidify",
                 "FactoMineR","cluster","psych","stringr","googleVis", "png",
                 "ggplot2","googleVis", "gridExtra","rmarkdown","readxl","lubridate","magrittr","plyr","data.table",
                 "tidyr", "shiny", "scales", "stats", "xlsx")
get_libraries(libraries_used)
