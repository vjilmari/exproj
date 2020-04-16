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



