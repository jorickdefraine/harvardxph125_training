#1e
S <- replicate(10000, {
  sum(sample(c(1,-0.25),44, replace=TRUE, prob=c(1/5, 4/5)))
})
mean(S>8)

#1f
set.seed(21)
M <- replicate(10000, {
  sum(sample(c(1,-0.25),44, replace=TRUE, prob=c(1/5, 4/5)))
})
mean(M>8)

#2b
p <- seq(0.25, 0.95, 0.05)

for (element in p){
    V <- replicate(10000,{ 
      sum(sample(c(1,-0.25),44, replace=TRUE, prob=c(element, 1-element)))
    })
    print(mean(V>35))
    print(element)
}


