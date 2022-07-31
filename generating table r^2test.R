r.test.norm<-matrix(nrow = 0,ncol = 8)
for(j in 3:200)
{
  q<-1:100000
 for(i in 1:100000)
  {
    x<-rnorm(j)
    a<-qqnorm(x,plot.it = FALSE)
    q[i]<-cor(a$x,a$y)
 }
  r.test.norm<-rbind(r.test.norm,quantile(q,probs = c(0.01,0.025
                                                      ,0.05,0.1,0.9,0.95,
                                                      0.975,0.99)))
  #print(j)
  }