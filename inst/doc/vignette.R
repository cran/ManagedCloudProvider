## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
library(ManagedCloudProvider)

if(FALSE){
makeReadMe <- function(){
  library(readr)
  fileName <- "vignettes/vignette.md"
  knitr::knit("vignettes/vignette.Rmd", output = fileName)
  content <- readChar(fileName, file.info(fileName)$size)
  content <- gsub("---.+?---","",content)
  content <- gsub("^(\r\n)+","",content)
  content <- gsub("([a-zA-Z]+)\\.jpg","vignettes/\\1.jpg",content)
  write_file(content, file="README.md")
  unlink(fileName)
}
  makeReadMe()
}


## -----------------------------------------------------------------------------
getGeneric("runDockerWorkerContainers")

## -----------------------------------------------------------------------------
getGeneric("getDockerWorkerStatus")

## -----------------------------------------------------------------------------
getGeneric("killDockerWorkerContainers")

