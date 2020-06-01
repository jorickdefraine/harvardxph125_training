#3c
S <- sample(c(6,-1), 500, replace=TRUE, prob=c(5/38,33/38))
mean(S)
sd(S)
pnorm(0,-3/38*500 ,2.366227054/sqrt(500)*500)
