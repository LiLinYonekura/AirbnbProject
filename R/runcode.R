######################################################################
# generate the report, slides, and if needed start the web application


reportfilename = paste(report_file, "Rmd", sep=".")
docreportfilename = paste("doc", reportfilename, sep="/")
htmloutput = paste(report_file, "html", sep = ".")
dochtmloutput = paste("doc", htmloutput, sep="/")

#local_directory <- getwd()
unlink( "doc/TMPdirReport", recursive = TRUE )      
dir.create( "doc/TMPdirReport" )
setwd( "doc/TMPdirReport" )
file.copy( paste("../..",docreportfilename, sep="/"),reportfilename, overwrite = T )
#knit2html( reportfilename, quiet = TRUE )
setwd("../")
render(reportfilename)
#render(paste("../doc/TMPdirReport",reportfilename, sep="/"))
#file.copy( paste("doc/TMPdirReport/",htmloutput), paste("doc",dochtmloutput, sep="/"), overwrite = T )
#setwd( "../../" )
unlink( "TMPdirReport", recursive = TRUE )      

# reportfilename = paste(slides_file, "Rmd", sep=".")
# docreportfilename = paste("doc", reportfilename, sep="/")
# htmloutput = paste(slides_file, "html", sep = ".")
# dochtmloutput = paste("doc", htmloutput, sep="/")
# 
# unlink( "TMPdirSlides", recursive = TRUE )      
# dir.create( "TMPdirSlides" )
# setwd( "TMPdirSlides" )
# file.copy( paste(local_directory,docreportfilename, sep="/"),reportfilename, overwrite = T )
# slidify( reportfilename )
# file.copy( htmloutput, paste(local_directory,dochtmloutput, sep="/"), overwrite = T )
# setwd( "../" )
# unlink( "TMPdirSlides", recursive = TRUE )      
# setwd( "../" )




