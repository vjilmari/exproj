
dR2<-function(model1,model2,data){
  model1<-lm(formula(model1),data=data)
  model2<-lm(formula(model2),data=data)
  R2.model1<-summary(model1)$r.squared
  R2.model2<-summary(model2)$r.squared
  dR2<-100*(R2.model2-R2.model1)
  return(dR2)
}

