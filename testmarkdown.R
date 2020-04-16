#' ---
#' title: "Rmarkdown and github"
#' output: 
#'   html_document: 
#'     keep_md: yes
#' ---
#' 
## ----setup, include=FALSE----------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' # Source the R2 change function
#' 
## ----------------------------------------------------------------------
source("dR2func.R")

#' 
#' # Read the data-file
#' 
## ----------------------------------------------------------------------
dat<-read.csv2("dat.csv")

#' 
#' # Try sourcing also the bootstrapping process
#' 
## ---- warning=FALSE, message=FALSE, code = readLines("bootR2.R")-------

