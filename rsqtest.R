rsq.test<-function(x)
{
  r.test<-read.csv("rsquare_table.csv",row.names = 1)
  r.test<-as.matrix(r.test)
  colnames(r.test)<-c(0.01,0.025,0.05,0.1,0.9,0.95,0.975,0.99)
  if(3<=length(x)&length(x)<=200)
  {
    lab<-rownames(r.test)==paste(length(x))
  }
  else if (length(x)>200)
  {
    lab<-rownames(r.test)==paste(200)
    print("sample size too large, approximate with n = 200")
  }
  else{print("sample size is too small, unsuitable")}
  a<-qqnorm(x,plot.it = FALSE)
  q<-cor(a$x,a$y)
  for(i in 1:8)
  {
    if(q<r.test[lab,i])
    {
      print(paste("p<",colnames(r.test)[i]))
      break
    }
  }
}