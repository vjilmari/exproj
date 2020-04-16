set.seed(2412)
n=1000

dat<-data.frame(
  x=rnorm(n),
  z=rnorm(n)
)

b0<-0
b1<-0.30
b2<-0.20
b3<-0.15

dat$y<-b0+b1*dat$x+b2*dat$z+b3*dat$x*dat$z+sqrt(1-(b1^2+b2^2+b3^2))*rnorm(n)

write.csv2(dat,"dat.csv")
