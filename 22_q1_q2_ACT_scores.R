set.seed(16)
act_scores <- rnorm(10000,20.9,5.7)

#1a
avg <- mean(act_scores)

#1b
std <- sd(act_scores)

#1c
sum(act_scores >=36)

#1d
prob1d <- 1-pnorm(30,avg,std)

#1e
prob1e <- pnorm(10,avg,std)

#2
x <- seq(1:36)
f_x <- dnorm(x, 20.9,5.7)
#plot(x,f_x)

#3a
Zscores <- (act_scores-avg)/std
prob3a <- 1-pnorm(2, 0, 1)
prob3a

#3b
avg+2*std

#3c
qnorm(0.975, mean=avg, sd=std)

#4
create_CDF <- function(value){
  return(pnorm(value, avg,std))
}
#4a
applyCDF <- create_CDF(x)
min(which(applyCDF>=0.95))

#4b
qnorm(0.95, 20.9, 5.7)

#4c
p <- seq(0.01, 0.99, 0.01)
sample_quantiles <- quantile(act_scores,p)
sample_quantiles
min(which(sample_quantiles>=26))-1

#4d
theoritical_quantiles <- qnorm(p,20.9,5.7)
qqplot(theoritical_quantiles, sample_quantiles)



