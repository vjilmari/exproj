---
title: "Rmarkdown and github"
output: 
  html_document: 
    keep_md: yes
---



# Source the R2 change function


```r
source("dR2func.R")
```

# Read the data-file


```r
dat<-read.csv2("dat.csv")
```

# Try sourcing also the bootstrapping process


```r
library(dplyr)
library(psych)
set.seed(5125)

n.bootstraps<-100

boot.dR2<-rep(NA,n.bootstraps)

for(i in 1:n.bootstraps){
  boot.dat<-sample_n(tbl=dat,size = nrow(dat),replace = T)
  boot.dR2[i]<-dR2(model1="y~x+z",
      model2="y~x+z+x:z",
      data=boot.dat)
}

describe(boot.dR2,fast=T)
```

```
##    vars   n mean   sd min  max range   se
## X1    1 100 2.08 0.78 0.7 4.29   3.6 0.08
```
